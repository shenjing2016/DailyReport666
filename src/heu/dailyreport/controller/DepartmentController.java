/**
 * @author 赵振凯
 */
package heu.dailyreport.controller;

import java.io.OutputStream;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import heu.dailyreport.pojo.Department;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.User;
import heu.dailyreport.service.impl.DepartmentServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author 赵振凯
 *
 */
@Controller
public class DepartmentController {
	
	@Autowired
	DepartmentServiceImpl departmentservice;
	

	@RequestMapping("/finddepartment")
	public ModelAndView finddepartment() throws Exception{
		List<Department> list=new ArrayList<Department>();
		list=departmentservice.findDepartmentAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("departmentList", list);
//		传入到测试页面		
//		modelAndView.setViewName("/departmentset/finddepaertment");
//		传入到模板页面
		modelAndView.setViewName("findDepartment");		
		return modelAndView;
	}
	
	
	@RequestMapping("/adddepartment")
	public ModelAndView adddepartment(Department d) throws Exception{

		departmentservice.insertDepartment(d);
		List<Department> list=new ArrayList<Department>();
		list=departmentservice.findDepartmentAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("departmentList", list);
//		传入到测试页面		
//		modelAndView.setViewName("/departmentset/finddepaertment");
//		传入到模板页面
		modelAndView.setViewName("findDepartment");		
		
		return modelAndView;
//		finddepartment();
		
	}
	
	@RequestMapping("/adddepartment1")
	public ModelAndView adddepartment1() throws Exception{
		
		List<User> list=new ArrayList<User>();
		list=departmentservice.findUserByRole();
	
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("list", list);
//		传入到测试页面
//		modelAndView.setViewName("departmentset/adddepartment");
//		传入到模板页面
		modelAndView.setViewName("addDepartment");
		
		return modelAndView;
	}
	
	@RequestMapping("/adddepartment_Admin")
	public ModelAndView adddepartment_Admin(Department d) throws Exception{

		departmentservice.insertDepartment(d);
		List<Department> list=new ArrayList<Department>();
		list=departmentservice.findDepartmentAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("departmentList", list);
//		传入到测试页面		
//		modelAndView.setViewName("/departmentset/finddepaertment");
//		传入到模板页面
		modelAndView.setViewName("findDepartment_Admin");		
		
		return modelAndView;
//		finddepartment();
		
	}
	
	@RequestMapping("/adddepartment1_Admin")
	public ModelAndView adddepartment1_Admin() throws Exception{
		
		List<User> list=new ArrayList<User>();
		list=departmentservice.findUserByRole();
	
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("list", list);
//		传入到测试页面
//		modelAndView.setViewName("departmentset/adddepartment");
//		传入到模板页面
		modelAndView.setViewName("addDepartment_Admin");
		
		return modelAndView;
	}
	
	@RequestMapping("/finddepartment_Admin")
	public ModelAndView finddepartment_Admin() throws Exception{
		List<Department> list=new ArrayList<Department>();
		list=departmentservice.findDepartmentAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("departmentList", list);
//		传入到测试页面		
//		modelAndView.setViewName("/departmentset/finddepaertment");
//		传入到模板页面
		modelAndView.setViewName("findDepartment_Admin");		
		return modelAndView;
	}
	
	
	@RequestMapping("/updatedepartment_Admin")
	public ModelAndView updatedepartment_Admin(Department d) throws Exception{
		departmentservice.updateDepartment(d);
		List<Department> list=new ArrayList<Department>();
		list=departmentservice.findDepartmentAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("departmentList", list);
//		传入到测试页面		
//		modelAndView.setViewName("/departmentset/finddepaertment");
//		传入到模板页面
		modelAndView.setViewName("findDepartment_Admin");		
		
		return modelAndView;
	}
	
	
	@RequestMapping("/updatedepartment1_Admin")
	public ModelAndView updatedepartment1_Admin(String deptId) throws Exception{
		
		List<User> list=new ArrayList<User>();
		list=departmentservice.findUserByRole();
		
		Department d=departmentservice.findDepartmentById(deptId);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("d", d);
//		传入到测试页面
//		modelAndView.setViewName("departmentset/adddepartment");
//		传入到模板页面
		modelAndView.setViewName("updateDepartment_Admin");
		
		return modelAndView;
	}
	
	
	
	
	@RequestMapping("/updatedepartment")
	public ModelAndView updatedepartment(Department d) throws Exception{
		departmentservice.updateDepartment(d);
		List<Department> list=new ArrayList<Department>();
		list=departmentservice.findDepartmentAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("departmentList", list);
//		传入到测试页面		
//		modelAndView.setViewName("/departmentset/finddepaertment");
//		传入到模板页面
		modelAndView.setViewName("findDepartment");		
		
		return modelAndView;
	}
	
	
	@RequestMapping("/updatedepartment1")
	public ModelAndView updatedepartment1(String deptId) throws Exception{
		
		List<User> list=new ArrayList<User>();
		list=departmentservice.findUserByRole();
		
		Department d=departmentservice.findDepartmentById(deptId);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("d", d);
//		传入到测试页面
//		modelAndView.setViewName("departmentset/adddepartment");
//		传入到模板页面
		modelAndView.setViewName("updateDepartment");
		
		return modelAndView;
	}
	
	
	
	@RequestMapping("/check1")
	public @ResponseBody void check(HttpServletRequest request, HttpServletResponse response, String deptId) throws Exception {
		String result="0";
		
		if (deptId == null) {
			result="1";
		}else if(deptId.length()>2)
		{
			result="2";
		}else if(departmentservice.findDepartmentById(deptId)!=null)
		{
			result="3";
		}
		
//		传入到测试页面
//		modelAndView.setViewName("departmentset/adddepartment");
//		传入到模板页面
		OutputStream out=response.getOutputStream();
		out.write(result.getBytes());
		out.close();
			
	}
	
	
	
	
	
	

}
