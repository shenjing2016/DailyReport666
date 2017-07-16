package heu.dailyreport.pojo;

import java.util.Date;

public class Project {
	private String projId;
	private String projName;
	private Date projStartTime;
	private Date projDeadTime;
	private int projStatus;
	private String projManager;
	private String grpId;
	private String projText;
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
	public String getGrpId() {
		return grpId;
	}
	public void setGrpId(String grpId) {
		this.grpId = grpId;
	}
	public String getProjText() {
		return projText;
	}
	public void setProjText(String projText) {
		this.projText = projText;
	}

}
