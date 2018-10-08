struct tm * localtime_r(const time_t *srctime,struct tm *tm_time)
{
	const static time_t _timezone = (tzset(), timezone) - (daylight ? 3600 : 0) ;	// 只是保证调用tzset一次 
	
    long int n32_Pass4year,n32_hpery;
 
    // 每个月的天数  非闰年
    const static char Days[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    
    // 一年的小时数
    const static int ONE_YEAR_HOURS = 8760; // 365 * 24 (非闰年)
 
    //计算时差
    time_t time = *srctime;
    time=time-_timezone ;
    tm_time->tm_isdst=0;
    if(time < 0)
    {
    time = 0;
    }
    //取秒时间
    tm_time->tm_sec=(int)(time % 60);
    time /= 60;
    
    //取分钟时间
    tm_time->tm_min=(int)(time % 60);
    time /= 60;
    
    //计算星期
    tm_time->tm_wday=(time/24+4)%7;
    
    //取过去多少个四年，每四年有 1461*24 小时
    n32_Pass4year=((unsigned int)time / (1461L * 24L));
    
    //计算年份
    tm_time->tm_year=(n32_Pass4year << 2)+70;
    
    //四年中剩下的小时数
    time %= 1461L * 24L;
    
    //计算在这一年的天数
    tm_time->tm_yday=(time/24)%365;
    //校正闰年影响的年份，计算一年中剩下的小时数
    for (;;)
    {
        //一年的小时数
        n32_hpery = ONE_YEAR_HOURS;
        
        //判断闰年
        if ((tm_time->tm_year & 3) == 0)
        {
            //是闰年，一年则多24小时，即一天
            n32_hpery += 24;
        }
        if (time < n32_hpery)
        {
            break;
        }
        tm_time->tm_year++;
        time -= n32_hpery;
    }
    //小时数
    tm_time->tm_hour=(int)(time % 24);
    //一年中剩下的天数
    time /= 24;
    //假定为闰年
    time++;
    //校正润年的误差，计算月份，日期
    if ((tm_time->tm_year & 3) == 0)
    {
        if (time > 60)
        {
            time--;
        }
        else
        {
            if (time == 60)
            {
                tm_time->tm_mon = 1;
                tm_time->tm_mday = 29;
                return tm_time;
            }
        }
    }
    //计算月日
    for (tm_time->tm_mon = 0;Days[tm_time->tm_mon] < time;tm_time->tm_mon++)
    {
        time -= Days[tm_time->tm_mon];
    }
    tm_time->tm_mday = (int)(time);
    return tm_time;
}

///////////////////////////////////////////////////////////////
// 另一个算法，看起来更简洁
void civil_from_days(int z, int& yy, int& mm, int& dd)
{
	z += 719468;
	const int era = (z >= 0 ? z : z - 146096) / 146097;
	const unsigned doe = static_cast<unsigned>(z - era * 146097);                // [0, 146096]
	const unsigned yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365;  // [0, 399]
	const int y = static_cast<int>(yoe) + era * 400;
	const unsigned doy = doe - (365 * yoe + yoe / 4 - yoe / 100);                // [0, 365]
	const unsigned mp = (5 * doy + 2) / 153;                                     // [0, 11]

	dd = doy - (153 * mp + 2) / 5 + 1;                                           // [1, 31]
	mm = mp + (mp < 10 ? 3 : -9);                                                // [1, 12]
			 
	yy = y + (mm <= 2); /* std::tuple<Int, unsigned, unsigned>(y + (m <= 2), m, d);*/
}

void civil_from_secs(int64 ts, int& year, int& mon, int& day, int& hour, int& min, int& sec)
{
	int days = ts / 86400;
	int secs = ts % 86400;
	civil_from_days(days, year, mon, day);

	hour = secs / 3600;
	min = (secs % 3600) / 60;
	sec = (secs % 3600) % 60;
}

// 调用这个函数前必须调用过tzset()
// 只有year, month, day和hour, min,sec会有效，其它字段不设置
void my_localtime(int64_t ts, struct tm *_tm)
{
	long tz = timezone;
	ts += tz;
	int year, mon, day, hour, minute, sec;
	civil_from_secs(ts, _tm->tm_year, _tm->tm_mon, _tm->tm_mday, _tm->tm_hour, _tm->tm_min, _tm->tm_sec);
	_tm->tm_year -= 1900;
	_tm->tm_mon--;
}

const char * my_strtime(struct tm *_tm, char buf[], int len)
{
	snprintf(buf, len, "%04d-%02d-%02d %02d:%02d:%02d",
		_tm->tm_year+1900, _tm->tm_mon + 1, _tm->tm_mday,
		_tm->tm_hour, _tm->tm_min, _tm->tm_sec);
	return buf;
}
