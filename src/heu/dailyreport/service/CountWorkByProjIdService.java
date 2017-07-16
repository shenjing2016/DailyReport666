package heu.dailyreport.service;

import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.ProjectWork;

import java.util.List;
/**
 * 根据项目段对工作量进行统计
 * @author 徐鲲鹏
 * @param dailyReportProject
 * @return modelAndView
 * @throws Exception
 */
public interface CountWorkByProjIdService {
	public List<Double> CountWorkByProjId(Project proj)throws Exception;//根据项目查询总工作量
	public List<Double> CountExWorkByProjId(Project proj) throws Exception;//根据项目查询额外工作量
	public List<ProjectWork> FindOtherByProjId(Project proj) throws Exception;//根据项目信息查询其他项目信息
}
