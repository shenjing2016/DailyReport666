package heu.dailyreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heu.dailyreport.dao.DailyReportDao;
import heu.dailyreport.pojo.DailyReportUser;
import heu.dailyreport.pojo.WeekReport;
import heu.dailyreport.service.FindWeekReportByIdService;

@Service
public class FindWeekReportByIdServiceImpl implements FindWeekReportByIdService {

	@Autowired
	DailyReportDao dailyReportDao;
	@Override
	public List<Double> CountWeekWorkReportById(WeekReport wr) throws Exception {
		return dailyReportDao.CountWeekWorkReportById(wr);
	}//根据用户工号查询周报工作量

	@Override
	public List<Double> CountWeekExWorkReportById(WeekReport wr)
			throws Exception {
		return dailyReportDao.CountWeekExWorkReportById(wr);
	}//根据用户工号查询周报额外工作量

	@Override
	public List<WeekReport> FindWeekReportById(WeekReport wr) {
		return dailyReportDao.FindWeekReportById(wr);
	}//根据用户工号查询周报其他信息

//	@Override
//	PUBLIC LIST<DAILYREPORTUSER> FINDWEEKDETAILBYID(WEEKREPORT WR)
//			THROWS EXCEPTION {
//		RETURN DAILYREPORTDAO.FINDWEEKDETAILBYID(WR);
//	}//根据用户工号查询周报细节	

}
