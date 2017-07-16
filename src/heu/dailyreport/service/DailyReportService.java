package heu.dailyreport.service;

import java.util.List;

import heu.dailyreport.pojo.DailyReport;
import heu.dailyreport.pojo.DailyReportProject;
import heu.dailyreport.pojo.Project;

public interface DailyReportService {

	//DailyReport表连接Project表，查询项目名称
	public List<Project> findprojName() throws Exception;
	
	//管理员可通过起始、结束日期，项目名称，项目状态，任务，分别查询日报
	public List<DailyReportProject> findDailyReportList(DailyReportProject dailyReportProject) throws Exception;	

	
	//个人可通过起始、结束日期，项目名称，项目状态，任务，分别查询日报
	public List<DailyReportProject> findDailyReportListSelf(DailyReportProject dailyReportProject) throws Exception;	

	//查询所有日报
	public List<DailyReport> getAllDailyReport() throws Exception;
	
	public int insertDailyReport(DailyReportProject dailyReportProject) throws Exception;

	//修改日报信息
	public void updateDailyReport(DailyReportProject dailyReportProject) throws Exception;	

}
