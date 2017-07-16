/**
 * @author 赵振凯
 */
package heu.dailyreport.service;

import heu.dailyreport.pojo.Project;

import java.util.List;

public interface ProjectService {
	//通过ID来查询单个项目
		public Project findProjectById(String id) throws Exception;
		
		//查询所有的项目信息（这里要使用分页）
		public List<Project> findProjectAll()throws Exception;
		
		//通过若干条件查询项目（这里要使用分页）
		public List<Project> findProjectBySome(Project project)throws Exception;
		
		//通过grpId查询允许的项目（本小组的项目&&当日在项目实施时间范围内）
		public List<Project> findProjectByGroupAndTime(Project project)throws Exception;
		
		//插入一条项目信息通过返回值判断是否成功
		public void insertProject(Project project) throws Exception;
		
		//通过ID来修改一条项目信息
		public int updateProjectById(Project project) throws Exception;
		
//		//通过ID来删除一条项目信息
//		public int deleteProject(String id) throws Exception;

}
