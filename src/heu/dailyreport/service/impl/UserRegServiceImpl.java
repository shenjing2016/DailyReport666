package heu.dailyreport.service.impl;

import heu.dailyreport.dao.UserDao;
import heu.dailyreport.pojo.User;
import heu.dailyreport.service.UserRegService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserRegServiceImpl implements UserRegService {

	@Autowired
	private UserDao userDao;

	@Transactional
	@Override
	public void reg(User user) throws Exception {
		userDao.insertUser(user);
	}


}
