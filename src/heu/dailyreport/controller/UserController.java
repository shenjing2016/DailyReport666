package heu.dailyreport.controller;

import heu.dailyreport.algorithm.D1;
import heu.dailyreport.algorithm.MD5;
import heu.dailyreport.dao.UserDao;
import heu.dailyreport.pojo.ProjGroup;
import heu.dailyreport.pojo.User;
import heu.dailyreport.pojo.UserCustom;
import heu.dailyreport.service.CaptchaService;
import heu.dailyreport.service.IndexService;
import heu.dailyreport.service.UserLoginService;
import heu.dailyreport.service.UserRegService;
import heu.dailyreport.service.UserService;
import heu.dailyreport.service.impl.CaptchaServiceSingleton;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.scripting.xmltags.TrimSqlNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@Autowired
	private UserLoginService userLoginService;
	@Autowired
	private UserRegService userRegService;
	@Autowired
	private CaptchaService captchaService;
	@Autowired
	private UserService userService;
	@Autowired
	private IndexService indexService;


	@Autowired
	private UserDao userDao;

	private static Boolean isCaptcha;

	public static Boolean getIsCaptcha() {
		return isCaptcha;
	}

	public static void setIsCaptcha(Boolean isCaptcha) {
		UserController.isCaptcha = isCaptcha;
	}

	/**
	 * 跳转到登录页面
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}

	/**
	 * 跳转到注册页面
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/reg")
	public String reg(Model model) {
		return "reg";
	}

	
	@RequestMapping("/jumpToInsertUser")
	public ModelAndView jumpToInsertUser( HttpSession httpSession)
			throws Exception {
		ModelAndView modelAndView = new ModelAndView();

		List<ProjGroup> grpList = new ArrayList<ProjGroup>();
		grpList = userService.findGrpName();
		
		modelAndView.setViewName("insertUser_Admin");
		modelAndView.addObject("grpList" ,grpList);

		return modelAndView;
	}
	
	
	/**
	 * 注册用户
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insertUser")
	public ModelAndView insertUser(String userName, String userPwd, String groupId, String userRole, HttpSession httpSession)
			throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		D1 d = new D1();

		List<ProjGroup> grpList = new ArrayList<ProjGroup>();
		grpList = userService.findGrpName();
		// 创建新的用户
		User user = new User();
		user.setUserName(userName);
		user.setUserPwd(MD5.getMD5(userPwd));
		user.setGroupId(groupId);
		user.setUserRole(Integer.parseInt(userRole));


		user.setUserId(d.f7(indexService.findUserIdByIndex(groupId)));
		
		// UserReg注册用户
		userRegService.reg(user);
		

		// 设置传到前台的信息和视图名称

		// 设置session
		modelAndView.setViewName("redirect:queryUser.jsp");



		return modelAndView;
	}

	/**
	 * 登录用户
	 *
	 * @param email
	 * @param passWord
	 * @param code
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/loginSuccess")
	public ModelAndView loginSuccess(String userId, String userPwd, String captcha, HttpSession httpSession) throws Exception {

		ModelAndView modelAndView = new ModelAndView();
		
		// 如果验证码不正确
		if (!isCaptcha) {
			modelAndView.addObject("info1", "<span class='help-inline' style='color: #ff0000'>验证码不正确！</span>");
			modelAndView.setViewName("login");
			return modelAndView;
		}
		
		// 登录用户，并将登录后的状态码返回，如果是0用户不存在，如果是1那么密码错误，如果是2那么密码正确
		int result = userLoginService.login(userId, userPwd);

		// 查找这个用户
		User user = userDao.findUserById(userId);
		
		

		if (result == 2) {
			// 如果是2，那么登录成功，返回index
			if(user.getUserRole()==1){
				modelAndView.setViewName("redirect:index_Worker.jsp");
				httpSession.setAttribute("userRole", "组员");
			} else if(user.getUserRole()==2){
				modelAndView.setViewName("redirect:index_GroupLeader.jsp");
				httpSession.setAttribute("userRole", "组长");
			} else if(user.getUserRole()==3){
				modelAndView.setViewName("redirect:index_Manager.jsp");
				httpSession.setAttribute("userRole", "项目经理");
			} else if(user.getUserRole()==0){
				modelAndView.setViewName("redirect:index_Admin.jsp");
				httpSession.setAttribute("userRole", "管理员");
			} else if(user.getUserRole()==8 || user.getUserRole()==9){
				modelAndView.setViewName("redirect:login.jsp");
			}

			// 设置session
			httpSession.setAttribute("userName", user.getUserName());
			httpSession.setAttribute("userId", userId);
			httpSession.setAttribute("userId", user.getUserId());
			

		} else if (result == 1) {
			// 如果是1，那么密码错误，返回login
			modelAndView.addObject("info", "<span class='help-inline' style='color: #ff0000'>密码错误！</span>");
			modelAndView.setViewName("login");
		} else {
			// 否则用户名不存在，返回login
			modelAndView.addObject("info", "<span class='help-inline' style='color: #ff0000'>用户不存在！</span>");
			//modelAndView.addObject("info", 0);
			modelAndView.setViewName("login");
		}

		return modelAndView;
	}

	/**
	 * 处理ajax请求，检验用户名和邮箱以及验证码
	 *
	 * @param userName
	 * @param email
	 * @param code
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/check")
	public @ResponseBody int check(String userId) throws Exception {
		if (userId != null) {
			// 如果请求的是userName
			User user = userDao.findUserById(userId);

			// 检查user是否为空，如果为空返回0，如果不为空返回1
			
			if (user == null) {
				return 0;
			} else if(user.getUserRole()==8 || user.getUserRole()==9){
				return 2;
			} else {
				return 1;
			}
		}
		return 0;
	}
	
	@RequestMapping("/checkOldPassword")
	public @ResponseBody int checkOldPassword(String userPwdOld, String userId) throws Exception {
		if (userId != null) {
			// 如果请求的是userName
			User user = userDao.findUserById(userId);

			
			// 检查user是否为空，如果为空返回0，如果不为空返回1
			if (user == null) {
				return 0;
			} else if (user.getUserPwd().equals(MD5.getMD5(userPwdOld))) {
				return 1;
			}
			System.out.println("+++++++++++++++"+user.getUserPwd());
			System.out.println("+++++++++++++++"+MD5.getMD5(userPwdOld));
		}
		return 0;
	}



	/**
	 * 生成验证码
	 *
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/captcha")
	public @ResponseBody void captcha(HttpServletRequest request, HttpServletResponse response) throws IOException {
		captchaService.genernateCaptchaImage(request, response);
		isCaptcha = Boolean.FALSE;
	}

	/**
	 * 检查用户输入的验证码是否正确
	 *
	 * @param captcha
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/checkCaptcha")
	public @ResponseBody int checkCaptcha(String captcha, HttpServletRequest request) throws Exception {
		Boolean isResponseCorrect =  CaptchaServiceSingleton.getInstance().validateResponseForID(request.getSession().getId(), captcha);
		if (isResponseCorrect) {
			isCaptcha = Boolean.TRUE;
			return 1;
		} else {
			isCaptcha = Boolean.FALSE;
			return 0;
		}
	}


	/**
	 * 请求注销用户
	 *
	 * @return
	 */
	@RequestMapping("/loginOff")
	public @ResponseBody int loginOff(HttpServletRequest httpServletRequest) {
		try {
			HttpSession httpSession = httpServletRequest.getSession();
			httpSession.invalidate();
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}

	/**
	 * 随机产生验证码函数
	 *
	 * @return
	 */
	public String getCaptcha() {
		// 验证码的可选字符
		char[] captChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		// 定义随机数变量
		Random r = new Random();
		int len = captChar.length, index;
		StringBuffer captcha = new StringBuffer();
		// 随机产生6位验证码
		for (int i = 0; i < 6; i++) {
			index = r.nextInt(len);
			captcha.append(captChar[index]);
		}
		return captcha.toString();
	}

	
	@RequestMapping("/jumpToQueryUser")
	public ModelAndView jumpToQueryUser( HttpSession httpSession)
			throws Exception {
		ModelAndView modelAndView = new ModelAndView();

		List<UserCustom> userList = new ArrayList<UserCustom>();
		userList = userService.findUserList(null);
		List<ProjGroup> grpList = new ArrayList<ProjGroup>();
		grpList = userService.findGrpName();
		
		modelAndView.setViewName("queryUser_Admin");
		modelAndView.addObject("grpList" ,grpList);
		modelAndView.addObject("userList", userList);

		

		return modelAndView;
	}
	
	
	/**
	 * 查找用户列表
	 *
	 * @return
	 */
	@RequestMapping("/queryUser_Admin")
	public ModelAndView queryUser_Admin(String userId,String userName,String grpName,String userRole, HttpServletRequest httpServletRequest) throws Exception{
		
		UserCustom userCustom = new UserCustom();
		
		userCustom.setUserId(userId);
		userCustom.setUserName(userName);
		userCustom.setGrpName(grpName);
		userCustom.setUserRole(Integer.parseInt(userRole));
		
		
		
		List<UserCustom> userList = new ArrayList<UserCustom>();
		userList = userService.findUserList(userCustom);
		List<ProjGroup> grpList = new ArrayList<ProjGroup>();
		grpList = userService.findGrpName();
		
//		List<User> userRoleList = new ArrayList<User>();
//		userRoleList.add(userRole,"组员");
//		userRoleList.add("组长");
//		userRoleList.add("经理");
//		userRoleList.add("管理员");
		
		
		
		/*User user = new User();
		user = userService.findUserById(userId);*/
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("userList", userList);
		modelAndView.addObject("grpList", grpList);
//		modelAndView.addObject("user1", user);
		//modelAndView.addObject("userRoleList", userRoleList);
		
		modelAndView.setViewName("queryUser_Admin");

		
		return modelAndView;
	}
	
	
	/*@RequestMapping(value="/updateUser" ,method=RequestMethod.GET,method=RequestMethod.POST)
	public ModelAndView updateUser(HttpSession httpSession, HttpServletRequest httpServletRequest, String userId) throws Exception{
		UserCustom userCustom = userService.findUserCustomById(userId);
		
		ModelAndView modelAndView = new ModelAndView();
		
		//httpSession.setAttribute("userCustomId", userCustom.getUserId());
		
		modelAndView.addObject("userCustomId", userCustom.getUserId());
		modelAndView.addObject("userCustomName", userCustom.getUserName());
		modelAndView.setViewName("queryUser");
		
		System.out.println(userCustom.getUserId());
		
		return modelAndView;
		
	}*/
	
	/**
	 * 管理员更改用户信息
	 * @author xunge
	 * @date 2017年2月25日16:51:52
	 * @param userId
	 * @param userName
	 * @param userRole
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateUserSubmit" ,method=RequestMethod.POST)
	public ModelAndView updateUserSubmit(String userRole1, UserCustom userCustom)throws Exception{
		
//		userCustom.setUserId(userId);
//		userCustom.setUserName(userName);
//		userCustom.setGrpName(grpName);
//		userRole=userRole.trim();
//		userCustom.setUserRole(Integer.parseInt(userRole));
		
		
		if(userRole1.equals("组员"))
			userCustom.setUserRole(1);
		else if(userRole1.equals("组长"))
			userCustom.setUserRole(2);
		else if(userRole1.equals("经理"))
			userCustom.setUserRole(3);
		else if(userRole1.equals("管理员"))
			userCustom.setUserRole(0);

		userService.updateUser(userCustom);
		ModelAndView modelAndView = new ModelAndView();
		//modelAndView.addObject("user",user);
		modelAndView.setViewName("queryUser");
		
		return modelAndView;
		
	}
	

	/**
	 * 管理员解雇用户(AJAX)
	 * @author xunge
	 * @date 2017年2月25日14:49:21
	 * @param httpServletRequest
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/fireUser" ,method=RequestMethod.GET/*,method=RequestMethod.POST*/)
	public ModelAndView fireUser(HttpServletRequest httpServletRequest)throws Exception{
		
		String userId=httpServletRequest.getParameter("userId");
		//System.out.println("--------------------"+userId);
		boolean flag =  userService.fireUser(userId);
		
		ModelAndView modelAndView = new ModelAndView();
		//modelAndView.setViewName("queryUser");
		
		return modelAndView;
	}
	
	/**
	 * 用户更改个人密码
	 * @param user
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateUserSelf" ,method=RequestMethod.POST)
	public ModelAndView updateUserSelf(String userPwd1, User user)throws Exception{
		user.setUserPwd(MD5.getMD5(userPwd1));
		userService.updateUserSelf(user);
		ModelAndView modelAndView = new ModelAndView();
		
		//modelAndView.setViewName("queryUser");
		//                                                                    modelAndView.setViewName("redirect:login.html");
		return modelAndView;
		
	}
	
	
}
