<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>修改部门</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="media/css/select2_metro.css" />
    <link rel="stylesheet" href="media/css/DT_bootstrap.css" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->

<body class="page-header-fixed">
    <!-- BEGIN HEADER -->
    <div class="header navbar navbar-inverse navbar-fixed-top">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="navbar-inner">
            <div class="container-fluid">
                <!-- BEGIN LOGO -->
                <a class="brand" href="${pageContext.request.contextPath }/index_Admin.jsp">
                    <img src="media/image/logo1.png" alt="logo" width="124" height="31"/>
                </a>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                    <img src="media/image/menu-toggler.png" alt="" />
                </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN TOP NAVIGATION MENU -->
                <ul class="nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN INBOX DROPDOWN -->
                    <!-- END INBOX DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->
                    <!-- END TODO DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img alt="" src="media/image/avatar1_small.jpg" />
                            <span class="username">${userName}&nbsp;(${userRole})</span>
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="icon-user"></i> 员工ID:${userId }</a></li>
                            <li><a href="${pageContext.request.contextPath }/updateUserSelf_Admin.jsp"><i class="icon-tasks"></i> 修改个人信息</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="icon-key"></i> 退出登录</a></li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
                <!-- END TOP NAVIGATION MENU -->
            </div>
        </div>
        <!-- END TOP NAVIGATION BAR -->
    </div>
    <!-- END HEADER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container row-fluid">
        <!-- BEGIN SIDEBAR -->
              <div class="page-sidebar nav-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu">
                <li>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler hidden-phone"></div>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                </li>
                <br/>
                <li>
                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath }/index_Admin.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        
                    </a>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">人事信息管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/insertUser_Admin.jsp">

							<i class="icon-time"></i> 新员工信息录入</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/queryUser_Admin.jsp">

							<i class="icon-time"></i> 员工信息查询</a>
                        </li>
                    </ul>
                </li>
                
                <li class="start active ">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">部门管理</span>
                        <span class="arrow "></span>
                        <span class="selected"></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/adddepartment1_Admin.action">
                                <i class="icon-time"></i> 添加部门
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/finddepartment_Admin.action">
                                <i class="icon-time"></i> 查看部门
                            </a>
                        </li>
                    </ul>
                </li>
                
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">项目管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/addproject1_Admin.action">
                                <i class="icon-time"></i> 新建项目
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/findproject_Admin.action">
                                <i class="icon-time"></i> 查询项目
                            </a>
                        </li>
                    </ul>
                </li>
                
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">个人中心</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/updateUserSelf_Admin.jsp">
                                <i class="icon-time"></i> 修改个人信息
                            </a>
                        </li>
                        <li>
                            <a href="login.html">
                                <i class="icon-time"></i> 退出登录
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN PAGE -->
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div id="portlet-config" class="modal hide">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button"></button>
                    <h3>portlet Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here will be a configuration form</p>
                </div>
            </div>
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN PAGE CONTAINER-->
            <div class="container-fluid">
                <!-- BEGIN PAGE HEADER-->
                <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN STYLE CUSTOMIZER -->
                        <div class="color-panel hidden-phone">
                            <div class="color-mode-icons icon-color"></div>
                            <div class="color-mode-icons icon-color-close"></div>
                            <div class="color-mode">
                                <p>THEME COLOR</p>
                                <ul class="inline">
                                    <li class="color-black current color-default" data-style="default"></li>
                                    <li class="color-blue" data-style="blue"></li>
                                    <li class="color-brown" data-style="brown"></li>
                                    <li class="color-purple" data-style="purple"></li>
                                    <li class="color-grey" data-style="grey"></li>
                                    <li class="color-white color-light" data-style="light"></li>
                                </ul>
                                <label>
                                    <span>Layout</span>
                                    <select class="layout-option m-wrap small">
                                        <option value="fluid" selected>Fluid</option>
                                        <option value="boxed">Boxed</option>
                                    </select>
                                </label>
                                <label>
                                    <span>Header</span>
                                    <select class="header-option m-wrap small">
                                        <option value="fixed" selected>Fixed</option>
                                        <option value="default">Default</option>
                                    </select>
                                </label>
                                <label>
                                    <span>Sidebar</span>
                                    <select class="sidebar-option m-wrap small">
                                        <option value="fixed">Fixed</option>
                                        <option value="default" selected>Default</option>
                                    </select>
                                </label>
                                <label>
                                    <span>Footer</span>
                                    <select class="footer-option m-wrap small">
                                        <option value="fixed">Fixed</option>
                                        <option value="default" selected>Default</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <!-- END BEGIN STYLE CUSTOMIZER -->
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <h3 class="page-title">

							修改部门 | <small> 日报管理系统</small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="${pageContext.request.contextPath }/index_Admin.jsp">首页</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">部门管理</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li><a href="#">修改部门</a></li>
                        </ul>
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->
                <div class="row-fluid">
                    <div class="span12">
                        <div class="portlet box blue">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-reorder"></i>修改信息</div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"></a>
                                   
                                    <a href="javascript:;" class="reload"></a>
                                    <a href="javascript:;" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body form">
                            
                            
                                <!-- BEGIN FORM-->
                                <form action="updatedepartment_Admin" class="horizontal-form" method="post">
                                	 <input type="hidden" id="deptId" name="deptId" class="m-wrap span12" value="${d.deptId}">
                                	
                                    <div class="row-fluid">
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">部门名称</label>
                                                <div class="controls">
                                                    <input type="text" id="deptName" name="deptName" class="m-wrap span12" value="${d.deptName}">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    
                                    <!--/row-->
                                    <div class="row-fluid">
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">部门负责人编号</label>
                                                <div class="controls">
                                                    <select class="m-wrap span12" name="deptManager">
                                                    	<c:forEach items="${list}" var="item">
                                                    		<option value="${item.userId}">${item.userId} ${item.userName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/row-->
                                    
                                    <div class="form-actions">
                                        <button type="submit" class="btn blue pull-right"><i class="icon-ok"></i>提交</button>
                                    </div>
                                </form>
                                <!-- END FORM-->
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
                    </div>
                </div>
                <!-- END PAGE CONTENT-->
            </div>
            <!-- END PAGE CONTAINER-->
        </div>
        <!-- END PAGE -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <div class="footer">
        <div class="footer-inner">
            2017 &copy; HEU - DailyReport
        </div>
        <div class="footer-tools">
            <span class="go-top">

			<i class="icon-angle-up"></i>

			</span>
        </div>
    </div>
    <!-- END FOOTER -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="media/js/bootstrap.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->
    <script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="media/js/select2.min.js"></script>
    <script type="text/javascript" src="media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="media/js/DT_bootstrap.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="media/js/app.js"></script>
    <script src="media/js/table-advanced.js"></script>
    <!-- <script src="media/js/table-editable.js"></script> -->
    <script>
    jQuery(document).ready(function() {

        App.init();

        TableAdvanced.init();
    });
    
    
    $("input").change(
       	    function(){
       	        //设置发送ajax请求的部分参数
       	        var ajaxType="GET";
       	        var url=null;
       	        var data=null;

       	        //获取选中元素的id
       	        var id=$(this).attr("id");

       	        //移除提示信息的元素
       	        $(this).nextAll("span").remove();

       	        //判断选中元素的id
       	        if(id=="deptId"){
       	            //设置发送请求的ajax参数
       	            url="check1";
       	            data={
       	              "deptId":$(this).val()
       	            };

       	            //发送ajax请求
       	            $.ajax({
       	            	type:ajaxType,
       	                url:url,
       	                data:data,
       	                contentType:"application/json;charset=utf-8",
       	                success:function(result){
       	                	//如果当前的是登录
       	                	
       	                	if(result=="1"){
       	               		 	$("#deptId").after("<span class='help-inline' style='color: #ff0000'>请填写ID</span>");
       	               		 	$("#deptId").select();
       	                	}
       	                	else if(result=="2"){
       	               		 	$("#deptId").after("<span class='help-inline' style='color: #ff0000'>请输入两位字符！</span>");
       	               		 	$("#deptId").select();
       	                	}
       	                	else if(result=="3"){
       	               		 	$("#deptId").after("<span class='help-inline' style='color: #ff0000'>ID以存在！</span>");
       	               		 	$("#deptId").select();
       	                	}
       	                }
       	            });


       	        }else if(id=="userName"){
       	            //设置发送请求的ajax参数
       	            url="check1";
       	            data={
       	                "userName":$(this).val()
       	            };

       	            //发送ajax请求
       	            $.ajax({
       	                type:ajaxType,
       	                url:url,
       	                data:data,
       	                contentType:"application/json;charset=utf-8",
       	                success:function(result){
       	                	if(result==1){
       	               		 	$("#userName").after("<span class='help-inline' style='color: #ff0000'>当前用户已经存在！</span>");
       	               		 	$("#userName").select();
       	                	}else{
       	                		$("#userName").after("<span class='help-inline' style='color: #00ff00'>恭喜，用户名可用！</span>");
       	                	}
       	                }
       	            });

       	        }else if(id=="captcha"){
       	            //设置发送请求的ajax参数
       	            url="checkCaptcha";
       	            data={
       	                "captcha":$(this).val()
       	            };

       	            //发送ajax请求
       	            $.ajax({
       	                type:ajaxType,
       	                url:url,
       	                data:data,
       	                contentType:"application/json;charset=utf-8",
       	                success:function(result){
       	                	if(result==1){
       	                		$("#captchaPicture").after("<span class='help-inline' style='color: #00ff00'>验证码正确！</span>");
       	                	}else{
       	                		$("#captchaPicture").after("<span class='help-inline' style='color: #ff0000'>验证码不正确！</span>");
       	                		$("#captcha").select();
       	                	}
       	                }
       	            });

       	        }else if(id=="reUserPwd"){
       	            //如果是重复输入密码，那么检查两次输入是否相同
       	            if($("#userPwd").val()!=$(this).val()){
       	                $(this).after("<span class='help-inline' style='color: #ff0000'>两次输入不相同！</span>");
       	            }
       	        }
        	});
    </script>
</body>
<!-- END BODY -->

</html>
