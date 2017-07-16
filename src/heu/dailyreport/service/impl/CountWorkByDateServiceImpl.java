package heu.dailyreport.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heu.dailyreport.dao.DailyReportDao;
import heu.dailyreport.pojo.DailyReportTime;
import heu.dailyreport.pojo.DailyReportWork;
import heu.dailyreport.service.CountWorkByDateService;

@Service
public class CountWorkByDateServiceImpl implements CountWorkByDateService{
	
	@Autowired
	DailyReportDao dailyReportDao;

	@Override
	public List<Double> findWorkByDate(DailyReportTime time) throws Exception {
		return dailyReportDao.CountWorkByDate(time);
	}//根据日期查找工作量

	@Override
	public List<Double> findExWorkByDate(DailyReportTime time) throws Exception {
		// TODO Auto-generated method stub
		return dailyReportDao.CountExWorkByDate(time);
	}

	@Override
	public List<DailyReportWork> findIdByDate(DailyReportTime time) throws Exception {
		// TODO Auto-generated method stub
		return dailyReportDao.FindIdByDate(time);
	}
	
}
