package heu.dailyreport.controller;

import heu.dailyreport.algorithm.Time;
import heu.dailyreport.algorithm.WordList;
import heu.dailyreport.pojo.DailyReportTime;
import heu.dailyreport.pojo.DailyReportWork;
import heu.dailyreport.service.CountWorkByDateService;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class CountWorkByDateController {
	/**
	 * 根据前端输入的开始时间和结束时间
	 * 对数据库中的DailyReport表通过调用DailyReportService中的findWorkByDate和findExWorkByDate方法
	 * 将从数据库中得到的数据传递到前端显示在网页上 
	 * 
	 */
	/**
	 * 工作量统计
	 * @author 徐鲲鹏
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
	@Autowired
    
	CountWorkByDateService countWorkByDateService;
	@RequestMapping("/findWorkByDate_GroupLeader")
	public ModelAndView CountWeekByDate_GroupLeader(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String start =  request.getParameter("startTime");
		String end   =  request.getParameter("endTime");//接收网页中的数据
		Time t = new Time();
		WordList wl = new WordList();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date now = t.getNow();
        /**
         * 对日期为空的情况进行判断
         */
		System.out.println(end);       		
		if(start ==""&& end =="") 
		{
		  start = sdf.format(now);
		  end = start;
		}
		else if(start==""&&end!=""){
			start = end;
		}
		else if(start!=""&&end==""){
			end =start;
		}
		System.out.println(end);
		Date startTime =  sdf.parse(start);
		Date endTime   = sdf.parse(end);//String转化为Date类型
		System.out.println(startTime);
		if(startTime.getTime() > endTime.getTime()){
			startTime = sdf.parse(end);
			endTime = sdf.parse(start);
		}
		System.out.println(startTime);
		System.out.println(end);
		DailyReportTime time = new DailyReportTime();
		time.setStartTime(startTime);
		time.setEndTime(endTime);
		List<DailyReportWork> DRWork = new ArrayList<DailyReportWork>();
		List<Double> Work = new ArrayList<Double>();
		List<Double> ExWork = new ArrayList<Double>();
		double sumWork = 0;
		double sumExWork = 0;
		double sumTotalWork = 0;
		String str = wl.getF();
		/**
		 * 调用CountWorkByDateService中的方法
		 */
		Work   = countWorkByDateService.findWorkByDate(time);
		ExWork = countWorkByDateService.findExWorkByDate(time);
		DRWork     = countWorkByDateService.findIdByDate(time);
		/**
		 * 对返回值进行编辑处理
		 */
		for(int i = 0 ;i < Work.size() ; i++)
		{
			DailyReportWork w = new DailyReportWork();
			double exwork = ExWork.get(i);
			double work   = Work.get(i);
			String s1 = String.format("%.1f", exwork);
			String s2 = String.format("%1f", work);
			   exwork = Double.valueOf(s1);
			     work = Double.valueOf(s2);
			DRWork.get(i).setWork(work);
			DRWork.get(i).setExWork(exwork);
			DRWork.get(i).setTotalWork(work+exwork);
			DRWork.get(i).setStartTime(startTime);
			DRWork.get(i).setEndTime(endTime);
			sumWork += work;
			sumExWork += exwork;
		}
  
		System.out.println(endTime);
		sumTotalWork = sumWork + sumExWork;
		
		
		//返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		
		//将数据传递到前端
		modelAndView.addObject("DRWorkList", DRWork);
		modelAndView.addObject("sum1", sumWork);
		modelAndView.addObject("sum2", sumExWork);
		modelAndView.addObject("sum3", sumTotalWork);                   
		modelAndView.addObject("str",str);
		//指定视图
		modelAndView.setViewName("/CountWorkByDate_GroupLeader");
		
		return modelAndView;
	}
	
	@RequestMapping("/findWorkByDate_Manager")
	public ModelAndView CountWeekByDate_Manager(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String start =  request.getParameter("startTime");
		String end   =  request.getParameter("endTime");//接收网页中的数据
		Time t = new Time();
		WordList wl = new WordList();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date now = t.getNow();
        /**
         * 对日期为空的情况进行判断
         */
		System.out.println(end);       		
		if(start ==""&& end =="") 
		{
		  start = sdf.format(now);
		  end = start;
		}
		else if(start==""&&end!=""){
			start = end;
		}
		else if(start!=""&&end==""){
			end =start;
		}
		System.out.println(end);
		Date startTime =  sdf.parse(start);
		Date endTime   = sdf.parse(end);//String转化为Date类型
		System.out.println(startTime);
		if(startTime.getTime() > endTime.getTime()){
			startTime = sdf.parse(end);
			endTime = sdf.parse(start);
		}
		System.out.println(startTime);
		System.out.println(end);
		DailyReportTime time = new DailyReportTime();
		time.setStartTime(startTime);
		time.setEndTime(endTime);
		List<DailyReportWork> DRWork = new ArrayList<DailyReportWork>();
		List<Double> Work = new ArrayList<Double>();
		List<Double> ExWork = new ArrayList<Double>();
		double sumWork = 0;
		double sumExWork = 0;
		double sumTotalWork = 0;
		String str = wl.getF();
		/**
		 * 调用CountWorkByDateService中的方法
		 */
		Work   = countWorkByDateService.findWorkByDate(time);
		ExWork = countWorkByDateService.findExWorkByDate(time);
		DRWork     = countWorkByDateService.findIdByDate(time);
		/**
		 * 对返回值进行编辑处理
		 */
		//System.out.println(DRWork.get(10).getWork()+" ");
		for(int i = 0 ;i < Work.size() ; i++)
		{
			DailyReportWork w = new DailyReportWork();
			double exwork = ExWork.get(i);
			double work   = Work.get(i);
			String s1 = String.format("%.1f", exwork);
			String s2 = String.format("%1f", work);
			   exwork = Double.valueOf(s1);
			     work = Double.valueOf(s2);
			DRWork.get(i).setWork(work);
			DRWork.get(i).setExWork(exwork);
			DRWork.get(i).setTotalWork(work+exwork);
			DRWork.get(i).setStartTime(startTime);
			DRWork.get(i).setEndTime(endTime);
			sumWork += work;
			sumExWork += exwork;
			//System.out.println(DRWork.get(i).getWork()+" "+i);
		}
  
		
		sumTotalWork = sumWork + sumExWork;
		
		
		//返回ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		
		//将数据传递到前端
		modelAndView.addObject("DRWorkList", DRWork);
		modelAndView.addObject("sum1", sumWork);
		modelAndView.addObject("sum2", sumExWork);
		modelAndView.addObject("sum3", sumTotalWork);
		modelAndView.addObject("str",str);
		//指定视图
		modelAndView.setViewName("/CountWorkByDate_Manager");
		
		return modelAndView;
	}
}
