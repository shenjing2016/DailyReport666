package heu.dailyreport.pojo;

public class ProjectWork {
	private String ProjId;
	private String ProjName;
	private double Work;
	private double ExWork;
	private double TotalWork;
	private int ProjStatus;
	private String ProjStage;
	public String getProjStage() {
		return ProjStage;
	}
	public void setProjStage(String projStage) {
		ProjStage = projStage;
	}
	public String getProjId() {
		return ProjId;
	}
	public void setProjId(String projId) {
		ProjId = projId;
	}
	public String getProjName() {
		return ProjName;
	}
	public void setProjName(String projName) {
		ProjName = projName;
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
	public int getProjStatus() {
		return ProjStatus;
	}
	public void setProjStatus(int projStatus) {
		ProjStatus = projStatus;
	}
}
