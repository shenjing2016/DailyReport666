/**
 * @author 赵振凯
 */
package heu.dailyreport.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heu.dailyreport.dao.DepartmentDao;
import heu.dailyreport.pojo.Department;
import heu.dailyreport.pojo.User;
import heu.dailyreport.service.DepartmentService;
@Service("departmentservice")

public class DepartmentServiceImpl implements DepartmentService{
	
	@Autowired
	DepartmentDao departmentdao;
	@Override
	public Department findDepartmentById(String id) throws Exception {
		// TODO Auto-generated method stub
		return departmentdao.findDepartmentById(id);
	}

	@Override
	public List<Department> findDepartmentAll() throws Exception {
		// TODO Auto-generated method stub
		return departmentdao.findDepartmentAll();
	}

	@Override
	public void insertDepartment(Department department) throws Exception {
		// TODO Auto-generated method stub
		departmentdao.insertDepartment(department);
	}

	@Override
	public int updateDepartment(Department d) throws Exception {
		// TODO Auto-generated method stub
		return departmentdao.updateDepartment(d);
	}
	
	public List<User> findUserByRole() throws Exception
	{
		
		return departmentdao.findUserByRole();
	}
	

}
