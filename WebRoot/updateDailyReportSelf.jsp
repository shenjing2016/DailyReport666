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
    <title>个人日报管理</title>
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

    <link rel="stylesheet" type="text/css" href="media/css/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="media/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="media/css/chosen.css" />
    <link rel="stylesheet" type="text/css" href="media/css/select2_metro.css" />
    <link rel="stylesheet" type="text/css" href="media/css/jquery.tagsinput.css" />
    <link rel="stylesheet" type="text/css" href="media/css/clockface.css" />
    <link rel="stylesheet" type="text/css" href="media/css/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="media/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="media/css/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="media/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="media/css/bootstrap-toggle-buttons.css" />
    <link rel="stylesheet" type="text/css" href="media/css/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="media/css/datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="media/css/multi-select-metro.css" />
    <link href="media/css/bootstrap-modal.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico" />
    <style type="text/css">
        
        a.name{
            width: 400px;
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
            display: block;
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
                <a class="brand" href="index.html">
                    <img src="media/image/logo.png" alt="logo" />
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
                    <li class="dropdown" id="header_notification_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-warning-sign"></i>
                            <span class="badge">6</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <li>
                                <p>You have 14 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon-plus"></i></span> New user registered.
                                    <span class="time">Just now</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-important"><i class="icon-bolt"></i></span> Server #12 overloaded.
                                    <span class="time">15 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon-bell"></i></span> Server #2 not respoding.
                                    <span class="time">22 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-info"><i class="icon-bullhorn"></i></span> Application error.
                                    <span class="time">40 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-important"><i class="icon-bolt"></i></span> Database overloaded 68%.
                                    <span class="time">2 hrs</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-important"><i class="icon-bolt"></i></span> 2 user IP blocked.
                                    <span class="time">5 hrs</span>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See all notifications <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN INBOX DROPDOWN -->
                    <li class="dropdown" id="header_inbox_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-envelope"></i>
                            <span class="badge">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <li>
                                <p>You have 12 new messages</p>
                            </li>
                            <li>
                                <a href="inbox.html?a=view">
                                    <span class="photo"><img src="media/image/avatar2.jpg" alt="" /></span>
                                    <span class="subject">

								<span class="from">Lisa Wong</span>
                                    <span class="time">Just Now</span>
                                    </span>
                                    <span class="message">

								Vivamus sed auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>
                                </a>
                            </li>
                            <li>
                                <a href="inbox.html?a=view">
                                    <span class="photo"><img src="media/image/avatar3.jpg" alt="" /></span>
                                    <span class="subject">

								<span class="from">Richard Doe</span>
                                    <span class="time">16 mins</span>
                                    </span>
                                    <span class="message">

								Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>
                                </a>
                            </li>
                            <li>
                                <a href="inbox.html?a=view">
                                    <span class="photo"><img src="media/image/avatar1.jpg" alt="" /></span>
                                    <span class="subject">

								<span class="from">Bob Nilson</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">

								Vivamus sed nibh auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>
                                </a>
                            </li>
                            <li class="external">
                                <a href="inbox.html">See all messages <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <!-- END INBOX DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->
                    <li class="dropdown" id="header_task_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-tasks"></i>
                            <span class="badge">5</span>
                        </a>
                        <ul class="dropdown-menu extended tasks">
                            <li>
                                <p>You have 12 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="task">

								<span class="desc">New release v1.2</span>
                                    <span class="percent">30%</span>
                                    </span>
                                    <span class="progress progress-success ">

								<span style="width: 30%;" class="bar"></span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="task">

								<span class="desc">Application deployment</span>
                                    <span class="percent">65%</span>
                                    </span>
                                    <span class="progress progress-danger progress-striped active">

								<span style="width: 65%;" class="bar"></span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="task">

								<span class="desc">Mobile app release</span>
                                    <span class="percent">98%</span>
                                    </span>
                                    <span class="progress progress-success">

								<span style="width: 98%;" class="bar"></span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="task">

								<span class="desc">Database migration</span>
                                    <span class="percent">10%</span>
                                    </span>
                                    <span class="progress progress-warning progress-striped">

								<span style="width: 10%;" class="bar"></span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="task">

								<span class="desc">Web server upgrade</span>
                                    <span class="percent">58%</span>
                                    </span>
                                    <span class="progress progress-info">

								<span style="width: 58%;" class="bar"></span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="task">

								<span class="desc">Mobile development</span>
                                    <span class="percent">85%</span>
                                    </span>
                                    <span class="progress progress-success">

								<span style="width: 85%;" class="bar"></span>
                                    </span>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See all tasks <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <!-- END TODO DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img alt="" src="media/image/avatar1_small.jpg" />
                            <span class="username">${userName}&nbsp;(${userRole})</span>
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>
                            <li><a href="page_calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
                            <li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>
                            <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
                            <li class="divider"></li>
                            <li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a></li>
                            <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
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
                <li>
                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                    <form class="sidebar-search">
                        <div class="input-box">
                            <a href="javascript:;" class="remove"></a>
                            <input type="text" placeholder="Search..." />
                            <input type="button" class="submit" value=" " />
                        </div>
                    </form>
                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                </li>
                <li class="start active ">
                    <a href="${pageContext.request.contextPath }/index.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        <span class="selected"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath }/insertDailyReport.jsp">
                        <i class="icon-cogs"></i>
                        <span class="title">新建日报</span>
                    </a>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-bookmark-empty"></i>
                        <span class="title">个人日报管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/queryDailyReport.jsp">

                            个人日报查询</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/findWeekReportById.jsp">

                            个人周报导出</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/queryDailyReport.jsp">

							个人日报修改</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-table"></i>
                        <span class="title">日报审核</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/review.action">

							日报审核</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/review.action">

							日报批量审核</a>
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
                            <a href="${pageContext.request.contextPath }/addproject1.action">
                                <i class="icon-time"></i> 新建项目
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/findproject.action">
                                <i class="icon-time"></i> 查询项目
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-cogs"></i> 修改项目进度</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">部门管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/adddepartment1.action">
                                <i class="icon-time"></i> 添加部门
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/finddepartment.action">
                                <i class="icon-time"></i> 查看部门
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-gift"></i>
                        <span class="title">人事信息管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/insertUser.jsp">

							新员工信息录入</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/queryUser.jsp">

							员工信息查询</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-gift"></i>
                        <span class="title">日报统计分析</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/queryDailyReport.jsp">

                            日报查询</a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-globe"></i> 工作时间统计
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.request.contextPath }/CountWorkByDate.jsp">按日期段统计</a></li>
                                <li><a href="${pageContext.request.contextPath }/CountWorkByProjId.jsp">按项目统计</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/findWeekReportById.jsp">
                            职员周报导出</a>
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

							个人日报查询 <small></small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index.jsp">首页</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="">个人日报管理</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li><a href="">个人日报查询</a></li>
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
                                <div class="caption"><i class="icon-reorder"></i>查询条件</div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="javascript:;" class="reload"></a>
                                    <a href="javascript:;" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <!-- BEGIN FORM-->
                                <form action="updateDailyReportSelf" class="horizontal-form" method="post">
                                    <div class="row-fluid">
                                        <div class="span3 ">
					                        <div class="control-group">
    					                        <label class="control-label">查询起始日期</label>
    					                        <div class="input-append date date-picker" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-viewmode="years">
    				                            	<input id="drTimeStart1" name="drTimeStart" class="m-wrap m-ctrl-medium date-picker" readonly size="10" type="text" value="" style="height:20px;"/><span class="add-on"><i class="icon-calendar"></i></span>
    				                          	</div>
					                        </div>
					                    </div>
                                        <!--/span-->
                                        <div class="span3 ">
                                            <div class="control-group">
                                                <label class="control-label">查询结束日期</label>
                                                <div class="input-append date date-picker" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-viewmode="years">
                                                    <input id="drTimeEnd1" name="drTimeEnd" class="m-wrap m-ctrl-medium date-picker" readonly size="10" type="text" value="" style="height:20px;"/><span class="add-on"><i class="icon-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">任务</label>
                                                <div class="controls">
                                                    <input id="drText1" type="text" name="drText" class="m-wrap span12" placeholder="请输入要查询的任务"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/row-->
                                    <div class="row-fluid">
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">项目</label>
                                                <div class="controls">
                                                    <select id="projName1" class="m-wrap span12" name="projName">
                                                    	<option value=""></option>
                                                    	<c:forEach items="${proList}" var="p">
                                                    		<option value="${p.projName}">${p.projName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">审核状态</label>
                                                <div class="controls">
                                                    <select id="drStatus1" class="m-wrap span12" name="drStatus">
                                                    	<option value="-1"></option>
                                                        <option value="3">未审核</option>
                                                        <option value="2">未通过</option>
                                                        <option value="1">通过</option>
                                                    </select>
                                                    <input id="userId" type="hidden" name="userId" value="${userId}" class="m-wrap span12" />
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    
                                    
                                 
                                    
                                    <div class="form-actions">
                                        <button id="submit3" type="submit" class="btn blue pull-right"><i class="icon-ok"></i>查询</button>
                                    </div>
                                </form>
                                <!-- END FORM-->
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box blue">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-globe"></i>查询结果</div>
                                <div class="actions">
                                    <div class="btn-group">
                                        <a class="btn" href="#sample_2_column_toggler" data-toggle="dropdown">

										Columns

										<i class="icon-angle-down"></i>

										</a>
                                        <div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
                                            <label>
                                                <input type="checkbox" checked data-column="0">Rendering engine</label>
                                            <label>
                                                <input type="checkbox" checked data-column="1">Browser</label>
                                            <label>
                                                <input type="checkbox" checked data-column="2">Platform(s)</label>
                                            <label>
                                                <input type="checkbox" checked data-column="3">Engine version</label>
                                            <label>
                                                <input type="checkbox" checked data-column="4">CSS grade</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
                                    <thead>
                                        <tr>
                                            <th>日期</th>
                                            <th>项目</th> 
                                            <th>工作量</th>
                                            <th>加班</th>
                                            <th width="400px">任务</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${dailyReportList}" var="d">
	                                        <tr>
                                                
	                                            <td><fmt:formatDate value="${d.drTime}" pattern="yyyy-MM-dd"/></td>
	                                            <td>${d.projName}</td> 
	                                            <td>${d.drWork}</td>
	                                            <td>${d.drExWork}</td>
	                                            <td><a id="drText2" href="#form_modal4" data-toggle="modal" class="name">${d.drText}</a></td>
	                                            <td><c:choose><c:when test="${d.drStatus==1}"><span class="label label-success">通过</span></c:when><c:when test="${d.drStatus==2}"><span class="label label-warning">不通过</span></c:when><c:otherwise><span class="label label-info">未审核</span></c:otherwise></c:choose></td>
                                                
                                                
	                                            <td><a href="#form_modal3" data-toggle="modal" class="btn mini yellow update"><i class="icon-edit"></i> 修改</a><input type="hidden" name="drId" id="drId4" value="${d.drId}"></td>

	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
                        
                        <div id="form_modal3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                            <form action="updateDailyReport" class="form-horizontal" name="updateDailyReportForm" >
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                    <h3 id="myModalLabel3">更改日报信息</h3>
                                </div>
                                <div class="modal-body">

                                    <div class="control-group">
                                        <label class="control-label">日期</label>
                                        <div class="controls">
                                            <input type="date" id="drTime" class="m-wrap " name="drTimeStart1"/>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">项目</label>
                                        <div class="controls">
                                            <input type="text" id="projName" class=" m-wrap" name="projName"/>
                                        </div>
                                    </div>
                                    
                                    <!-- <div class="control-group">
                                        <label class="control-label">任务</label>
                                        <div class="controls">
                                            <input type="text" id="drText" class=" m-wrap" name="drText"/>
                                        </div>
                                    </div> -->
                                    <div class="control-group">
                                        <label class="control-label">工作量</label>
                                        <div class="controls">
                                            <input type="text" id="drWork" class=" m-wrap" name="drWork" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">加班</label>
                                        <div class="controls">
                                            <input type="text" id="drExWork" class=" m-wrap" name="drExWork" />
                                        </div>
                                    </div>
                                    <input type="hidden" name="drId" id="drId" >
                                    
                                    <div class="control-group">
                                        <label class="control-label">任务</label>
                                        <div class="controls">
                                            <textarea class="large m-wrap" rows="6" name="drText" id="drText"></textarea>
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button class="btn" data-dismiss="modal" aria-hidden="true"> 取消</button>
                                    <button class="btn green btn-primary" data-dismiss="modal" onclick="sbt()"> 保存</button>
                                </div>
                            </form>
                        </div>

                        <div id="form_modal4" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                            <form action="updateDailyReport" class="form-horizontal" name="updateDailyReportForm" >
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                    <h3 id="myModalLabel3">日报信息</h3>
                                </div>
                                <div class="modal-body">
                                    <div class="control-group">
                                        <label class="control-label">任务</label>
                                        <div class="controls">
                                            <textarea readonly size="50" class="large m-wrap" rows="9" name="drText1" id="drText3"></textarea>
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button class="btn" data-dismiss="modal" aria-hidden="true"> 取消</button>
                                </div>
                            </form>
                        </div>
                        
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
	 <script type="text/javascript">
        function sbt(){
            document.updateDailyReportForm.submit();
        }
    </script>
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
    <!-- <script type="text/javascript" src="media/js/ckeditor.js"></script> -->
    <script type="text/javascript" src="media/js/bootstrap-fileupload.js"></script>
    <script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="media/js/select2.min.js"></script>
    <script type="text/javascript" src="media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="media/js/DT_bootstrap.js"></script>

    <script type="text/javascript" src="media/js/wysihtml5-0.3.0.js"></script>
    <script type="text/javascript" src="media/js/bootstrap-wysihtml5.js"></script>
    <script type="text/javascript" src="media/js/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="media/js/jquery.toggle.buttons.js"></script>
    <script type="text/javascript" src="media/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="media/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="media/js/clockface.js"></script>
    <script type="text/javascript" src="media/js/date.js"></script>
    <script type="text/javascript" src="media/js/daterangepicker.js"></script>
    <script type="text/javascript" src="media/js/bootstrap-colorpicker.js"></script>
    <script type="text/javascript" src="media/js/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="media/js/jquery.inputmask.bundle.min.js"></script>
    <script type="text/javascript" src="media/js/jquery.input-ip-address-control-1.0.min.js"></script>
    <script type="text/javascript" src="media/js/jquery.multi-select.js"></script>
    <script src="media/js/bootstrap-modal.js" type="text/javascript"></script>
    <script src="media/js/bootstrap-modalmanager.js" type="text/javascript"></script>

    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="media/js/app.js"></script>
    <script src="media/js/table-advanced.js"></script>
    <script src="media/js/form-components.js"></script>
    <script>
    jQuery(document).ready(function() {

        App.init();

        TableAdvanced.init();
        FormComponents.init();
        
        $('#sample_2 a.update').live('click', function(e) {
            e.preventDefault();

            //console.log($(this).parent().parent().children().first().text());
            $('#drTime').val($(this).parent().parent().children().first().text());
            $('#projName').val($(this).parent().parent().children().first().next().text());
            $('#drWork').val($(this).parent().parent().children().first().next().next().text());
            $('#drExWork').val($(this).parent().parent().children().first().next().next().next().text());
            $('#drText').val($(this).parent().parent().children().first().next().next().next().next().text());
            $('#drId').val($('#drId4').val());


            // var nRow = $(this).parents('tr')[0];
            // oTable.fnDeleteRow(nRow);
            // $.ajax({
            //     type: "GET",
            //     url: "updateUser?userId=" + $(this).parent().parent().children().first().text(),
            //     success: function(data) {
            //         //console.log(data);
            //     }
            // })
        });

        $('#drText2').live('click', function(e) {
            e.preventDefault();

            //console.log($(this).parent().parent().children().first().text());
            
            $('#drText3').val($(this).text());



            // var nRow = $(this).parents('tr')[0];
            // oTable.fnDeleteRow(nRow);
            // $.ajax({
            //     type: "GET",
            //     url: "updateUser?userId=" + $(this).parent().parent().children().first().text(),
            //     success: function(data) {
            //         //console.log(data);
            //     }
            // })
        });

        // $('#submit3').live('click', function(e) {
        //     e.preventDefault();

            
        //     $.ajax({
        //         type: "GET",
        //         url: "queryDailyReport",
        //         data: {
        //             "drTimeStart": $('#drTimeStart1').val(),
        //             "drTimeEnd": $('#drTimeEnd1').val(),
        //             "drText": $('#drText1').val(),
        //             "projName": $('#projName1').val(),
        //             "drStatus": $('#drStatus1').val()
        //         }
        //     }).done(function (data) {
        //             console.log(data);
        //         })
        // });
    });
    </script>
</body>
<!-- END BODY -->

</html>
