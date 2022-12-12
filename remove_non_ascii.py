import os
import sys

def remove_non_ascii(src_file:str, dst_file:str):
  
  """
  删除文件中的非ASCII字符
  没有忽略二进制文件
  """
  tmp_dst_file = dst_file + '.tmp'

  with open(src_file, 'r') as src_fp, \
      open(tmp_dst_file, 'w') as dst_fp:

    for line in src_fp:
      new_line = ''
      for c in line:
        if c <= '\u00ff':
          new_line += c
      dst_fp.write(new_line)

  os.rename(tmp_dst_file, dst_file)

if __name__ == '__main__':
  src=sys.argv[1]
  dst=sys.argv[2]
  if not os.path.isfile(src):
    print(f'{src} is not a file')
  else:
    remove_non_ascii(src, dst)
