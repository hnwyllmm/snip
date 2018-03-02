#!/usr/bin/env python
#coding:utf-8
#
import traceback
import sys
try:
	from optparse import OptionParser
except:
	pass

user_input = None

def init_system_env():
	global user_input

	major_version = sys.version_info[0]
	if 2 == major_version:
		user_input = raw_input
	elif 3 == major_version:
		user_input = input
	else:
		raise Exception('not supported python version' + str(sys.version))

def print_nonewline(arg):
	sys.stdout.write(arg)

def is_int(val):
	major_version = sys.version_info[0]
	if 2 == major_version:
		return int == type(val) or long == type(val)

	return int == type(val)

###############################################################################
#
class end_output_error_t(RuntimeError):
	def __init__(self, arg):
		RuntimeError.__init__(self, arg)

class output_helper_t:
	'''输出行数过多时，通过这个来多次输出到屏幕'''
	__count     = 0
	__max_lines = 0

	def __init__(self, max_lines = 40):
		self.__max_lines = max_lines
		self.__count     = 0

	def outputln(self, value):
		if self.__count >= self.__max_lines:
			global user_input
			more_text = "---- More ----"
			print_nonewline(more_text)
			text = user_input()
			if text.find('n') != -1 or text.find('N') != -1 or \
				text.find('q') != -1 or text.find('Q') != -1:
				raise end_output_error_t('user end the output')
			self.__count = 0

		print(value)
		self.__count = self.__count + value.count('\n') + 1

###############################################################################
#

class thread_info_t:
	tid       = -1
	pthreadId = -1
	desc      = []

	def __init__(self, tid, pthreadId):
		self.tid = tid
		self.pthreadId = pthreadId
		self.desc = []

	def __str__(self):
		res = "tid:" + str(self.tid).rjust(16) + ", pthreadId:" + str(self.pthreadId).rjust(8)
		res += "    " + ";".join(self.desc)
		return res

class stack_info_t:
	__index       = 0
	__thread_info = thread_info_t(0,0)
	__lines       = []
	__signature   = None

	def __init__(self, thinfo):
		self.__thread_info = thinfo
		self.__lines       = []
		self.__index       = 0
		self.__signature   = None

	def __str__(self):
		return str(self.__thread_info) + "\r\n" + "\r\n".join(self.__lines)

	def detail(self, output):
		output.outputln(str(self.__thread_info))
		for line in self.__lines:
			output.outputln(line)

	def lines(self):
		return self.__lines

	def set_lines(self, lines):
		self.__lines = lines

	def thread_info(self):
		return self.__thread_info

	def index(self, val = -1):
		if -1 != val:
			self.__index = val
		return self.__index

	def set_signature(self, sig):
		self.__signature = sig

	def get_signature(self):
		return self.__signature

class rule_intf_t:
	"""stack info parse interface"""

	def __init__(self):
		pass

	def __str__(self):
		pass

	def parse(self, si):
		"""si: stack_info """
		pass

	def filter(self, si, keywords):
		"""decide whether the stack is mine """
		"""keywords: up to down"""
		key_num   = len(keywords)
		lines     = si.lines()
		stack_num = len(lines)

		if key_num <= 0:
			return True

		state = 0
		for line in lines[::-1]:
			if key_num == state:
				break
			if line.find(keywords[state]) >= 0:
				state = state + 1
				continue

		if state == key_num:
			return True
		
		return False

###############################################################################
# 分析一行数据是否是一个线程的开始
class thread_info_intf_t:
	def __init__(self):
		pass

	def is_new_thread(self, line):
		pass

	def thread_info(self, line):
		pass

	def signature(self, si):
		'''能唯一标识一个栈'''
		pass

	def get_funcation(self, line):
		pass

