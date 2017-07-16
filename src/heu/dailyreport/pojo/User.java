package heu.dailyreport.pojo;

import java.util.Date;

/**
 * 数据库中的用户表的映射实体类
 *
 * @author Administrator
 *
 */
public class User {
	private String userId;

	private String userName;
	private String userPwd;
	private String groupId;
	private int userRole;

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
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public int getUserRole() {
		return userRole;
	}
	public void setUserRole(int userRole) {
		this.userRole = userRole;
	}
	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", groupId=" + groupId + ", userRole="
				+ userRole + "]";
	}



}
