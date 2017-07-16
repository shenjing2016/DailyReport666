<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>Metronic | Form Stuff - Form Layouts</title>
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
                <a class="brand" href="index_Group.jsp">
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
                            <li><a href="${pageContext.request.contextPath }/jumpToInsertDailyReportPage_GroupLeader.action?userId=${userId }"><i class="icon-envelope"></i> 新建日报</a></li>
                            <li><a href="${pageContext.request.contextPath }/updateUserSelf_GroupLeader.jsp"><i class="icon-tasks"></i> 修改个人信息</a></li>
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
                <li class="">
                    <a href="${pageContext.request.contextPath }/index_GroupLeader.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath }/jumpToInsertDailyReportPage_GroupLeader.action?userId=${userId }">
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
                            <a href="${pageContext.request.contextPath }/jumpToQueryDailyReportSelf_GroupLeader.action?userId=${userId}">

                                <i class="icon-time"></i> 个人日报查询</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToUpdateDailyReportSelf_GroupLeader.action?userId=${userId}">

                                <i class="icon-time"></i> 个人日报修改</a>
                        </li>
                    </ul>
                </li>
                <li class="start active ">
                    <a href="review_GroupLeader.action">
                        <i class="icon-briefcase"></i>
                        <span class="title">日报审核</span>
                        <span class="selected"></span>
                    </a>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">项目管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/findproject_GroupLeader.action">
                                <i class="icon-time"></i> 查询项目
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/updateproject_GroupLeader.action">
                                <i class="icon-time"></i> 修改项目进度</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">日报统计分析</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToQueryDailyReport_GroupLeader.action">
                                <i class="icon-time"></i> 日报查询</a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-time"></i> 工作时间统计
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.request.contextPath }/CountWorkByDate_GroupLeader.jsp">按日期段统计</a></li>
                                <li><a href="${pageContext.request.contextPath }/CountWorkByProjId_GroupLeader.jsp">按项目统计</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/findWeekReportById_GroupLeader.jsp">
                                <i class="icon-time"></i> 职员周报导出</a>
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
                            <a href="${pageContext.request.contextPath }/updateUserSelf_GroupLeader.jsp">
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
                        <h3 class="page-title">

							修改日报 | <small> 日报管理系统</small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index_GroupLeader.jsp">首页</a>
                                <span class="icon-angle-right"></span>
                            </li>
                            <li>
                                <a href="#">日报审核</a>
                                <span class="icon-angle-right"></span>
                            </li>
                            <li><a href="#">修改日报</a></li>
                        </ul>
                    </div>
                </div>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->
                <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN SAMPLE FORM PORTLET-->
                        <div class="portlet box blue tabbable">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-reorder"></i>
                                    <span class="hidden-480">日报信息</span>
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <div class="tabbable portlet-tabs">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#portlet_tab1" data-toggle="tab">Default</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="portlet_tab1">
                                            <!-- BEGIN FORM-->
                                            <form action="alter_GroupLeader.action" method="post" class="form-horizontal">
                                            	<input type="hidden" name="drId" value="${custom.drId}">
                                                <div class="control-group">
                                                    <label class="control-label">姓名</label>
                                                    <div class="controls">
                                                        <span class="help-inline">${custom.userName}</span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">日期</label>
                                                    <div class="controls">
                                                        <span class="help-inline"><fmt:formatDate value="${custom.drTime}" pattern="yyyy-MM-dd"/></span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">工作量(H)</label>
                                                    <div class="controls">
                                                        <span class="help-inline">${custom.drWork}</span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">加班工作量(H)</label>
                                                    <div class="controls">
                                                        <span class="help-inline">${custom.drExWork}</span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">项目</label>
                                                    <div class="controls">
                                                        <span class="help-inline">${custom.projName}</span>
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
                                                    <label class="control-label">工作描述</label>
                                                    <div class="controls">
                                                        <textarea class="large m-wrap" rows="3" name="drText">${custom.drText}</textarea>
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
                                                    <label class="control-label">审核信息</label>
                                                    <div class="controls">
                                                        <label class="radio line">
                                                            <input type="radio" name="drStatus" value="1" checked/> 通过
                                                        </label>
                                                        <label class="radio line">
                                                            <input type="radio" name="drStatus" value="2" /> 不通过
                                                        </label>
                                                    </div>
                                                </div>
                                                
                                                
                                                <div class="form-actions">
                                                    <button type="submit" class="btn blue"><i class="icon-ok"></i> 提交</button>
                                                    <button type="button" class="btn" onclick="window.location.href='review_GroupLeader.action'">返回</button>
                                                </div>
                                            </form>
                                            <!-- END FORM-->
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE FORM PORTLET-->
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
            2013 &copy; Metronic by keenthemes.Collect from <a href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
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
    <script src="media/js/app.js"></script>
    <script>
    jQuery(document).ready(function() {

        // initiate layout and plugins

        App.init();

    });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
