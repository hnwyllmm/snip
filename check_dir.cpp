#include <sys/stat.h>

static inline bool is_dir(const char *path)
{
    struct stat st;
    return (0 == stat(path, &st)) && (st.st_mode & S_IFDIR);
}

static bool check_dir(string &path)
{
	while (!path.empty() && path.back() == '/')
		path.erase(path.size() - 1, 1);

	if (false == parse_env(path))
		return false;

    mint4 len = path.size();

    if (0 == mkdir(path.c_str(), 0777) || is_dir(path.c_str()) )
        return true;

	bool sep_state = false;
    for (mint4 i = 0; i < len; i++)
    {
        if (path[i] != '/')
		{
			if (sep_state)
				sep_state = false;
            continue;
		}

		if (sep_state) // å¿½ç•¥å¤šä½™çš„åˆ†éš”ç¬¦
			continue;

        path[i] = '\0';
        if (0 != mkdir(path.c_str(), 0777) && !is_dir(path.c_str()))
            return false;

        path[i] = '/';
		sep_state = true;
    }

    if (0 != mkdir(path.c_str(), 0777) && !is_dir(path.c_str()))
        return false;
    return true;
}
