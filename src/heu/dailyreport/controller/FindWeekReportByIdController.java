package heu.dailyreport.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import heu.dailyreport.algorithm.CalDate;
import heu.dailyreport.algorithm.D1;
import heu.dailyreport.algorithm.Time;
import heu.dailyreport.algorithm.Transform;
import heu.dailyreport.pojo.DailyReportUser;
import heu.dailyreport.pojo.WeekReport;
import heu.dailyreport.service.FindWeekReportByIdService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class FindWeekReportByIdController {

	@Autowired
	/**
	 * =周报导出
	 * @author 徐鲲鹏
	 * @param dailyReportProject
	 * @return modelAndView
	 * @throws Exception
	 */
	FindWeekReportByIdService findWeekReportByIdService;
	
	@RequestMapping("/findWeekReportById_GroupLeader")
	
	public ModelAndView FindWeekReportById_GroupLeader(HttpServletRequest request) throws Exception{
		/**
		 * 对前端传递得到的数据进行处理
		 * 并进行相应的计算
		 */
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String date = request.getParameter("startTime");
		Transform t = new Transform();
		CalDate cd = new CalDate();//定义工具类
		D1 d = new D1();
		Time n = new Time();
		CalDate c = new CalDate();
		Date now = n.getNow();
		//对时间类型变量进行编辑，转化和处理
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date startTime = new Date();
		Date endTime = new Date();
		if(date==""){
			endTime = t.StringToDate(sdf.format(now));
		    startTime = c.DateSub(endTime, 7);
		    System.out.println(endTime);
        }else {
        	startTime = t.StringToDate(date);//进行String和Date的转换
    		endTime = cd.DateAdd(startTime, 7);//对开始时间进行加操作得到结束时间
        }
		
		
		
	
		
        System.out.println("sada"+sdf.format(endTime));
		
        
        
        /**
		 * 输入值进行赋值操作
		 */
		WeekReport wr = new WeekReport();
		wr.setEndTime(endTime);
		wr.setStartTime(startTime);
		wr.setUserId(userId);
		wr.setUserName(userName);
	    
		/**
		 * 定义接收输出值的变量
		 */
		List<Double> Work = new ArrayList<Double>();
		List<Double> ExWork = new ArrayList<Double>();
		List<Double> TotalWork = new ArrayList<Double>();
		List<WeekReport> dru = new ArrayList<WeekReport>();
		Work = findWeekReportByIdService.CountWeekWorkReportById(wr);
		ExWork = findWeekReportByIdService.CountWeekExWorkReportById(wr);
		dru  = findWeekReportByIdService.FindWeekReportById(wr);
		
		for(int i = 0; i < dru.size() ; i++)
		{
			dru.get(i).setWork(d.reset(Work.get(i)));
			dru.get(i).setExWork(d.reset(ExWork.get(i)));
			dru.get(i).setTotalWork(d.reset(Work.get(i)+ExWork.get(i)));
			dru.get(i).setStartTime(startTime);
		    dru.get(i).setEndTime(endTime);
		}
		/**
		 * 返回ModelAndView
		 */
		ModelAndView modelAndView = new ModelAndView();
		
		/**
		 * 将数据传递到前端
		 */
		modelAndView.addObject("dru",dru);
		
		modelAndView.setViewName("/findWeekReportById_GroupLeader");
		return modelAndView;
	}
	
	
	@RequestMapping("/findWeekReportById_Manager")
	public ModelAndView FindWeekReportById_Manager(HttpServletRequest request) throws Exception{
		/**
		 * 对前端传递得到的数据进行处理
		 * 并进行相应的计算
		 */
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String date = request.getParameter("startTime");
		Transform t = new Transform();
		CalDate cd = new CalDate();//定义工具类
		D1 d = new D1();
		Time n = new Time();
		CalDate c = new CalDate();
		Date now = n.getNow();
		//对时间类型变量进行编辑，转化和处理
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date startTime = new Date();
		Date endTime = new Date();
		if(date==""){
			endTime = t.StringToDate(sdf.format(now));
		    startTime = c.DateSub(endTime, 7);
		    System.out.println(endTime);
        }else {
        	startTime = t.StringToDate(date);//进行String和Date的转换
    		endTime = cd.DateAdd(startTime, 7);//对开始时间进行加操作得到结束时间
        }
		
		
		
	
		
        System.out.println("sada"+sdf.format(endTime));
		
        
        
        /**
		 * 输入值进行赋值操作
		 */
		WeekReport wr = new WeekReport();
		wr.setEndTime(endTime);
		wr.setStartTime(startTime);
		wr.setUserId(userId);
		wr.setUserName(userName);
	    
		/**
		 * 定义接收输出值的变量
		 */
		List<Double> Work = new ArrayList<Double>();
		List<Double> ExWork = new ArrayList<Double>();
		List<Double> TotalWork = new ArrayList<Double>();
		List<WeekReport> dru = new ArrayList<WeekReport>();
		Work = findWeekReportByIdService.CountWeekWorkReportById(wr);
		ExWork = findWeekReportByIdService.CountWeekExWorkReportById(wr);
		dru  = findWeekReportByIdService.FindWeekReportById(wr);
		
		for(int i = 0; i < dru.size() ; i++)
		{
			dru.get(i).setWork(d.reset(Work.get(i)));
			dru.get(i).setExWork(d.reset(ExWork.get(i)));
			dru.get(i).setTotalWork(d.reset(Work.get(i)+ExWork.get(i)));
			dru.get(i).setStartTime(startTime);
		    dru.get(i).setEndTime(endTime);
		}
		/**
		 * 返回ModelAndView
		 */
		ModelAndView modelAndView = new ModelAndView();
		
		/**
		 * 将数据传递到前端
		 */
		modelAndView.addObject("dru",dru);
		
		modelAndView.setViewName("/findWeekReportById_Manager");
		return modelAndView;
	}
}
