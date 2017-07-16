package heu.dailyreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import heu.dailyreport.dao.UserDao;
import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.User;
import heu.dailyreport.pojo.UserCustom;
import heu.dailyreport.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	@Override
	public List<UserCustom> findUserList(UserCustom userCustom) throws Exception {

		
		return userDao.findUserList(userCustom);
	}
	@Override
	public List<ProjGroup> findGrpName() throws Exception {
		return userDao.findGrpName();
	}
	@Override
	public List<User> getAllUser() throws Exception {

		return userDao.getAllUser();
	}
	public boolean updateUser(UserCustom userCustom) throws Exception {
		
		return userDao.updateUser(userCustom);
	}
	public boolean updateUserSelf(User user) throws Exception {
		return userDao.updateUserSelf(user);
	}


	
	
	/**
	 * 解雇员工
	 * @date 2017年2月25日14:48:46
	 * @param UserId
	 * @return
	 * @throws Exception
	 */
	public boolean fireUser(String userId) throws Exception{
		return userDao.fireUser(userId);
	}
	@Override
	public User findUserById(String userId) throws Exception {
		User user = userDao.findUserById(userId);
		return user;
	}
	@Override
	public UserCustom findUserCustomById(String userId) throws Exception {
		UserCustom userCustom = userDao.findUserCustomById(userId);
		return userCustom;
	}
	
	public boolean insertUser(User user) throws Exception{
		return userDao.insertUser(user);
	}
	
}
