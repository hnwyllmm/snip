// link src and dst(src exist, dst is not exist or will be unlink)
int link_file(const char *src, const char *dst)
{
	if (-1 == unlink(dst) && errno != ENOENT)
		return -1;
	return link(src, dst);
}
