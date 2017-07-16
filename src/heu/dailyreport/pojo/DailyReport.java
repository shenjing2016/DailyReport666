package heu.dailyreport.pojo;

import java.sql.Date;

/**
 * 数据库中的日报表的映射实体类
 * @author new
 *
 */
public class DailyReport {
	private String drId;
	private String userId;
	private Date drCheckTime;
	private Date drTime;
	private int drStatus;
	private String drChecker;
	private String projId;
	private String drText;
	private double drExWork ;
	private double drWork;
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
	public Date getDrTime() {
		return drTime;
	}
	public void setDrTime(Date drTime) {
		this.drTime = drTime;
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
}
