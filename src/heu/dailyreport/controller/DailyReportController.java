package heu.dailyreport.controller;


import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import oracle.net.aso.d;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import heu.dailyreport.dao.DailyReportDao;
import heu.dailyreport.pojo.DailyReport;
import heu.dailyreport.pojo.DailyReportProject;
import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.UserCustom;
import heu.dailyreport.service.DailyReportService;
import heu.dailyreport.service.ProjectService;

@Controller
public class DailyReportController {

	@Autowired
	private DailyReportService dailyReportService;
	
	@Autowired
	private ProjectService ProjectService;
	
	@Autowired
	private DailyReportDao dailyReportDao;
	
	/**
	 * 查询日报
	 * @author 宫羽欣
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
	
	@RequestMapping("/jumpToQueryDailyReport_Manager")
	public ModelAndView jumpToQueryDailyReport_Manager(DailyReportProject dailyReportProject) throws Exception{
		
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportList(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReport_Manager");	
		return modelAndView;
	}
	
	
	@RequestMapping("/queryDailyReport_Manager")
	public ModelAndView queryDailyReport_Manager(DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportList(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReport_Manager");	
		return modelAndView;
	}
	
	/**
	 * 查询日报
	 * @author 宫羽欣
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
	
	@RequestMapping("/jumpToQueryDailyReport_GroupLeader")
	public ModelAndView jumpToQueryDailyReport_GroupLeader(DailyReportProject dailyReportProject) throws Exception{
		
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportList(null);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReport_GroupLeader");	
		return modelAndView;
	}
	
	@RequestMapping("/queryDailyReport_GroupLeader")
	public ModelAndView queryDailyReport_GroupLeader(DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportList(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReport_GroupLeader");	
		return modelAndView;
	}
	
	
	
	@RequestMapping("/jumpToQueryDailyReportSelf_Manager")
	public ModelAndView jumpToQueryDailyReportSelf_Manager(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);

		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReportSelf_Manager");	
		return modelAndView;
	}
	
	@RequestMapping("/qqueryDailyReportSelf_Manager")
	public ModelAndView qqueryDailyReportSelf_Manager(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReportSelf_Manager");	
		return modelAndView;
	}
	
	@RequestMapping("/uqueryDailyReportSelf_Manager")
	public ModelAndView uqueryDailyReportSelf_Manager(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("updateDailyReportSelf_Manager");	
		return modelAndView;
	}
	
	
	
	@RequestMapping("/jumpToQueryDailyReportSelf_GroupLeader")
	public ModelAndView jumpToQueryDailyReportSelf_GroupLeader(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		
		dailyReportProject.setUserId(userId);

		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReportSelf_GroupLeader");	
		return modelAndView;
	}
	
	@RequestMapping("/qqueryDailyReportSelf_GroupLeader")
	public ModelAndView qqueryDailyReportSelf_GroupLeader(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReportSelf_GroupLeader");	
		return modelAndView;
	}
	
	@RequestMapping("/uqueryDailyReportSelf_GroupLeader")
	public ModelAndView uqueryDailyReportSelf_GroupLeader(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("updateDailyReportSelf_GroupLeader");	
		return modelAndView;
	}
	
	
	
	@RequestMapping("/jumpToQueryDailyReportSelf_Worker")
	public ModelAndView jumpToQueryDailyReportSelf_Worker(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		
		dailyReportProject.setUserId(userId);

		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReportSelf_Worker");	
		return modelAndView;
	}
	
	@RequestMapping("/qqueryDailyReportSelf_Worker")
	public ModelAndView qqueryDailyReportSelf_Worker(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("queryDailyReportSelf_Worker");	
		return modelAndView;
	}
	
	@RequestMapping("/uqueryDailyReportSelf_Worker")
	public ModelAndView uqueryDailyReportSelf_Worker(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		dailyReportProject.setUserId(userId);
		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
		
		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("updateDailyReportSelf_Worker");	
		return modelAndView;
	}
	
	
	
	
	@RequestMapping("/jumpToUpdateDailyReportSelf_Manager")
	public ModelAndView jumpToUpdateDailyReportSelf_Manager(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		
		dailyReportProject.setUserId(userId);

		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("updateDailyReportSelf_Manager");	
		return modelAndView;
	}
	
//	@RequestMapping("/updateDailyReportSelf_Manager")
//	public ModelAndView updateDailyReportSelf_Manager(String userId, DailyReportProject dailyReportProject) throws Exception{
//		
//		dailyReportProject.setUserId(userId);
//		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
//		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
//		dailyReportProject.setProjName(dailyReportProject.getProjName());
//		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
//		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
//		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
//		
//		//调用dailyReportService查找数据库，查询日报列表
//		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
//		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
//		
//		//调用dailyReportService查找数据库，查询项目名称
//		List<Project> proList = new ArrayList<Project>();
//		proList = dailyReportService.findprojName();
//		
//		//返回ModelAndView
//        ModelAndView modelAndView = new ModelAndView();
//		
//        //在jsp页面中通过dailyReportList取数据
//		modelAndView.addObject("dailyReportList", dailyReportList);
//		//在jsp页面中通过proList取数据
//		modelAndView.addObject("proList", proList);
//		
//		//指定视图
//		modelAndView.setViewName("updateDailyReportSelf_Manager");	
//		return modelAndView;
//	}
	
	@RequestMapping("/jumpToUpdateDailyReportSelf_GroupLeader")
	public ModelAndView jumpToUpdateDailyReportSelf_GroupLeader(String userId, DailyReportProject dailyReportProject) throws Exception{
		

		
		dailyReportProject.setUserId(userId);

		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("updateDailyReportSelf_GroupLeader");	
		return modelAndView;
	}
	
//	@RequestMapping("/updateDailyReportSelf_GroupLeader")
//	public ModelAndView updateDailyReportSelf_GroupLeader(String userId, DailyReportProject dailyReportProject) throws Exception{
//		
//		dailyReportProject.setUserId(userId);
//		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
//		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
//		dailyReportProject.setProjName(dailyReportProject.getProjName());
//		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
//		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
//		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
//		
//		//调用dailyReportService查找数据库，查询日报列表
//		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
//		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
//		
//		//调用dailyReportService查找数据库，查询项目名称
//		List<Project> proList = new ArrayList<Project>();
//		proList = dailyReportService.findprojName();
//		
//		//返回ModelAndView
//        ModelAndView modelAndView = new ModelAndView();
//		
//        //在jsp页面中通过dailyReportList取数据
//		modelAndView.addObject("dailyReportList", dailyReportList);
//		//在jsp页面中通过proList取数据
//		modelAndView.addObject("proList", proList);
//		
//		//指定视图
//		modelAndView.setViewName("updateDailyReportSelf_GroupLeader");	
//		return modelAndView;
//	}
//	
	@RequestMapping("/jumpToUpdateDailyReportSelf_Worker")
	public ModelAndView jumpToUpdateDailyReportSelf_Worker(String userId, DailyReportProject dailyReportProject) throws Exception{
		
		
		dailyReportProject.setUserId(userId);

		//调用dailyReportService查找数据库，查询日报列表
		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
		
		//调用dailyReportService查找数据库，查询项目名称
		List<Project> proList = new ArrayList<Project>();
		proList = dailyReportService.findprojName();
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();
		
        //在jsp页面中通过dailyReportList取数据
		modelAndView.addObject("dailyReportList", dailyReportList);
		//在jsp页面中通过proList取数据
		modelAndView.addObject("proList", proList);
		
		//指定视图
		modelAndView.setViewName("updateDailyReportSelf_Worker");	
		return modelAndView;
	}
	
//	@RequestMapping("/updateDailyReportSelf_Worker")
//	public ModelAndView updateDailyReportSelf_Worker(String userId, DailyReportProject dailyReportProject) throws Exception{
//		
//		dailyReportProject.setUserId(userId);
//		dailyReportProject.setDrTimeStart(dailyReportProject.getDrTimeStart());
//		dailyReportProject.setDrTimeEnd(dailyReportProject.getDrTimeEnd());
//		dailyReportProject.setProjName(dailyReportProject.getProjName());
//		dailyReportProject.setDrWork(dailyReportProject.getDrWork());
//		dailyReportProject.setDrExWork(dailyReportProject.getDrExWork());
//		dailyReportProject.setDrStatus(dailyReportProject.getDrStatus());
//		
//		//调用dailyReportService查找数据库，查询日报列表
//		List<DailyReportProject> dailyReportList = new ArrayList<DailyReportProject>();
//		dailyReportList = dailyReportService.findDailyReportListSelf(dailyReportProject);
//		
//		//调用dailyReportService查找数据库，查询项目名称
//		List<Project> proList = new ArrayList<Project>();
//		proList = dailyReportService.findprojName();
//		
//		//返回ModelAndView
//        ModelAndView modelAndView = new ModelAndView();
//		
//        //在jsp页面中通过dailyReportList取数据
//		modelAndView.addObject("dailyReportList", dailyReportList);
//		//在jsp页面中通过proList取数据
//		modelAndView.addObject("proList", proList);
//		
//		//指定视图
//		modelAndView.setViewName("updateDailyReportSelf_Worker");	
//		return modelAndView;
//	}
	
	
	/**
	 * 新增日报
	 * @author 王喆
	 * @version 1.0
	 * @since 2017年2月26日15:31:35
	 * @param dailyReportProject
	 * @return modelAndView
	 */
	@RequestMapping("/insertDailyReport_Worker")
	public ModelAndView insertDailyReport_Worker(DailyReportProject dailyReportProject) throws Exception{
		///1.接收数据
		
		//前端页面传来的变量有：userId, projId, drText, drExWork, drWork
		
		System.out.println(dailyReportProject.getProjId());
		
		///2.处理数据（pojo初始化）
		
		//标准化userId
		dailyReportProject.setUserId(dailyReportProject.getUserId().substring(dailyReportProject.getUserId().indexOf('（')+1, dailyReportProject.getUserId().lastIndexOf('）')));
		
		//获取本地时间（提交时间drTime）记为日报提交时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		dailyReportProject.setDrTime(sdf.parse(sdf.format(new Date())));
		
		//自动生成日报ID（drId）
		String dateString = (new SimpleDateFormat("yyyyMMdd")).format(dailyReportProject.getDrTime());
		dailyReportProject.setDrId(dateString+dailyReportProject.getUserId());
		
		//设置审阅状态（drStatus）默认为：未审批
		dailyReportProject.setDrStatus(3);
		
		//设置日报默认审批者（drChecker）为日报隶属项目组组长
		dailyReportProject.setDrChecker(dailyReportProject.getProjId().substring(8));
		
		
		
		///3.反馈数据
		
		//反馈插入操作是否成功。
		int i = 0;
		i = dailyReportService.insertDailyReport(dailyReportProject);
        ModelAndView modelAndView = new ModelAndView();
        if(i == 1){				//如果插入了1条，说明成功。
        	modelAndView.addObject("result", "新建成功！");
        } else {				//如果插入0条或多条，都说明失败。
        						//如果是多条，应当自动记录在日志上，并把这些数据列为垃圾数据，最好还可以自动删除。
        	modelAndView.addObject("result", "新建失败！");
        }
		modelAndView.setViewName("redirect:jumpToQueryDailyReportSelf_Worker.action");
		return modelAndView;
	}
	@RequestMapping("/insertDailyReport_GroupLeader")
	public ModelAndView insertDailyReport_GroupLeader(DailyReportProject dailyReportProject) throws Exception{
		///1.接收数据
		
		//前端页面传来的变量有：userId, projId, drText, drExWork, drWork
		
		System.out.println(dailyReportProject.getProjId());
		
		///2.处理数据（pojo初始化）
		
		//标准化userId
		dailyReportProject.setUserId(dailyReportProject.getUserId().substring(dailyReportProject.getUserId().indexOf('（')+1, dailyReportProject.getUserId().lastIndexOf('）')));
		
		//获取本地时间（提交时间drTime）记为日报提交时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		dailyReportProject.setDrTime(sdf.parse(sdf.format(new Date())));
		
		//自动生成日报ID（drId）
		String dateString = (new SimpleDateFormat("yyyyMMdd")).format(dailyReportProject.getDrTime());
		dailyReportProject.setDrId(dateString+dailyReportProject.getUserId());
		
		//设置审阅状态（drStatus）默认为：未审批
		dailyReportProject.setDrStatus(3);
		
		//设置日报默认审批者（drChecker）为日报隶属项目组组长
		dailyReportProject.setDrChecker(dailyReportProject.getProjId().substring(8));
		
		
		
		///3.反馈数据
		
		//反馈插入操作是否成功。
		int i = 0;
		i = dailyReportService.insertDailyReport(dailyReportProject);
        ModelAndView modelAndView = new ModelAndView();
        if(i == 1){				//如果插入了1条，说明成功。
        	modelAndView.addObject("result", "新建成功！");
        } else {				//如果插入0条或多条，都说明失败。
        						//如果是多条，应当自动记录在日志上，并把这些数据列为垃圾数据，最好还可以自动删除。
        	modelAndView.addObject("result", "新建失败！");
        }
		modelAndView.setViewName("redirect:jumpToQueryDailyReportSelf_GroupLeader.action");
		return modelAndView;
	}
	@RequestMapping("/insertDailyReport_Manager")
	public ModelAndView insertDailyReport_Manager(DailyReportProject dailyReportProject) throws Exception{
		///1.接收数据
		
		//前端页面传来的变量有：userId, projId, drText, drExWork, drWork
		
		System.out.println(dailyReportProject.getProjId());
		
		///2.处理数据（pojo初始化）
		
		//标准化userId
		dailyReportProject.setUserId(dailyReportProject.getUserId().substring(dailyReportProject.getUserId().indexOf('（')+1, dailyReportProject.getUserId().lastIndexOf('）')));
		
		//获取本地时间（提交时间drTime）记为日报提交时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		dailyReportProject.setDrTime(sdf.parse(sdf.format(new Date())));
		
		//自动生成日报ID（drId）
		String dateString = (new SimpleDateFormat("yyyyMMdd")).format(dailyReportProject.getDrTime());
		dailyReportProject.setDrId(dateString+dailyReportProject.getUserId());
		
		//设置审阅状态（drStatus）默认为：未审批
		dailyReportProject.setDrStatus(3);
		
		//设置日报默认审批者（drChecker）为日报隶属项目组组长
		dailyReportProject.setDrChecker(dailyReportProject.getProjId().substring(8));
		
		
		
		///3.反馈数据
		
		//反馈插入操作是否成功。
		int i = 0;
		i = dailyReportService.insertDailyReport(dailyReportProject);
        ModelAndView modelAndView = new ModelAndView();
        if(i == 1){				//如果插入了1条，说明成功。
        	modelAndView.addObject("result", "新建成功！");
        } else {				//如果插入0条或多条，都说明失败。
        						//如果是多条，应当自动记录在日志上，并把这些数据列为垃圾数据，最好还可以自动删除。
        	modelAndView.addObject("result", "新建失败！");
        }
		modelAndView.setViewName("redirect:jumpToQueryDailyReportSelf_Manager.action");
		return modelAndView;
	}
	
