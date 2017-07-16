package heu.dailyreport.algorithm;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CalDate {
	public Date DateAdd(Date date,int num) throws Exception{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date.getTime()+(long)num*24*60*60*1000);
		date = sdf.parse(str);
		return date;
	}
	public Date DateSub(Date date,int num) throws Exception{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date.getTime()-(long)num*24*60*60*1000);
		date = sdf.parse(str);
		return date;
	}
	
}
