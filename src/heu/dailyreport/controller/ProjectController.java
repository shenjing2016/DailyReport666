/**
 * @author 赵振凯
 */
package heu.dailyreport.controller;

import heu.dailyreport.pojo.Department;
import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.User;
import heu.dailyreport.service.impl.ProjectServiceImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Formatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProjectController {
	@Autowired
	ProjectServiceImpl projectservice;
	
	@RequestMapping("/addproject")
	public ModelAndView addproject(Project u) throws Exception{
		Date date=u.getProjStartTime();
		System.out.println(date);
		projectservice.insertProject(u);
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject");
		
		return modelAndView;
	}
	
	
	@RequestMapping("/addproject2")
	public ModelAndView addproject(HttpServletRequest request) throws Exception{
		
		Project pro=new Project();
		
		
		String projName=request.getParameter("projName");
		String projStartTime=request.getParameter("projStartTime");
		String projDeadTime=request.getParameter("projDeadTime");
		String projStatus=request.getParameter("projStatus");
		String projManager=request.getParameter("projManager");
		String grpId=request.getParameter("grpId");
		String projText=request.getParameter("projText");

		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");
		Date projStartTime1=formatter.parse(projStartTime);
		Date projDeadTime1=formatter1.parse(projDeadTime);
		
		int projStatus1=Integer.parseInt(projStatus);
		SimpleDateFormat formatter2=new SimpleDateFormat("yyyyMMdd");
		
		String a= formatter2.format(projStartTime1);
		
		String id1=a.concat(projManager);
		System.out.println(id1);
		pro.setProjId(id1);
		pro.setProjName(projName);
		pro.setProjStartTime(projStartTime1);
		pro.setProjDeadTime(projDeadTime1);
		pro.setProjStatus(projStatus1);
		pro.setProjManager(projManager);
		pro.setGrpId(grpId);
		pro.setProjText(projText);
		
		projectservice.insertProject(pro);
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject");
		
		return modelAndView;
	}
	
	
	
	@RequestMapping("/addproject1")
	public ModelAndView addproject1() throws Exception{
		
		List<User> list=new ArrayList<User>();
		list=projectservice.findUserByRole();
	
		List<ProjGroup> list1=new ArrayList<ProjGroup>();
		list1=projectservice.findProjGroup();
		
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("list1", list1);
		
		modelAndView.setViewName("addProject");
		
		return modelAndView;
	}
	
	@RequestMapping("/addproject1_Admin")
	public ModelAndView addproject1_Admin() throws Exception{
		
		List<User> list=new ArrayList<User>();
		list=projectservice.findUserByRole();
	
		List<ProjGroup> list1=new ArrayList<ProjGroup>();
		list1=projectservice.findProjGroup();
		
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("list1", list1);
		
		modelAndView.setViewName("addProject_Admin");
		
		return modelAndView;
	}
	
	@RequestMapping("/addproject2_Admin")
	public ModelAndView addproject2_Admin(HttpServletRequest request) throws Exception{
		
		Project pro=new Project();
		
		
		String projName=request.getParameter("projName");
		String projStartTime=request.getParameter("projStartTime");
		String projDeadTime=request.getParameter("projDeadTime");
		String projStatus=request.getParameter("projStatus");
		String projManager=request.getParameter("projManager");
		String grpId=request.getParameter("grpId");
		String projText=request.getParameter("projText");

		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");
		Date projStartTime1=formatter.parse(projStartTime);
		Date projDeadTime1=formatter1.parse(projDeadTime);
		
		int projStatus1=Integer.parseInt(projStatus);
		SimpleDateFormat formatter2=new SimpleDateFormat("yyyyMMdd");
		
		String a= formatter2.format(projStartTime1);
		
		String id1=a.concat(projManager);
		System.out.println(id1);
		pro.setProjId(id1);
		pro.setProjName(projName);
		pro.setProjStartTime(projStartTime1);
		pro.setProjDeadTime(projDeadTime1);
		pro.setProjStatus(projStatus1);
		pro.setProjManager(projManager);
		pro.setGrpId(grpId);
		pro.setProjText(projText);
		
		projectservice.insertProject(pro);
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject_Admin");
		
		return modelAndView;
	}
	
	

	@RequestMapping("/findproject_Admin")
	public ModelAndView findproject_Admin() throws Exception{
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject_Admin");
		
		return modelAndView;
	}
	
	@RequestMapping("/findproject_Manager")
	public ModelAndView findproject_Manager() throws Exception{
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject_Manager");
		
		return modelAndView;
	}
	
	
	@RequestMapping("/findproject_GroupLeader")
	public ModelAndView findproject_GroupLeader() throws Exception{
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject_GroupLeader");
		
		return modelAndView;
	}
	
	@RequestMapping("/findproject")
	public ModelAndView findproject() throws Exception{
		
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("findProject");
		
		return modelAndView;
	}
	
	
	@RequestMapping("/updateproject_GroupLeader")
	public ModelAndView updateproject_GroupLeader() throws Exception{
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("updateProject_GroupLeader");
		
		return modelAndView;
	}
	
	@RequestMapping("/updateproject1_GroupLeader")
	public ModelAndView updateproject1_GroupLeader(String projId) throws Exception{
		
		Project p=projectservice.findProjectById(projId);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("p", p);
		
		modelAndView.setViewName("updateProject1_GroupLeader");
		
		return modelAndView;
	}
	
	@RequestMapping("/updateproject2_GroupLeader")
	public ModelAndView updateproject2_GroupLeader(Project p) throws Exception{
		
		projectservice.updateProjectById(p);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("p", p);
		
		modelAndView.setViewName("index_GroupLeader");
		
		return modelAndView;
	}
	
	
	
	@RequestMapping("/updateproject")
	public ModelAndView updateproject() throws Exception{
		List<Project> list=new ArrayList<Project>();
		list=projectservice.findProjectAll();
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("projectlist", list);
		
		modelAndView.setViewName("updateProject");
		
		return modelAndView;
	}
	
	@RequestMapping("/updateproject1")
	public ModelAndView updateproject1(String projId) throws Exception{
		
		Project p=projectservice.findProjectById(projId);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("p", p);
		
		modelAndView.setViewName("updateProject1");
		
		return modelAndView;
	}
	
	@RequestMapping("/updateproject2")
	public ModelAndView updateproject2(Project p) throws Exception{
		
		projectservice.updateProjectById(p);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("p", p);
		
		modelAndView.setViewName("zzkmain");
		
		return modelAndView;
	}
	
	

}