	/**
	 * 跳转到新建日报界面，传一些默认值到jsp页面上
	 * @author 王喆
	 * @version 1.0
	 * @since 2017年2月27日16:05:52
	 * @param 
	 * @return 
	 */
	@RequestMapping("/jumpToInsertDailyReportPage_Worker")
	public ModelAndView jumpToInsertDailyReportPage_Worker(String userId) throws Exception{
		
		
		//获取本地时间（提交时间drTime）记为日报提交时间,自动生成日报ID（drId）
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String dateString = (new SimpleDateFormat("yyyyMMdd")).format(sdf.parse(sdf.format(new Date())));
		String drId = new String(dateString+userId);
		
		//查询该日报是否已经填写
		DailyReportProject dailyReportProject = new DailyReportProject();
		dailyReportProject.setDrId(drId);
		List<DailyReportProject> drList = new ArrayList<DailyReportProject>();
		drList = dailyReportService.findDailyReportList(dailyReportProject);
		
		if(drList==null || drList.isEmpty()){
			Project project = new Project();
			project.setProjStartTime(sdf.parse(sdf.format(new Date())));
			project.setGrpId(userId.substring(0, 4));
			
			//调用dailyReportService查找数据库，查询项目名称
			List<Project> proList = new ArrayList<Project>();
			proList = ProjectService.findProjectByGroupAndTime(project);
			
	        ModelAndView modelAndView = new ModelAndView();
	        
			modelAndView.setViewName("insertDailyReport_Worker");
	        
			//在jsp页面中通过proList取数据
			modelAndView.addObject("proList", proList);
			modelAndView.addObject("drId", drId);
			return modelAndView;
		} else {
			/*response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('该数据已经同步完成');</script>");
			response.getWriter().write("<script>alert('网页将跳转到test.do'); window.location='test.do' ;window.close();</script>");
			response.getWriter().flush();*/
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("insertDailyReportError_Worker");
			return modelAndView;
		}
		
			
		

	}
	@RequestMapping("/jumpToInsertDailyReportPage_GroupLeader")
	public ModelAndView jumpToInsertDailyReportPage_GroupLeader(String userId) throws Exception{
		
		
		//获取本地时间（提交时间drTime）记为日报提交时间,自动生成日报ID（drId）
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String dateString = (new SimpleDateFormat("yyyyMMdd")).format(sdf.parse(sdf.format(new Date())));
		String drId = new String(dateString+userId);
		
		//查询该日报是否已经填写
		DailyReportProject dailyReportProject = new DailyReportProject();
		dailyReportProject.setDrId(drId);
		List<DailyReportProject> drList = new ArrayList<DailyReportProject>();
		drList = dailyReportService.findDailyReportList(dailyReportProject);
		
		if(drList==null || drList.isEmpty()){
			Project project = new Project();
			project.setProjStartTime(sdf.parse(sdf.format(new Date())));
			project.setGrpId(userId.substring(0, 4));
			
			//调用dailyReportService查找数据库，查询项目名称
			List<Project> proList = new ArrayList<Project>();
			proList = ProjectService.findProjectByGroupAndTime(project);
			
	        ModelAndView modelAndView = new ModelAndView();
	        
			modelAndView.setViewName("insertDailyReport_GroupLeader");
	        
			//在jsp页面中通过proList取数据
			modelAndView.addObject("proList", proList);
			modelAndView.addObject("drId", drId);
			return modelAndView;
		} else {
			/*response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('该数据已经同步完成');</script>");
			response.getWriter().write("<script>alert('网页将跳转到test.do'); window.location='test.do' ;window.close();</script>");
			response.getWriter().flush();*/
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("insertDailyReportError_GroupLeader");
			return modelAndView;
		}
		
			
		

	}
	@RequestMapping("/jumpToInsertDailyReportPage_Manager")
	public ModelAndView jumpToInsertDailyReportPage_Manager(String userId) throws Exception{
		
		
		//获取本地时间（提交时间drTime）记为日报提交时间,自动生成日报ID（drId）
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String dateString = (new SimpleDateFormat("yyyyMMdd")).format(sdf.parse(sdf.format(new Date())));
		String drId = new String(dateString+userId);
		
		//查询该日报是否已经填写
		DailyReportProject dailyReportProject = new DailyReportProject();
		dailyReportProject.setDrId(drId);
		List<DailyReportProject> drList = new ArrayList<DailyReportProject>();
		drList = dailyReportService.findDailyReportList(dailyReportProject);
		
		if(drList==null || drList.isEmpty()){
			Project project = new Project();
			project.setProjStartTime(sdf.parse(sdf.format(new Date())));
			project.setGrpId(userId.substring(0, 4));
			
			//调用dailyReportService查找数据库，查询项目名称
			List<Project> proList = new ArrayList<Project>();
			proList = ProjectService.findProjectByGroupAndTime(project);
			
	        ModelAndView modelAndView = new ModelAndView();
	        
			modelAndView.setViewName("insertDailyReport_Manager");
	        
			//在jsp页面中通过proList取数据
			modelAndView.addObject("proList", proList);
			modelAndView.addObject("drId", drId);
			return modelAndView;
		} else {
			/*response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<script>alert('该数据已经同步完成');</script>");
			response.getWriter().write("<script>alert('网页将跳转到test.do'); window.location='test.do' ;window.close();</script>");
			response.getWriter().flush();*/
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("insertDailyReportError_Manager");
			return modelAndView;
		}
		
			
		

	}
	
	
/*	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
	    dateFormat.setLenient(false);  
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));  
	}*/
	
