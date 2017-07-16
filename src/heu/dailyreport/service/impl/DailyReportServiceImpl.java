package heu.dailyreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import heu.dailyreport.dao.DailyReportDao;
import heu.dailyreport.pojo.DailyReport;
import heu.dailyreport.pojo.DailyReportProject;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.service.DailyReportService;

/**
 * 
 * @author new
 *
 */
@Service
public class DailyReportServiceImpl implements DailyReportService {
	
	@Autowired
	private DailyReportDao dailyReportDao;

	//结合Project表查询项目名称
	@Override
	public List<Project> findprojName() throws Exception {
		return dailyReportDao.findprojName();
	}
	
	//可通过起始、结束日期，项目名称，项目状态，任务，分别查询日报
	@Override
	public List<DailyReportProject> findDailyReportList(DailyReportProject dailyReportProject) throws Exception {
		return dailyReportDao.findDailyReportList(dailyReportProject);
	}
	
	public List<DailyReportProject> findDailyReportListSelf(DailyReportProject dailyReportProject) throws Exception {
		return dailyReportDao.findDailyReportListSelf(dailyReportProject);
	}
	
	//查询所有日报
	@Override
	public List<DailyReport> getAllDailyReport() throws Exception {
		return dailyReportDao.getAllDailyReport();
	}
	
	//修改日报信息
	@Override
	public void updateDailyReport(DailyReportProject dailyReportProject)
			throws Exception {
		dailyReportDao.updateDailyReport(dailyReportProject);
	}
	@Override
	public int insertDailyReport(DailyReportProject dailyReportProject) throws Exception {
	
				// TODO Auto-generated method stub
				return dailyReportDao.insertDailyReport(dailyReportProject);
			}
}
