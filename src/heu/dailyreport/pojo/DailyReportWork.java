package heu.dailyreport.pojo;

import java.util.Date;

public class DailyReportWork {
	private String UserId;
	private String UserName;
	private Date StartTime;
	private Date EndTime;
	private double Work;
	private double ExWork;
	private double TotalWork;
	
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public double getWork() {
		return Work;
	}
	public void setWork(double work) {
		Work = work;
	}
	public double getExWork() {
		return ExWork;
	}
	public void setExWork(double exWork) {
		ExWork = exWork;
	}
	public double getTotalWork() {
		return TotalWork;
	}
	public void setTotalWork(double totalWork) {
		TotalWork = totalWork;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public Date getStartTime() {
		return StartTime;
	}
	public void setStartTime(Date startTime) {
		StartTime = startTime;
	}
	public Date getEndTime() {
		return EndTime;
	}
	public void setEndTime(Date endTime) {
		EndTime = endTime;
	}
	
	
}
