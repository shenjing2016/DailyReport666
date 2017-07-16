package heu.dailyreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heu.dailyreport.dao.DailyReportDao;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.ProjectWork;
import heu.dailyreport.service.CountWorkByProjIdService;

@Service
public class CountWorkByProjIdServiceImpl implements CountWorkByProjIdService {
    
	
	@Autowired
	DailyReportDao dailyReportDao;
	@Override
	public List<Double> CountWorkByProjId(Project proj) throws Exception {
		return dailyReportDao.CountWorkByProjId(proj);
	}//根据项目信息查询工作量

	@Override
	public List<Double> CountExWorkByProjId(Project proj) throws Exception {

		return dailyReportDao.CountExWorkByProjId(proj);
	}//根据项目信息查询额外工作量

	@Override
	public List<ProjectWork> FindOtherByProjId(Project proj) throws Exception {

		return dailyReportDao.FindOtherByProjId(proj);
	}//根据项目信息查询其他信息
}
