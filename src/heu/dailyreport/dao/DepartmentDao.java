/**
 * @author 赵振凯
 */
package heu.dailyreport.dao;

import java.util.List;

import heu.dailyreport.pojo.Department;
import heu.dailyreport.pojo.User;

public interface DepartmentDao {
	//通过ID来查询一个部门信息
	public Department findDepartmentById(String id) throws Exception;
	
	//查询所有的部门信息
	public List<Department> findDepartmentAll() throws Exception;
	
	//插入部门信息
	public void insertDepartment(Department d) throws Exception;
	
	//更新部门信息
	public int  updateDepartment(Department d) throws Exception;
	
	//不该写在这里
	//通过职位来找编号
	public List<User> findUserByRole() throws Exception;
	

}