class thread_info_aix_t(thread_info_intf_t):
	def __init__(self):
		thread_info_intf_t.__init__(self)

	def is_new_thread(self, line):
		if line.find('----') != -1:
			return True
		return False

	def thread_info(self, line):
		arr = line.split()
		if len(arr) <= 0:
			return

		thinfo = thread_info_t(-1, -1)
		try:
			if len(arr) >= 3:
				thinfo.tid = int(arr[2])

			if len(arr) >= 6:
				s = arr[5].rstrip(')')
				thinfo.pthreadId = int(s)
		except Exception as ex:
			print("Exception:" + str(ex))

		return thinfo

	def signature(self, si):
		ret = ''
		for line in si.lines()[1:]:
			index = line.find(' ')
			if index != -1:
				ret += line[:index-1] + ';'
			else:
				ret += line + ';'
		return ret

	def get_funcation(self, line):
		strlist = line.split('  ', 2)
		if len(strlist) < 2:
			return ''

		func = strlist[1]
		index = func.find(':')
		if -1 != index:
			index = func.find(')')
			if -1 != index:
				func = func[0:index+1]
		else:
			index = func.find('(')
			if -1 != index:
				func = func[0:index]

		return func

class thread_info_linux_t(thread_info_intf_t):
	def __init__(self):
		thread_info_intf_t.__init__(self)

	def is_new_thread(self, line):
		if line.find('Thread ') != -1 and (line.find('LWP') != -1 or line.find('process ') != -1):
			return True

		return False

	def thread_info(self, line):
		arr = line.split()
		if len(arr) <= 0:
			return

		thinfo = thread_info_t(-1, -1)
		try:
			if len(arr) >= 4:
				thinfo.tid = arr[3]

			if len(arr) >= 6:
				s = arr[5].rstrip(':')
				s = s.rstrip(')')
				thinfo.pthreadId = s
		except Exception as ex:
			print("Exception:" + str(ex))

		return thinfo

	def signature(self, si):
		ret = ''
		for line in si.lines()[1:]:
			begin = 0
			end   = line.find('(', begin + 1)
			ret  += line[begin:end-1] + ';'
		return ret

	def get_funcation(self, line):
		start = line.find('in ')
		if -1 == start:
			return ''

		func = line[start + 3:]
		index = func.find(':')
		if -1 != index:
			index = func.find(')')
			if -1 != index:
				func = func[0:index+1]
		else:
			index = func.find('(')
			if -1 != index:
				func = func[0:index]

		return func

class thread_info_gdb_t(thread_info_intf_t):
	def __init__(self):
		thread_info_intf_t.__init__(self)

	def is_new_thread(self, line):
		if line.find('Breakpoint ') != -1:
			return True

		return False

	def thread_info(self, line):
		
		thinfo = thread_info_t(-1, -1)

		return thinfo

	def signature(self, si):
		ret = ''
		ret += si.lines()[2].split()[1]
		for line in si.lines()[3:]:
			if line[0] != '#':
				continue
			# 两种格式
			# #0  0x00007f2ea8d6da82 in pthread_cond_timedwaitxx (
			# #2  mdb::CRowLock::lock_record (this=0x7f2ab8006a40, ...
			begin = 0
			end   = line.find('(', begin + 1)
			ret  += line[begin:end-1] + ';'
		return ret

	def get_funcation(self, line):
		start = line.find('in ')
		if -1 == start:
			return ''

		func = line[start + 3:]
		index = func.find(':')
		if -1 != index:
			index = func.find(')')
			if -1 != index:
				func = func[0:index+1]
		else:
			index = func.find('(')
			if -1 != index:
				func = func[0:index]

		return func

class thread_info_hpux_t(thread_info_intf_t):
	def __init__(self):
		thread_info_intf_t.__init__(self)

	def is_new_thread(self, line):
		if line.find('lwpid :') != -1:
			return True

		return False

	def thread_info(self, line):
		arr = line.split()
		if len(arr) >= 4:
			thinfo = thread_info_t(arr[3], arr[3])
			return thinfo

		thinfo = thread_info_t(-1, -1)
		return thinfo

	def signature(self, si):
		ret = ''
		for line in si.lines()[1:]:
			line = line.strip()
			if len(line) == 0:
				continue
			arr = line.split()
			if len(arr) < 2:
				continue

			ret  += arr[1] + ';'
		return ret

	def get_funcation(self, line):
		start = line.find('in ')
		if -1 == start:
			return ''

		func = line[start + 3:]
		index = func.find(':')
		if -1 != index:
			index = func.find(')')
			if -1 != index:
				func = func[0:index+1]
		else:
			index = func.find('(')
			if -1 != index:
				func = func[0:index]

		return func

