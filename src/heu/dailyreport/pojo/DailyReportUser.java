package heu.dailyreport.pojo;

import java.sql.Date;

public class DailyReportUser {
	private String drId;
	private String userId;
	private String userName;
	private Date drCheckTime;
	private Date drTime;
	private int drStatus;
	private String drChecker;
	private String projId;
	private String projName;
	private String drText;
	private double drExWork ;
	private double drWork;
	private double drTotalWork;
	public String getDrId() {
		return drId;
	}
	public void setDrId(String drId) {
		this.drId = drId;
	}
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
	public Date getDrCheckTime() {
		return drCheckTime;
	}
	public void setDrCheckTime(Date drCheckTime) {
		this.drCheckTime = drCheckTime;
	}
	public Date getDrTime() {
		return drTime;
	}
	public void setDrTime(Date drTime) {
		this.drTime = drTime;
	}
	public int getDrStatus() {
		return drStatus;
	}
	public void setDrStatus(int drStatus) {
		this.drStatus = drStatus;
	}
	public String getDrChecker() {
		return drChecker;
	}
	public void setDrChecker(String drChecker) {
		this.drChecker = drChecker;
	}
	public String getProjId() {
		return projId;
	}
	public void setProjId(String projId) {
		this.projId = projId;
	}
	public String getProjName() {
		return projName;
	}
	public void setProjName(String projName) {
		this.projName = projName;
	}
	public String getDrText() {
		return drText;
	}
	public void setDrText(String drText) {
		this.drText = drText;
	}
	public double getDrExWork() {
		return drExWork;
	}
	public void setDrExWork(double drExWork) {
		this.drExWork = drExWork;
	}
	public double getDrWork() {
		return drWork;
	}
	public void setDrWork(double drWork) {
		this.drWork = drWork;
	}
	public double getDrTotalWork() {
		return drTotalWork;
	}
	public void setDrTotalWork(double drTotalWork) {
		this.drTotalWork = drTotalWork;
	}
	
}
