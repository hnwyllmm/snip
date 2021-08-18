int writen(int fd, const void *buf, int size)
{
	const char *tmp = (const char *)buf;
	while ( size > 0)
	{
		const ssize_t ret = ::write(fd, tmp, size);
		if (ret >= 0)
		{
			tmp  += ret;
			size -= ret;
			continue;
		}

		const int err = errno;
		if (EAGAIN != err && EINTR != err)
			return err;
	}
	return 0;
}

int readn(int fd, void *buf, int size)
{
	char *tmp = (char *)buf;
	while (size > 0)
	{
		const ssize_t ret = ::read(fd, tmp, size);
		if (ret > 0)
		{
			tmp  += ret;
			size -= ret;
			continue;
		}

		if (0 == ret)
			return -1; // end of file

		const int err = errno;
		if (EAGAIN != err && EINTR != err)
			return err;
	}
	return 0;
}