class stack_anlyse_intf_t:
	__os_type = ''

	def __init__(self):
		self.__os_type = ''

	def probe(self, file):
		'''判断操作系统类型'''
		if file == None:
			return None

		for line in file:
			if line.find('--------------------------------') != -1 and line.find('lwpid :') != -1:
				self.__os_type = "HPUX"
				ret = thread_info_hpux_t()
				print('HPUX platform')
				return ret
			if line.find('----') != -1:
				self.__os_type = 'AIX'
				ret = thread_info_aix_t()
				print('AIX platform')
				return ret
			if line.find('Thread ') != -1 and (line.find('LWP') != -1 or line.find('process ') != -1):
				self.__os_type = 'Linux'
				ret = thread_info_linux_t()
				print('Linux platform')
				return ret
			if line.find('breakpoint') != -1 or line.find('Breakpoint') != -1:
				self.__os_type = 'gdb'
				ret = thread_info_gdb_t()
				print('gdb')
				return ret
		print('unsupported stack format')
		return None

class stack_parser_t:
	__file               = ""
	__stack_list         = []
	__thread_info_parser = thread_info_intf_t()
	__stack_summary      = {}

	__thread_info_intf   = None

	def __init__(self, file="pstack.txt"):
		self.__file = file

	def __str__(self):
		return ""

	def __preparse(self):
		self.__stack_list = []
		lines             = []
		si                = None
		thinfo            = thread_info_t(0, 0)

		try:
			f = open(self.__file)
			anlyse = stack_anlyse_intf_t()
			self.__thread_info_intf = anlyse.probe(f)
			if None == self.__thread_info_intf:
				print('cannot decide the os type')
				exit()

			f.seek(0, 0)
			for line in f:
				line = line.rstrip('\n').rstrip('\r').strip()

				if len(line) <= 0:
					continue

				if False == self.__thread_info_intf.is_new_thread(line):
					lines.append(line)
				else:
					if None != si:
						si.set_lines(lines)
						si.index(len(self.__stack_list) + 1)
						self.__stack_list.append(si)

					thinfo = self.__thread_info_intf.thread_info(line)				
					
					si     = stack_info_t(thinfo)
					lines  = []
					lines.append(line)
				
			f.close()

			if lines and si:
				si.set_lines(lines)
				si.index(len(self.__stack_list)+1)
				self.__stack_list.append(si)
				del si
				del lines

		except Exception as ex:
			print(str(ex))
			exit()

	def parse(self):
		self.__preparse()

	def get_stack_summary(self):
		if len(self.__stack_summary) > 0:
			return self.__stack_summary

		for si in self.__stack_list:
			signature  = self.__thread_info_intf.signature(si)
			stack_info = self.__stack_summary.get(signature)
			if None == stack_info:
				self.__stack_summary[signature] = (si, 1)
			else:
				stack_info = (stack_info[0], stack_info[1] + 1)
				self.__stack_summary[signature] = stack_info

		return self.__stack_summary

	def summary(self, filename = None):
		file = None
		try:
			if None != filename:
				file = open(filename, 'w')
		except Exception as ex:
			print('cannot open file: ' + str(filename) + ". " + str(ex))
			return

		try:
			output = output_helper_t()
			sorted_stack = sorted(self.get_stack_summary().values(), key=lambda d:d[1], reverse=True)
			for stack in sorted_stack:
				times  = stack[1]
				outputstr = str(times) + ' time'
				if times > 1:
					outputstr += 's'
					
				if file != None:
					file.write(outputstr + "\n")
				else:
					output.outputln(outputstr)
					
				si = stack[0]
				for line in si.lines():
					if file != None:
						file.write(line + "\n")
					else:
						output.outputln(line)

				if file != None:
					file.write('\n')
				else:
					output.outputln('')

			if file != None:
				print("output: " + filename)
		except end_output_error_t:
			pass
		
###############################################################################

if __name__  == "__main__":

	init_system_env()

	parser  = None
	try:
		options_parser = OptionParser()
		options_parser.add_option('-f', '--file', action='store', 
			type='string', dest='file', default='pstack.txt', help='pstack file')
		options_parser.add_option('-o', '--output', action='store',	type='string', 
			dest='output', help='output file. if not given, it will output to the console')

		(options, args) = options_parser.parse_args(sys.argv[1:])

		stack_file = options.file
		parser = stack_parser_t(stack_file)
		parser.parse()
		parser.summary(options.output)
	except Exception as ex:
		print("exception: " + str(ex))
		traceback.print_exc() 