	/**
	 * 修改日报
	 * @author 宫羽欣
	 * @param drTimeStart1
	 * @param drWork
	 * @param drExWork
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
	@RequestMapping("/updateDailyReportSelf_Manager")
	public ModelAndView updateDailyReportSelf_Manager(String drTimeStart1, String drWork, String drExWork, DailyReportProject dailyReportProject) throws Exception{
		
		//指定日期格式
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		//把日期的String类型转换为Date类型
		Date drTime=formatter.parse(drTimeStart1);
		
		dailyReportProject.setDrTime(drTime);
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(Double.parseDouble(drWork));
		dailyReportProject.setDrExWork(Double.parseDouble(drExWork));
		dailyReportProject.setDrText(dailyReportProject.getDrText());
		System.out.println(dailyReportProject.getDrText());
		//调用service更新数据库，修改商品信息
		dailyReportService.updateDailyReport(dailyReportProject);
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();  
        modelAndView.setViewName("updateDailyReportSelf_Manager");
        //指定视图
		return modelAndView;
	}
	
	@RequestMapping("/updateDailyReportSelf_GroupLeader")
	public ModelAndView updateDailyReportSelf_GroupLeader(String drTimeStart1, String drWork, String drExWork, DailyReportProject dailyReportProject) throws Exception{
		
		//指定日期格式
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		//把日期的String类型转换为Date类型
		Date drTime=formatter.parse(drTimeStart1);
		
		dailyReportProject.setDrTime(drTime);
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(Double.parseDouble(drWork));
		dailyReportProject.setDrExWork(Double.parseDouble(drExWork));
		dailyReportProject.setDrText(dailyReportProject.getDrText());
		System.out.println(dailyReportProject.getDrText());
		//调用service更新数据库，修改商品信息
		dailyReportService.updateDailyReport(dailyReportProject);
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();  
        modelAndView.setViewName("updateDailyReportSelf_GroupLeader");
        //指定视图
		return modelAndView;
	}
	
	@RequestMapping("/updateDailyReportSelf_Worker")
	public ModelAndView updateDailyReportSelf_Worker(String drTimeStart1, String drWork, String drExWork, DailyReportProject dailyReportProject) throws Exception{
		
		//指定日期格式
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		//把日期的String类型转换为Date类型
		Date drTime=formatter.parse(drTimeStart1);
		
		dailyReportProject.setDrTime(drTime);
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(Double.parseDouble(drWork));
		dailyReportProject.setDrExWork(Double.parseDouble(drExWork));
		dailyReportProject.setDrText(dailyReportProject.getDrText());
		System.out.println(dailyReportProject.getDrText());
		//调用service更新数据库，修改商品信息
		dailyReportService.updateDailyReport(dailyReportProject);
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();  
        modelAndView.setViewName("updateDailyReportSelf_Worker");
        //指定视图
		return modelAndView;
	}
	
	@RequestMapping("/updateDailyReport_Manager")
	public ModelAndView updateDailyReport_Manager(String drTimeStart1, String drWork, String drExWork, DailyReportProject dailyReportProject) throws Exception{
		
		//指定日期格式
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		//把日期的String类型转换为Date类型
		Date drTime=formatter.parse(drTimeStart1);
		
		dailyReportProject.setDrTime(drTime);
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(Double.parseDouble(drWork));
		dailyReportProject.setDrExWork(Double.parseDouble(drExWork));
		dailyReportProject.setDrText(dailyReportProject.getDrText());
		System.out.println(dailyReportProject.getDrText());
		//调用service更新数据库，修改商品信息
		dailyReportService.updateDailyReport(dailyReportProject);
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();  
        modelAndView.setViewName("queryDailyReport_Manager");
        //指定视图
		return modelAndView;
	}
	
	@RequestMapping("/updateDailyReport_GroupLeader")
	public ModelAndView updateDailyReport_GroupLeader(String drTimeStart1, String drWork, String drExWork, DailyReportProject dailyReportProject) throws Exception{
		
		//指定日期格式
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		//把日期的String类型转换为Date类型
		Date drTime=formatter.parse(drTimeStart1);
		
		dailyReportProject.setDrTime(drTime);
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(Double.parseDouble(drWork));
		dailyReportProject.setDrExWork(Double.parseDouble(drExWork));
		dailyReportProject.setDrText(dailyReportProject.getDrText());
		System.out.println(dailyReportProject.getDrText());
		//调用service更新数据库，修改商品信息
		dailyReportService.updateDailyReport(dailyReportProject);
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();  
        modelAndView.setViewName("queryDailyReport_GroupLeader");
        //指定视图
		return modelAndView;
	}
	
	
	
	/**
	 * 修改日报
	 * @author 宫羽欣
	 * @param drTimeStart1
	 * @param drWork
	 * @param drExWork
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
/*	@RequestMapping("/updateDailyReport")
	public ModelAndView updateDailyReport(String drTimeStart1, String drWork, String drExWork, DailyReportProject dailyReportProject) throws Exception{
		
		//指定日期格式
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		//把日期的String类型转换为Date类型
		Date drTime=formatter.parse(drTimeStart1);
		
		dailyReportProject.setDrTime(drTime);
		dailyReportProject.setProjName(dailyReportProject.getProjName());
		dailyReportProject.setDrWork(Double.parseDouble(drWork));
		dailyReportProject.setDrExWork(Double.parseDouble(drExWork));
		dailyReportProject.setDrText(dailyReportProject.getDrText());
		System.out.println(dailyReportProject.getDrText());
		//调用service更新数据库，修改商品信息
		dailyReportService.updateDailyReport(dailyReportProject);
		
		//返回ModelAndView
        ModelAndView modelAndView = new ModelAndView();  
        
        //指定视图
		return modelAndView;
	}*/
	
	
}
