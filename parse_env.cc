static bool parse_env(string &path)
{
	MLOG_TRACE("parse envrion for %s", path.c_str());

    size_t pos = 0;
    std::string strenv;
    const std::string strsep(" \t/\r\n");
    while ( std::string::npos != (pos = path.find('$', 0))
            || std::string::npos != (pos = path.find('@', 0)))
    {
        const char left = path[pos + 1];
        char right = 0;
        size_t env_start = pos + 1;
        size_t env_end = 0;
        if (left == '(' )
        {
            right = ')';
        }
        else if (left == '{')
        {
            right = '}';
        }

        if (0 == right)
        {
            env_end = path.find_first_of(strsep, env_start);
        }
        else
        {
            env_start++;
            env_end = path.find_first_of(right, env_start);
        }

        if (std::string::npos != env_end)
        {
            strenv = path.substr(env_start, env_end - env_start);
        }
        else if (0 == right)
        {
            // "$WORKPATH"
            strenv = path.substr(env_start);
        }
        else
        {
            MLOG_INFO("can not get env string, path=%s", path.c_str());
            return false;
        }

        MLOG_TRACE("strenv is %s", strenv.c_str());
        const char *env = getenv(strenv.c_str());
        if (NULL == env)
        {
            MLOG_INFO("can not find env for %s", strenv.c_str() );
            return false;
        }

        if (std::string::npos != env_end)
        {
            path.replace(pos, env_end - pos + (right ? 1 : 0), env);
        }
        else
        {
            // "$WORKPATH"
            path = path.substr(0, --env_start);
            path += env;
        }

        MLOG_TRACE("env replace after:%s", path.c_str());
    }

    return true;
}

