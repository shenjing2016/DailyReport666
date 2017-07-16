package heu.dailyreport.service.impl;

import java.util.Date;
import java.util.List;

import heu.dailyreport.dao.ReviewDao;
import heu.dailyreport.pojo.Custom1;
import heu.dailyreport.service.ReviewService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;
	
	@Override
	public List<String> findUser() throws Exception {
		// TODO Auto-generated method stub
		return reviewDao.findUser();
	}

	@Override
	public List<Custom1> findDailyReportReview(Custom1 custom) throws Exception {
		// TODO Auto-generated method stub
		return reviewDao.findDailyReportReview(custom);
	}

	@Override
	public Custom1 findDailyReportAlter(String drId) throws Exception {
		// TODO Auto-generated method stub
		return reviewDao.findDailyReportAlter(drId);
	}

	@Override
	public void alterDailyReport(Custom1 custom) throws Exception {
		// TODO Auto-generated method stub
		reviewDao.alterDailyReport(custom);
	}

	@Override
	public List<Custom1> findAllDailyReportReview() throws Exception {
		// TODO Auto-generated method stub
		return reviewDao.findAllDailyReportReview();
	}

	@Override
	public void checkDailyReport(Custom1 custom) throws Exception {
		reviewDao.checkDailyReport(custom);
		
	}


}
