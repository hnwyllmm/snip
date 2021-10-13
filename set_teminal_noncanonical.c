/**
 * 终端默认情况下是Canonical模式。这个模式下最多能够输入MAX_CANON(可能是1024)个字符。
 * 也就是不能粘贴或者输入超长命令/字符串
 * 参考 
 *  https://www.gnu.org/software/libc/manual/html_node/Canonical-or-Not.html
 *  https://www.gnu.org/software/libc/manual/html_node/Noncanonical-Input.html
 *  https://www.gnu.org/software/libc/manual/html_node/Limits-for-Files.html
 *  man termios
 * NOTE: **** 使用这个设置后，不能正确的处理退格键 ****
 *  建议直接使用 readline 库
 */
int set_terminal_attr() {
  int fd = STDIN_FILENO;
  struct termios old_termios;
  int ret = tcgetattr(fd, &old_termios);
  if (ret < 0) {
    printf("Failed to get tc attr. error=%s\n", strerror(errno));
    return -1;
  }

  struct termios new_attr = old_termios;
  new_attr.c_lflag &= ~ICANON; /* 设置为非标准模式，但是没有还原 */
  ret = tcsetattr(fd, TCSANOW, &new_attr);
  if (ret < 0) {
    printf("Failed to set tc attr. error=%s\n", strerror(errno));
    return -1;
  }
  return 0;
}
