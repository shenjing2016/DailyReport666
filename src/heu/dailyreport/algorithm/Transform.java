package heu.dailyreport.algorithm;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Transform {
	public Date StringToDate(String str) throws Exception{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(str);
		return date;
	}
	public String DateToString(Date date){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
		date=new java.util.Date();  
		String str=sdf.format(date);
		return str; 
	}
}
