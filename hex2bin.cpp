// 十六进制转二进制。跳过一切非十六进制字符(0-9,A-F,a-f)
void hex2bin(const char data[], size_t size, std::string& bin)
{
	bin.reserve(size / 2);
	size_t count = 0;
	char last_char = 0;
	for (size_t i = 0; i < size; i++) {
		char c = data[i];
		if (c >= '0' && c <= '9') {
			c -= '0';
		} else if (c >= 'A' && c <= 'F') {
			c = c - 'A' + 10;
		} else if (c >= 'a' && c <= 'f') {
			c = c - 'a' + 10;
		} else {
			continue;
		}

		if (count % 2 == 0) {
	    last_char = c << 4;
		} else {
			bin.append(1, (char)(last_char | c));
		}
		count++;
	}
}
