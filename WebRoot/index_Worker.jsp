<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>首页</title>
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
    <link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css" />
    <link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />
    <link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico" />
<style>


	.move{

		width:246px;

		height:246px;

	}

	.move:hover{

		position:relative;

		top:-10px;

		left:-10px;

		box-shadow: 5px 5px 3px #888888;

	}

</style>
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
                <a class="brand" href="index_Worker.jsp">
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
                            <li><a href="${pageContext.request.contextPath }/insertDailyReport_Worker.action?userId=${userId }"><i class="icon-envelope"></i> 新建日报</a></li>
                            <li><a href="${pageContext.request.contextPath }/updateUserSelf_Worker.jsp"><i class="icon-tasks"></i> 修改个人信息</a></li>
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
    <div class="page-container">
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
                <li class="start active ">
                    <a href="${pageContext.request.contextPath }/index_Worker.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        <span class="selected"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath }/jumpToInsertDailyReportPage_Worker.action?userId=${userId }">
                        <i class="icon-briefcase"></i>
                        <span class="title">新建日报</span>
                    </a>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">个人日报管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToQueryDailyReportSelf_Worker.action?userId=${userId}">

                            	<i class="icon-time"></i> 个人日报查询</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToUpdateDailyReportSelf_Worker.action?userId=${userId}">

								<i class="icon-time"></i> 个人日报修改</a>
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
                            <a href="${pageContext.request.contextPath }/updateUserSelf_Worker.jsp">
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
                    <h3>Widget Settings</h3>
                </div>
                <div class="modal-body">
                    Widget settings form goes here
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

							首页 | <small> 日报管理系统</small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="#">首页</a>
                            </li>
                            
                        </ul>
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
                <!-- END PAGE HEADER-->
            </div>
            <!-- END PAGE CONTAINER-->
            
                    <!-- BEGIN DASHBOARD STATS -->
                    
                    <div class="row-fluid">
                        <div class="span3 responsive" data-tablet="span6" data-desktop="span3" style="margin-left:20px">
							<a href="${pageContext.request.contextPath }/jumpToInsertDailyReportPage_Worker.action?userId=${userId }" style="text-decoration:none">
			            		<div class="move">
			            			<img src="media/image/xinjianribao.png" alt="新建日报" width="246" height="246"/>
			            		</div>
			            	</a><br/>
			            	<ul class="breadcrumb" style="margin-right:15px">
			            		<center>新建日报</center>
			            	</ul>
                        </div>
                        <div class="span3 responsive" data-tablet="span6" data-desktop="span3" style="margin-left:20px">
			            	<a href="${pageContext.request.contextPath }/jumpToQueryDailyReportSelf_Worker.action?userId=${userId}" style="text-decoration:none">
			            		<div class="move">
			            			<img src="media/image/gerenribao.png" alt="个人日报查询" width="246" height="246"/>
			            		</div>
			            	</a><br/>
			            	<ul class="breadcrumb" style="margin-right:15px">
			            		<center>个人日报查询</center>
			            	</ul>
                        </div>
                        <div class="span3 responsive" data-tablet="span6" data-desktop="span3" style="margin-left:20px">
			            	<a href="${pageContext.request.contextPath }/jumpToUpdateDailyReportSelf_Worker.action?userId=${userId}" style="text-decoration:none">
			            		<div class="move">
			            			<img src="media/image/xiugairibao.png" alt="修改日报" width="246" height="246"/>
			            		</div>
			            	</a><br/>
			            	<ul class="breadcrumb" style="margin-right:15px">
			            		<center>修改日报</center>
			            	</ul>
                        </div>
                        <div class="span3 responsive" data-tablet="span6" data-desktop="span3" style="margin-left:20px">
			            	<a href="${pageContext.request.contextPath }/updateUserSelf_Worker.jsp" style="text-decoration:none">
			            		<div class="move">
			            			<img src="media/image/xiugaimima.png" alt="修改密码" width="246" height="246"/>
			            		</div>
			            	</a><br/>
			            	<ul class="breadcrumb" style="margin-right:15px">
			            		<center>修改密码</center>
			            	</ul>
                        </div>
                    </div>
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
    <script src="media/js/jquery.vmap.js" type="text/javascript"></script>
    <script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>
    <script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>
    <script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>
    <script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>
    <script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>
    <script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
    <script src="media/js/jquery.flot.js" type="text/javascript"></script>
    <script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>
    <script src="media/js/date.js" type="text/javascript"></script>
    <script src="media/js/daterangepicker.js" type="text/javascript"></script>
    <script src="media/js/jquery.gritter.js" type="text/javascript"></script>
    <script src="media/js/fullcalendar.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
    <script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="media/js/app.js" type="text/javascript"></script>
    <script src="media/js/index.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
    jQuery(document).ready(function() {

        App.init(); // initlayout and core plugins

        Index.init();

        Index.initJQVMAP(); // init index page's custom scripts

        Index.initCalendar(); // init index page's custom scripts

        Index.initCharts(); // init index page's custom scripts

        Index.initChat();

        Index.initMiniCharts();

        Index.initDashboardDaterange();

        Index.initIntro();

    });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
