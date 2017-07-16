package heu.dailyreport.pojo;

import java.util.Date;

public class WeekReport {
	private String userId;
	private String userName;
	private Date startTime;
	private Date endTime;
	private double work;
	private double exWork;
	private double totalWork;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public double getWork() {
		return work;
	}
	public void setWork(double work) {
		this.work = work;
	}
	public double getExWork() {
		return exWork;
	}
	public void setExWork(double exWork) {
		this.exWork = exWork;
	}
	public double getTotalWork() {
		return totalWork;
	}
	public void setTotalWork(double totalWork) {
		this.totalWork = totalWork;
	}
}
