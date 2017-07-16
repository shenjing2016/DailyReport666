package heu.dailyreport.service;

import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.User;
import heu.dailyreport.pojo.UserCustom;

import java.util.List;

public interface UserService {
	public List<UserCustom> findUserList(UserCustom userCustom)throws Exception;
	public List<ProjGroup> findGrpName() throws Exception;
	public List<User> getAllUser() throws Exception;
	
	public boolean updateUser(UserCustom userCustom) throws Exception;
	
	public boolean fireUser(String UserId) throws Exception;
	
	public User findUserById(String userId) throws Exception;
	
	public UserCustom findUserCustomById(String userId) throws Exception;
	
	public boolean insertUser(User user) throws Exception;
	
	public boolean updateUserSelf(User user) throws Exception;
}
