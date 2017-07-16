package heu.dailyreport.pojo;

import java.util.Date;


public class DailyReportProject {
	private String drId;
	private String userId;
	private Date drTime;
	private String drTimeStart;
	private String drTimeEnd;
	private Date drCheckTime;
	private int drStatus;
	private String drChecker;
	private String projId;
	private String drText;
	private double drExWork ;
	private double drWork;
	private String projName;
	private Date projStartTime;
	private Date projDeadTime;
	private int projStatus;
	private String projManager;
	/** xunge */
	private String userName;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
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
	public Date getDrTime() {
		return drTime;
	}
	public void setDrTime(Date drTime2) {
		this.drTime = drTime2;
	}
	
	
	public String getDrTimeStart() {
		return drTimeStart;
	}
	public void setDrTimeStart(String drTimeStart) {
		this.drTimeStart = drTimeStart;
	}
	public String getDrTimeEnd() {
		return drTimeEnd;
	}
	public void setDrTimeEnd(String drTimeEnd) {
		this.drTimeEnd = drTimeEnd;
	}
	
	public Date getDrCheckTime() {
		return drCheckTime;
	}
	public void setDrCheckTime(Date drCheckTime) {
		this.drCheckTime = drCheckTime;
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
	public String getProjName() {
		return projName;
	}
	public void setProjName(String projName) {
		this.projName = projName;
	}
	public Date getProjStartTime() {
		return projStartTime;
	}
	public void setProjStartTime(Date projStartTime) {
		this.projStartTime = projStartTime;
	}
	public Date getProjDeadTime() {
		return projDeadTime;
	}
	public void setProjDeadTime(Date projDeadTime) {
		this.projDeadTime = projDeadTime;
	}
	public int getProjStatus() {
		return projStatus;
	}
	public void setProjStatus(int projStatus) {
		this.projStatus = projStatus;
	}
	public String getProjManager() {
		return projManager;
	}
	public void setProjManager(String projManager) {
		this.projManager = projManager;
	}
}
