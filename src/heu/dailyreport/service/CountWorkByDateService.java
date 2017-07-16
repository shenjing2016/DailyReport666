package heu.dailyreport.service;

import java.util.List;

import heu.dailyreport.pojo.DailyReportTime;
import heu.dailyreport.pojo.DailyReportWork;
/**
 * 根据时间段对工作量进行统计
 * @author 徐鲲鹏
 * @param dailyReportProject
 * @return modelAndView
 * @throws Exception
 */




public interface CountWorkByDateService {
	public List<Double> findWorkByDate(DailyReportTime time) throws Exception;//根据日期查找工作量
	public List<Double> findExWorkByDate(DailyReportTime time) throws Exception;//根据日期查找额外工作量
    public List<DailyReportWork> findIdByDate(DailyReportTime time) throws Exception;
}
