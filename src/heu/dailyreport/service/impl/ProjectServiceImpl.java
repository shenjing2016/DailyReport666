/**
 * @author 赵振凯
 */
package heu.dailyreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heu.dailyreport.dao.ProjectDao;
import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.User;
import heu.dailyreport.service.ProjectService;
@Service("projectservice")

public class ProjectServiceImpl implements ProjectService {

	@Autowired
	ProjectDao projectdao;
	@Override
	public Project findProjectById(String id) throws Exception {
		// TODO Auto-generated method stub
		return projectdao.findProjectById(id);
	}

	@Override
	public List<Project> findProjectAll() throws Exception {
		// TODO Auto-generated method stub
		return projectdao.findProjectAll();
	}

	@Override
	public List<Project> findProjectBySome(Project project) throws Exception {
		// TODO Auto-generated method stub
		return projectdao.findProjectBySome(project);
	}

	@Override
	public void insertProject(Project project) throws Exception {
		// TODO Auto-generated method stub
		projectdao.insertProject(project);
	}

	@Override
	public int updateProjectById(Project project) throws Exception {
		// TODO Auto-generated method stub
		return projectdao.updateProjectById(project);
		
		
		
	}
	
	
	public List<User> findUserByRole() throws Exception
	{
		
		return projectdao.findUserByRole();
	}
	
	public List<ProjGroup> findProjGroup() throws Exception
	{
		return projectdao.findProjGroup();
	}
	
	public List<Project> findProjectByGroupAndTime(Project project)throws Exception{
		return projectdao.findProjectByGroupAndTime(project);
	}

}
