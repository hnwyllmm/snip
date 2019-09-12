#!/usr/bin/env python
#coding:utf-8
#

import traceback
import sys

try:
	from optparse import OptionParser
except:
	exit(1)

def hexstr2bin(hexdata, output_file):
	if None == hexdata:
		print("no input")
		return

	length = len(hexdata)
	if length == 0:
		print("empty input")
		return

	count = 0
	n = 0
	result = ""
	for c in hexdata:
		tmp = None
		if c >= '0' and c <= '9':
			tmp = ord(c) - ord('0')
		elif c >= 'A' and c <= 'F':
			tmp = ord(c) - ord('A') + 10
		elif c >= 'a' and c <= 'f':
			tmp = ord(c) - ord('a') + 10

		if None == tmp:
			continue

		if count % 2 == 0:
			n = tmp << 4
		else:
			result += chr(n | tmp)
			n = 0

		count += 1

	if count % 2 != 0:
		print("invalid input hex data, count is " + str(count))
		return

	output_file.write(result)
	#print("valid character number is " + str(count) + ", result size " + str(len(result)))


if __name__ == "__main__":

	try:
		options_parser = OptionParser()
		options_parser.add_option('-x', '--hex', action='store', type='string',
			dest='hexdata', default=None, help='data string in hex format')
		options_parser.add_option('-f', '--file', action='store', type='string',
			dest='file', default=None, help='file with hex data')
		options_parser.add_option('-o', '--output', action='store', type='string',
			dest='output', default='output.txt', help='output file')

		(options, args) = options_parser.parse_args(sys.argv[1:])

		with open(options.output, 'wb') as output_file:
			if options.file != None:
				with open(options.file, 'rb') as source_file:
					for line in source_file.readlines():
						hexstr2bin(line, output_file)
			else:
				hexstr2bin(options.hexdata, output_file)


	except Exception as ex:
		print("exception: " + str(ex))
		traceback.print_exc()
		exit(1)

	exit(0)
