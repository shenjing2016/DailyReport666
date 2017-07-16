package heu.dailyreport.service;

import heu.dailyreport.pojo.WeekReport;

import java.util.List;

public interface FindWeekReportByIdService {
	public List<Double> CountWeekWorkReportById(WeekReport wr) throws Exception;//统计一周内的工作量
    public List<Double> CountWeekExWorkReportById(WeekReport wr) throws Exception;//统计一周内的额外工作量
    public List<WeekReport> FindWeekReportById(WeekReport wr);
    
    //public List<DailyReportUser> FindWeekDetailById(WeekReport wr) throws Exception;

}
