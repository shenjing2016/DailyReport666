package heu.dailyreport.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import heu.dailyreport.algorithm.D1;
import heu.dailyreport.algorithm.WordList;
import heu.dailyreport.pojo.Project;
import heu.dailyreport.pojo.ProjectWork;
import heu.dailyreport.service.CountWorkByProjIdService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class CountWorkByProjIdController {

	@Autowired
	/**
	 * 根据项目对工作量统计
	 * @author 徐鲲鹏
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
	CountWorkByProjIdService  countWorkByProjIdService;
	
	@RequestMapping("/findWorkByProjId_GroupLeader")
	
	public ModelAndView CountWeekByProjId_GroupLeader(HttpServletRequest request) throws Exception{
		/**
		 * 从前端接收数据
		 */
		String ProjId = request.getParameter("projId");
		//System.out.println(ProjId);
		String ProjName = request.getParameter("projName");
		/**
		 * 进行必要的变量定义
		 */
		Project proj = new Project();
		proj.setProjName(ProjName);
		proj.setProjId(ProjId);
        List<ProjectWork> pw = new ArrayList<ProjectWork>();
		List<Double> work = new ArrayList<Double>();
		List<Double> exWork = new ArrayList<Double>();
		List<Double> totalWork = new ArrayList<Double>();
		double sumWork = 0;
		double sumExWork = 0;
		double sumTotalWork = 0;
		String str = "总 计";
		WordList wl = new WordList();
		D1 d1 = new D1();///double型保留1位小数的工具类
		/**
		 * 调用 CountWorkByProjID的方法获得数据库中需要得到的数据
		 */
        pw = countWorkByProjIdService.FindOtherByProjId(proj);
		work = countWorkByProjIdService.CountWorkByProjId(proj);
		exWork = countWorkByProjIdService.CountExWorkByProjId(proj);
		/*
		 * 对从数据库中获取的数据进行处理并进行封装
		 */
		for(int i = 0;i < work.size() ; i++ )
		{
			pw.get(i).setWork(d1.reset(work.get(i)));
			System.out.println(pw.get(i).getWork());
			pw.get(i).setExWork(d1.reset(exWork.get(i)));
			pw.get(i).setTotalWork(d1.reset(work.get(i)+exWork.get(i)));		
		    sumWork += pw.get(i).getWork();
		    sumExWork += pw.get(i).getExWork();
		    switch(pw.get(i).getProjStatus()/10){
		       case 0: pw.get(i).setProjStage(wl.getA());break; 
		       case 1: pw.get(i).setProjStage(wl.getA());break;
		       case 2: pw.get(i).setProjStage(wl.getB());break;
		       case 3: pw.get(i).setProjStage(wl.getB());break;
		       case 4: pw.get(i).setProjStage(wl.getC());break;
		       case 5: pw.get(i).setProjStage(wl.getC());break;
		       case 6: pw.get(i).setProjStage(wl.getD());break;
		       case 7: pw.get(i).setProjStage(wl.getD());break;
		       case 8: pw.get(i).setProjStage(wl.getE());break;
		       case 9: pw.get(i).setProjStage(wl.getE());break;
		    }
		}
		//System.out.println(work.size());
		sumTotalWork = sumWork + sumExWork;
		//返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		
		//将数据传递到前端
		modelAndView.addObject("ProjectWork", pw);
		modelAndView.addObject("sum1", sumWork);
		modelAndView.addObject("sum2", sumExWork);
		modelAndView.addObject("sum3", sumTotalWork);
		modelAndView.addObject("str", str);
		//指定视图
		modelAndView.setViewName("/CountWorkByProjId_GroupLeader");
		return modelAndView;
	}
	
@RequestMapping("/findWorkByProjId_Manager")
	
	public ModelAndView CountWeekByProjId_Manager(HttpServletRequest request) throws Exception{
		/**
		 * 从前端接收数据
		 */
		String ProjId = request.getParameter("projId");
		//System.out.println(ProjId);
		String ProjName = request.getParameter("projName");
		/**
		 * 进行必要的变量定义
		 */
		Project proj = new Project();
		proj.setProjName(ProjName);
		proj.setProjId(ProjId);
        List<ProjectWork> pw = new ArrayList<ProjectWork>();
		List<Double> work = new ArrayList<Double>();
		List<Double> exWork = new ArrayList<Double>();
		List<Double> totalWork = new ArrayList<Double>();
		double sumWork = 0;
		double sumExWork = 0;
		double sumTotalWork = 0;
		String str = "总 计";
		WordList wl = new WordList();
		D1 d1 = new D1();///double型保留1位小数的工具类
		/**
		 * 调用 CountWorkByProjID的方法获得数据库中需要得到的数据
		 */
        pw = countWorkByProjIdService.FindOtherByProjId(proj);
		work = countWorkByProjIdService.CountWorkByProjId(proj);
		exWork = countWorkByProjIdService.CountExWorkByProjId(proj);
		/*
		 * 对从数据库中获取的数据进行处理并进行封装
		 */
		for(int i = 0;i < work.size() ; i++ )
		{
			pw.get(i).setWork(d1.reset(work.get(i)));
			System.out.println(pw.get(i).getWork());
			pw.get(i).setExWork(d1.reset(exWork.get(i)));
			pw.get(i).setTotalWork(d1.reset(work.get(i)+exWork.get(i)));		
		    sumWork += pw.get(i).getWork();
		    sumExWork += pw.get(i).getExWork();
		    switch(pw.get(i).getProjStatus()/10){
		       case 0: pw.get(i).setProjStage(wl.getA());break; 
		       case 1: pw.get(i).setProjStage(wl.getA());break;
		       case 2: pw.get(i).setProjStage(wl.getB());break;
		       case 3: pw.get(i).setProjStage(wl.getB());break;
		       case 4: pw.get(i).setProjStage(wl.getC());break;
		       case 5: pw.get(i).setProjStage(wl.getC());break;
		       case 6: pw.get(i).setProjStage(wl.getD());break;
		       case 7: pw.get(i).setProjStage(wl.getD());break;
		       case 8: pw.get(i).setProjStage(wl.getE());break;
		       case 9: pw.get(i).setProjStage(wl.getE());break;
		    }
		}
		//System.out.println(work.size());
		sumTotalWork = sumWork + sumExWork;
		//返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		
		//将数据传递到前端
		modelAndView.addObject("ProjectWork", pw);
		modelAndView.addObject("sum1", sumWork);
		modelAndView.addObject("sum2", sumExWork);
		modelAndView.addObject("sum3", sumTotalWork);
		modelAndView.addObject("str", str);
		//指定视图
		modelAndView.setViewName("/CountWorkByProjId_Manager");
		return modelAndView;
	}
	
	
	
}
