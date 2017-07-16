package heu.dailyreport.dao;

import java.util.List;

import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.User;
import heu.dailyreport.pojo.UserCustom;

import org.apache.ibatis.annotations.Param;

public interface UserDao {
	/*
	 * 查找用户
	 */
	public User findUserById(String userId) throws Exception;
	public User findUserByUserName(String userName) throws Exception;
	
	public UserCustom findUserCustomById(String userId) throws Exception;
	
	
	public List<ProjGroup> findGrpName() throws Exception;
	public List<UserCustom> findUserList(UserCustom userCustom) throws Exception;
	
	public List<User> getAllUser() throws Exception;
	/*
	 * 插入更新和删除
	 */
	public boolean insertUser(User user) throws Exception;
	public boolean deleteUser(String userId) throws Exception;
	
	/**
	 * 解雇员工
	 * @date 2017年2月25日14:46:48
	 * @param UserId
	 * @return
	 * @throws Exception
	 */
	public boolean fireUser(String userId) throws Exception;

	/**
	 * 管理员更改用户信息
	 * @param userCustom
	 * @return
	 * @throws Exception
	 */
	public boolean updateUser(UserCustom userCustom) throws Exception;
	public int activateUser(String email) throws Exception;
	
	
	public boolean updateUserSelf(User user) throws Exception;

}
