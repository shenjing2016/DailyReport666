package heu.dailyreport.algorithm;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class Time {
	public Date getNow(){
		Calendar cal1 = Calendar.getInstance();  
        TimeZone.setDefault(TimeZone.getTimeZone("GMT+8:00"));       //非常关键的！！！ 
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
        Date now =cal1.getTime();
        return now;
	}
}
