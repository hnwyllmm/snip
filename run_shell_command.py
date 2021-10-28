import subprocess

def __run_shell_command(command_args, cwd):
  '''
  运行shell命令，返回命令的执行结果码和输出到控制台的信息
  返回的控制台信息是每行一个字符串的字符串列表
  '''

  # logging.info("running command: '%s'", ' '.join(command_args))

  error_outputs = []
  normal_outputs = []
  command_process = subprocess.Popen(command_args, cwd=cwd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
  stdout, stderr = command_process.communicate()
  stdout = stdout.decode('UTF-8')
  stderr = stderr.decode('UTF-8')
  normal_outputs = stdout.split('\n')
  error_outputs = stderr.split('\n')

  return_code = command_process.wait()
  if return_code is not None:
    return return_code, normal_outputs, error_outputs
  else:
    return -1, normal_outputs, error_outputs
