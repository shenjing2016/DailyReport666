package heu.dailyreport.algorithm;

public class D1 {
	public double reset(double num){
		 String str = String.format("%.1f", num);
		 num = Double.valueOf(str);
		return num;
	}
	public String f2(String str){
		int num = Integer.parseInt(str);
		str = String.format("%02d",num+1);
		return str;
	}
	public String f4(String str){
		int num = Integer.parseInt(str);
		str = String.format("%04d",num+1);
		return str;
	}
	public String f7(String str){
		int num = Integer.parseInt(str);
		str = String.format("%07d",num+1);
		return str;
	}
}
