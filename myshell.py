import os
import subprocess

def run_shell_command(command_args, cwd=os.getcwd(), timeout=None, record_stdout=True, record_stderr=True):
  '''
  运行shell命令，返回命令的执行结果码和输出到控制台的信息
  返回的控制台信息是每行一个字符串的字符串列表
  如果控制台信息输出比较多，不适合用PIPE
  NOTE: 返回的信息固定使用UTF-8解码
  @param command_args 是shell命令的每个字符串列表，比如 ['git','log','-1','--date=raw']
  '''

  # logging.info("running command: '%s'", ' '.join(command_args))

  error_outputs = []
  normal_outputs = []
  stdout = subprocess.DEVNULL # will not record stdout
  stderr = subprocess.DEVNULL
  if record_stdout:
    stdout = subprocess.PIPE
  if record_stderr:
    stderr = subprocess.PIPE
    
  command_process = subprocess.Popen(command_args, cwd=cwd, stdout=stdout, stderr=stdout)
  # communicate 返回的是bytes，不是str
  stdout, stderr = command_process.communicate(timeout=timeout) # 用communicate去通讯，防止卡死
  stdout = stdout.decode('UTF-8')
  stderr = stderr.decode('UTF-8')
  normal_outputs = stdout.split('\n')
  error_outputs = stderr.split('\n')

  return_code = command_process.wait(timeout=timeout)
  if return_code is not None:
    return return_code, normal_outputs, error_outputs
  else:
    return -1, normal_outputs, error_outputs
