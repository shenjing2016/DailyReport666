package heu.dailyreport.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heu.dailyreport.algorithm.D1;
import heu.dailyreport.dao.IndexDao;
import heu.dailyreport.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService{
	
	@Autowired
	IndexDao indexDao;
	@Override	
	public String findUserIdByIndex(String grpId) throws Exception{
		String str = indexDao.findUserIdByIndex(grpId);
		return str;
		
	}
	@Override	
	public String findGrpIdByIndex(String deptId) throws Exception{
		String str = indexDao.findGrpIdByIndex(deptId);
		return str;
		
	}
	@Override	
	public String findDailyReportIdByIndex(String date, String userId) throws Exception{
		return date+userId;
	}
	@Override	
	public String findDepartmentIdByIndex() throws Exception{
		String str = indexDao.findDepartmentIdByIndex();;
		return str;
	}
}
