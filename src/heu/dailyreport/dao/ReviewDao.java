package heu.dailyreport.dao;

import heu.dailyreport.pojo.Custom1;

import java.util.Date;
import java.util.List;

public interface ReviewDao {
	public List<String> findUser() throws Exception;
	public List<Custom1> findDailyReportReview(Custom1 custom) throws Exception;
	public Custom1 findDailyReportAlter(String drId) throws Exception;
	public void alterDailyReport(Custom1 custom) throws Exception;
	public List<Custom1> findAllDailyReportReview() throws Exception;
	public void checkDailyReport(Custom1 custom) throws Exception;

}
