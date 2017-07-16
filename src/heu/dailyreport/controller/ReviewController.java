package heu.dailyreport.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import heu.dailyreport.pojo.Custom1;
import heu.dailyreport.service.ReviewService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	@RequestMapping("/review_GroupLeader")
	public ModelAndView ReviewGroupLeader(Model model,HttpServletRequest request) throws Exception{
		
		
		List<String> u = reviewService.findUser();
		List<Custom1> c=reviewService.findAllDailyReportReview();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c);
		modelAndView.setViewName("queryDRInfo_GroupLeader");
		return modelAndView;
	}
	
	@RequestMapping("/review_Manager")
	public ModelAndView ReviewManager(Model model,HttpServletRequest request) throws Exception{
		
		
		List<String> u = reviewService.findUser();
		List<Custom1> c=reviewService.findAllDailyReportReview();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c);
		modelAndView.setViewName("queryDRInfo_Manager");
		return modelAndView;
	}
	
	@RequestMapping("/reviewquery_GroupLeader")
	public ModelAndView ReviewqueryGroupLeader(String ssTime,String seTime,Custom1 custom) throws Exception{
		
		//String username=request.getParameter("userName");
		//String drstatus=request.getParameter("drStatus");
		//String stime=request.getParameter("sTime");
		//String etime=request.getParameter("eTime");
		
		Date date1=null;
		Date date2=null;
		if(ssTime!=""&&seTime!=""){
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			
			
			date1=format.parse(ssTime);
			date2=format.parse(seTime);
			System.out.println(date1);
		}
		
		Custom1 c1=new Custom1();
		c1.setUserName(custom.getUserName());
		c1.setDrStatus(custom.getDrStatus());
		c1.setsTime(date1);
		c1.seteTime(date2);
		
		List<Custom1> c2=reviewService.findDailyReportReview(c1);
		
		List<String> u = reviewService.findUser();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c2);
		
		
		
		
		
		modelAndView.setViewName("queryDRInfo_GroupLeader");
		return modelAndView;
		
		
	}
	
	@RequestMapping("/reviewquery_Manager")
	public ModelAndView ReviewqueryManager(String ssTime,String seTime,Custom1 custom) throws Exception{
		
		//String username=request.getParameter("userName");
		//String drstatus=request.getParameter("drStatus");
		//String stime=request.getParameter("sTime");
		//String etime=request.getParameter("eTime");
		
		Date date1=null;
		Date date2=null;
		if(ssTime!=""&&seTime!=""){
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			
			
			date1=format.parse(ssTime);
			date2=format.parse(seTime);
			System.out.println(date1);
		}
		
		Custom1 c1=new Custom1();
		c1.setUserName(custom.getUserName());
		c1.setDrStatus(custom.getDrStatus());
		c1.setsTime(date1);
		c1.seteTime(date2);
		
		List<Custom1> c2=reviewService.findDailyReportReview(c1);
		
		List<String> u = reviewService.findUser();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c2);
		
		
		
		
		
		modelAndView.setViewName("queryDRInfo_Manager");
		return modelAndView;
		
		
	}

	
	@RequestMapping("/alterquery_GroupLeader")
	public ModelAndView AlterqueryGroupLeader(String drId) throws Exception{
		
		//SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		//Date date=format.parse(drTime);
		
	
		
		Custom1 c=reviewService.findDailyReportAlter(drId);
		
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("custom", c);
		modelAndView.setViewName("alter_GroupLeader");
		return modelAndView;
		
	}
	
	@RequestMapping("/alterquery_Manager")
	public ModelAndView AlterqueryManager(String drId) throws Exception{
		
		//SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		//Date date=format.parse(drTime);
		
	
		
		Custom1 c=reviewService.findDailyReportAlter(drId);
		
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("custom", c);
		modelAndView.setViewName("alter_Manager");
		return modelAndView;
		
	}
	@RequestMapping("/alter_GroupLeader")
	public ModelAndView AlterGroupLeader(Custom1 custom) throws Exception{
		
		Custom1 c1=new Custom1();
		c1.setDrId(custom.getDrId());
		c1.setDrText(custom.getDrText());
		c1.setDrStatus(custom.getDrStatus());
		
		reviewService.alterDailyReport(c1);
		List<String> u = reviewService.findUser();
		List<Custom1> c2=reviewService.findAllDailyReportReview();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c2);
		modelAndView.setViewName("queryDRInfo_GroupLeader");
		return modelAndView;
		
	}
	
	@RequestMapping("/alter_Manager")
	public ModelAndView AlterManager(Custom1 custom) throws Exception{
		
		Custom1 c1=new Custom1();
		c1.setDrId(custom.getDrId());
		c1.setDrText(custom.getDrText());
		c1.setDrStatus(custom.getDrStatus());
		
		reviewService.alterDailyReport(c1);
		List<String> u = reviewService.findUser();
		List<Custom1> c2=reviewService.findAllDailyReportReview();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c2);
		modelAndView.setViewName("queryDRInfo_Manager");
		return modelAndView;
		
	}
	@RequestMapping("/checkdr_GroupLeader")
	public ModelAndView CheckGroupLeader(String[] drIds,int drStatus) throws Exception{
		
		Custom1 c1=new Custom1();
		c1.setDrStatus(drStatus);
		for(String drId:drIds){
			c1.setDrId(drId);
			reviewService.checkDailyReport(c1);
		}
		List<String> u = reviewService.findUser();
		List<Custom1> c2=reviewService.findAllDailyReportReview();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c2);
		modelAndView.setViewName("queryDRInfo_GroupLeader");
		return modelAndView;

	}
	
	@RequestMapping("/checkdr_Manager")
	public ModelAndView CheckdrManager(String[] drIds,int drStatus) throws Exception{
		
		Custom1 c1=new Custom1();
		c1.setDrStatus(drStatus);
		for(String drId:drIds){
			c1.setDrId(drId);
			reviewService.checkDailyReport(c1);
		}
		List<String> u = reviewService.findUser();
		List<Custom1> c2=reviewService.findAllDailyReportReview();
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("username", u);
		modelAndView.addObject("custom", c2);
		modelAndView.setViewName("queryDRInfo_Manager");
		return modelAndView;

	}
}
