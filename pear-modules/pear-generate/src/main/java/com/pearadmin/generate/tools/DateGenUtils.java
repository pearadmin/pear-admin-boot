package com.pearadmin.generate.tools;

import org.apache.commons.lang3.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期处理
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年12月21日 下午12:53:33
 */
public class DateGenUtils extends org.apache.commons.lang3.time.DateUtils{
	private static Logger logger = LoggerFactory.getLogger(DateGenUtils.class);
	/** 时间格式(yyyy-MM-dd) */
	public final static String DATE_PATTERN = "yyyy-MM-dd";
	/** 时间格式(yyyyMMdd) */
	public final static String DATE_PATTERN_NO_ = "yyyyMMdd";
	/** 时间格式(yyyy-MM-dd HH:mm:ss) */
	public final static String DATE_TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
	
	private static String[] parsePatterns = { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", 
			"yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm" };
	
	public static String format(Date date) {
        return format(date, DATE_PATTERN);
    }
	
    public static String format(Date date, String pattern) {
        if(date != null){
            SimpleDateFormat df = new SimpleDateFormat(pattern);
            return df.format(date);
        }
        return null;
    }
    
    /**

	 * 得到当前日期字符串 格式（yyyy-MM-dd）

	 */
	public static String getDate() {
		return getDate("yyyy-MM-dd");
	}
	
	/**

	 * 得到当前日期字符串 格式（yyyy-MM-dd） pattern可以为："yyyy-MM-dd" "HH:mm:ss" "E"

	 */
	public static String getDate(String pattern) {
		return DateFormatUtils.format(new Date(), pattern);
	}
	
	/**

	 * 得到日期字符串 默认格式（yyyy-MM-dd） pattern可以为："yyyy-MM-dd" "HH:mm:ss" "E"

	 */
	public static String formatDate(Date date, Object... pattern) {
		String formatDate = null;
		if (pattern != null && pattern.length > 0) {
			formatDate = DateFormatUtils.format(date, pattern[0].toString());
		} else {
			formatDate = DateFormatUtils.format(date, "yyyy-MM-dd");
		}
		return formatDate;
	}
	
	/**

	 * 得到日期时间字符串，转换格式（yyyy-MM-dd HH:mm:ss）

	 */
	public static String formatDateTime(Date date) {
		return formatDate(date, "yyyy-MM-dd HH:mm:ss");
	}

	/**

	 * 得到当前时间字符串 格式（HH:mm:ss）

	 */
	public static String getTime() {
		return formatDate(new Date(), "HH:mm:ss");
	}

	/**

	 * 得到当前日期和时间字符串 格式（yyyy-MM-dd HH:mm:ss）

	 */
	public static String getDateTime() {
		return formatDate(new Date(), "yyyy-MM-dd HH:mm:ss");
	}

	/**

	 * 得到当前年份字符串 格式（yyyy）

	 */
	public static String getYear() {
		return formatDate(new Date(), "yyyy");
	}

	/**

	 * 得到当前月份字符串 格式（MM）

	 */
	public static String getMonth() {
		return formatDate(new Date(), "MM");
	}

	/**

	 * 得到当天字符串 格式（dd）

	 */
	public static String getDay() {
		return formatDate(new Date(), "dd");
	}

	/**

	 * 得到当前星期字符串 格式（E）星期几

	 */
	public static String getWeek() {
		return formatDate(new Date(), "E");
	}
	
	/**

	 * 日期型字符串转化为日期 格式

	 * { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", 

	 *   "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm" }

	 */
	public static Date parseDate(Object str) {
		if (str == null){
			return null;
		}
		try {
			return parseDate(str.toString(), parsePatterns);
		} catch (ParseException e) {
			logger.error("日期格式解析异常", e);
			return null;
		}
	}

	/**

	 * 获取过去的天数

	 * @param date

	 * @return

	 */
	public static long pastDays(Date date) {
		long t = new Date().getTime()-date.getTime();
		return t/(24*60*60*1000);
	}
	
    
	public static Date getDateStart(Date date) {
		if(date==null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date= sdf.parse(formatDate(date, "yyyy-MM-dd")+" 00:00:00");
		} catch (ParseException e) {
			logger.error("日期格式解析异常", e);
		}
		return date;
	}
	
	public static Date getDateEnd(Date date) {
		if(date==null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date= sdf.parse(formatDate(date, "yyyy-MM-dd") +" 23:59:59");
		} catch (ParseException e) {
			logger.error("日期格式解析异常", e);
		}
		return date;
	}
	
	/**

	 * 判断字符串是否是日期

	 * @param timeString

	 * @return

	 */
	public static boolean isDate(String timeString){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		format.setLenient(false);
		try{
			format.parse(timeString);
		}catch(Exception e){
			return false;
		}
		return true;
	}
	
	/**

	 * 格式化时间

	 * @param timestamp

	 * @return

	 */
	public static String dateFormat(Date timestamp){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(timestamp);
	}
	
	/**

	 * 获取系统时间Timestamp

	 * @return

	 */
	public static Timestamp getSysTimestamp(){
		return new Timestamp(System.currentTimeMillis());
	}
	
	/**

	 * 获取系统时间Date

	 * @return

	 */
	public static Date getSysDate(){
		return new Date();
	}
	
	/**

	 * 生成时间随机数 

	 * @return

	 */
	public static String getDateRandom(){
		String s=new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
		return s;
	}
}
