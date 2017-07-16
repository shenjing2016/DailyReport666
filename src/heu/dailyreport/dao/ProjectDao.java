/**
 * @author 赵振凯
 */
package heu.dailyreport.dao;

import java.util.List;

import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.User;

public interface ProjectDao {
	
	//通过ID来查询单个项目
	public Project findProjectById(String id) throws Exception;
	
	//查询所有的项目信息（这里要使用分页）
	public List<Project> findProjectAll()throws Exception;
	
	//通过若干条件查询项目（这里要使用分页）
	public List<Project> findProjectBySome(Project project)throws Exception;
	
	//插入一条项目信息通过返回值判断是否成功
	public void insertProject(Project project) throws Exception;
	
	//通过ID来修改一条项目信息
	public int updateProjectById(Project project) throws Exception;
	
	//来查询小组负责人编号
	public List<User> findUserByRole() throws Exception;
	
	//来查询小组编号
	public List<ProjGroup> findProjGroup() throws Exception;
	
	public List<Project> findProjectByGroupAndTime(Project project)throws Exception;
	
	
//	//通过ID来删除一条项目信息
//	public int deleteProject(String id) throws Exception;

}
