void dumphex(const char data[], long long size, std::string &hex)
{
    hex.resize(size * 2);
    for (long long i = 0; i < size; i++)
    {
        char c = data[i];
        char h = (c >> 4) & 0x0F;
        char l = c & 0x0F;

        if (h >= 0x0A)
            h = h + 'A' - 10;
        else
            h = h + '0';
        if (l >= 0x0A)
            l = l + 'A' - 10;
        else
            l = l + '0';

        hex[i * 2] = h;
        hex[i * 2 + 1] = l;
    }
}
