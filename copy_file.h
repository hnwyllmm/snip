
int copy_file(const char *srcfile, const char *dstfile)
{
#   ifndef PATH_MAX
#   define PATH_MAX 256
#   endif // PATH_MAX

    char tmpfile[PATH_MAX];
    snprintf(tmpfile, sizeof(tmpfile), "%s.tmp", dstfile);

    int fsrc = open(srcfile, O_RDONLY);
    if (-1 == fsrc)
    {
        MLOG_ERROR("cannot read file %s. errmsg %d:%s",
            srcfile, errno, strerror(errno));
        return MDB_ERROR;
    }

    int fdst = open(tmpfile, O_WRONLY | O_WRONLY | O_CREAT, 0600);
    if (-1 == fdst)
    {
        MLOG_ERROR("create file failure. file name %s, errmsg %d:%s",
            tmpfile, errno, strerror(errno));

        close(fsrc);
        return MDB_ERROR;
    }

    char buf[4 * 1024];
    ssize_t size = 0;
    while (true)
    {
        size = read(fsrc, buf, sizeof(buf));
        if (0 == size)
        {
            close(fsrc);
            close(fdst);

            if (0 != rename(tmpfile, dstfile))
            {
                MLOG_ERROR("rename file [%s] to file [%s] failure. errmsg %d:%s",
                    tmpfile, dstfile);
                remove(tmpfile);
                return MDB_ERROR;
            }
            return MDB_SUCCESS;
        }

        if (size < 0)
        {
            MLOG_ERROR("read file failure. file name %s, fd %d, errmsg %d:%s",
                srcfile, fsrc, errno, strerror(errno));
            goto err;
        }

        if (0 != writen(fdst, buf, size))
        {
            MLOG_ERROR("write file failure. file %s, fd %d, errmsg %d:%s",
                tmpfile, fdst, errno, strerror(errno));
            goto err;
        }
    }

err:
    if (fsrc >= 0)
        close(fsrc);
    if (fdst >= 0)
        close(fdst);
    remove(tmpfile);
    return MDB_ERROR;
}
