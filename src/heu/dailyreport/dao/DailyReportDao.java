package heu.dailyreport.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import heu.dailyreport.pojo.DailyReport;
import heu.dailyreport.pojo.DailyReportProject;
import heu.dailyreport.pojo.DailyReportTime;
import heu.dailyreport.pojo.DailyReportWork;
import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.ProjectWork;
import heu.dailyreport.pojo.User;
import heu.dailyreport.pojo.UserCustom;
import heu.dailyreport.pojo.WeekReport;

public interface DailyReportDao {

	//DailyReport表连接Project表，查询项目名称。
	public List<Project> findprojName() throws Exception;

	//管理员可通过起始、结束日期，项目名称，项目状态，任务，分别查询日报
	public List<DailyReportProject> findDailyReportList(DailyReportProject dailyReportProject) throws Exception;
	
	
	//个人可通过起始、结束日期，项目名称，项目状态，任务，分别查询日报
	public List<DailyReportProject> findDailyReportListSelf(DailyReportProject dailyReportProject) throws Exception;

	//查询所有日报
	public List<DailyReport> getAllDailyReport() throws Exception;
	
	public int insertDailyReport(DailyReportProject dailyReportProject) throws Exception;

	//修改日报信息
	public void updateDailyReport(DailyReportProject dailyReportProject);

	
	public List<Double> CountWorkByDate(DailyReportTime time) throws Exception;
	
	public List<Double> CountExWorkByDate(DailyReportTime time) throws Exception;
	
	public List<DailyReportWork> FindIdByDate(DailyReportTime time) throws Exception;
	
	
	public List<Double> CountWorkByProjId(Project proj)throws Exception;

	public List<Double> CountExWorkByProjId(Project proj) throws Exception;
	
	public List<ProjectWork> FindOtherByProjId(Project proj) throws Exception;

	
	
	
	public List<Double> CountWeekWorkReportById(WeekReport wr) throws Exception;

	public List<Double> CountWeekExWorkReportById(WeekReport wr) throws Exception;
    
	public List<WeekReport> FindWeekReportById(WeekReport wr);


	
}
