package heu.dailyreport.pojo;
/**
 * 数据库中的部门表的映射实体类
 * @author new
 *
 */
public class Department {
	private String deptId;
	private String deptName;
	private String deptManager;
	public String getDeptId() {
		return deptId;
	}
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDeptManager() {
		return deptManager;
	}
	public void setDeptManager(String deptManager) {
		this.deptManager = deptManager;
	}
}
