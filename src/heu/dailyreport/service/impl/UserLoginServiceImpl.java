package heu.dailyreport.service.impl;

import heu.dailyreport.algorithm.MD5;
import heu.dailyreport.dao.UserDao;
import heu.dailyreport.pojo.User;
import heu.dailyreport.service.UserLoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	@Autowired
	private UserDao userDao;


	@Transactional
	@Override
	public int login(String userId, String userPwd) throws Exception {
		User user=userDao.findUserById(userId);
		if(user==null){
			return 0;		//用户不存在就返回0
		}else{
			if(MD5.getMD5(userPwd).equals(user.getUserPwd())){
				return 2;	//用户密码正确返回2
			}else{
				return 1;	//用户密码错误返回1
			}
		}
	}

}
