// filter_pattern: ^aimdb.*bin$
int list_file(const char *path, const char *filter_pattern, std::vector<std::string> &files)
{
	regex_t reg;
	if (filter_pattern)
	{
		const int res = regcomp(&reg, filter_pattern, REG_NOSUB);
		if (res)
		{
			char errbuf[256];
			regerror(res, &reg, errbuf, sizeof(errbuf));
			MLOG_ERROR("regcomp return error. filter pattern %s. errmsg %d:%s", 
				filter_pattern, res, errbuf);
			return -1;
		}
	}

	DIR *pdir = opendir(path);
	if (!pdir)
	{
		if (filter_pattern)
			regfree(&reg);
		MLOG_ERROR("open directory failure. path %s, errmsg %d:%s",
			path, errno, strerror(errno));
		return -1;
	}

	files.clear();

	struct dirent entry;
	struct dirent * pentry = NULL;
	char tmp_path[PATH_MAX];
	while((0 == readdir_r(pdir, &entry, &pentry)) && (NULL != pentry))
	{
		if ('.' == entry.d_name[0]) // 跳过./..文件和隐藏文件
			continue;

		snprintf(tmp_path, sizeof(tmp_path), "%s/%s", path, entry.d_name);
		if (is_dir(tmp_path))
			continue;

		if (!filter_pattern || 0 == regexec(&reg, entry.d_name, 0, NULL, 0))
			files.push_back(entry.d_name);
	}

	if (filter_pattern)
		regfree(&reg);

	sort(files.begin(), files.end(), binlog_cmp);
	return files.size();
}
