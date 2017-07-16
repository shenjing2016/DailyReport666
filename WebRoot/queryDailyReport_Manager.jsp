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
                <a class="brand" href="index_Manager.jsp">
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
                            <li><a href="${pageContext.request.contextPath }/jumpToInsertDailyReportPage_Manager.action?userId=${userId }"><i class="icon-envelope"></i> 新建日报</a></li>
                            <li><a href="${pageContext.request.contextPath }/updateUserSelf_Manager.jsp"><i class="icon-tasks"></i> 修改个人信息</a></li>
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
                    <a href="${pageContext.request.contextPath }/index_Manager.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        
                    </a>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath }/jumpToInsertDailyReportPage_Manager.action?userId=${userId }">
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
                            <a href="${pageContext.request.contextPath }/jumpToQueryDailyReportSelf_Manager.action?userId=${userId}">

                                <i class="icon-time"></i> 个人日报查询</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToUpdateDailyReportSelf_Manager.action?userId=${userId}">

                                <i class="icon-time"></i> 个人日报修改</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="review_Manager.action">
                        <i class="icon-briefcase"></i>
                        <span class="title">日报审核</span>
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
                            <a href="${pageContext.request.contextPath }/findproject_Manager.action">
                                <i class="icon-time"></i> 查询项目
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="start active ">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">日报统计分析</span>
                        <span class="arrow "></span>
                        <span class="selected"></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToQueryDailyReport_Manager.action">
                                <i class="icon-time"></i> 日报查询</a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-time"></i> 工作时间统计
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.request.contextPath }/CountWorkByDate_Manager.jsp">按日期段统计</a></li>
                                <li><a href="${pageContext.request.contextPath }/CountWorkByProjId_Manager.jsp">按项目统计</a></li>
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
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <h3 class="page-title">

							个人日报查询 |  <small> 日报管理系统</small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index_Manager.jsp">首页</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">个人日报管理</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li><a href="#">个人日报查询</a></li>
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
                                <form action="queryDailyReport_Manager" class="horizontal-form" method="post">
                                    <div class="row-fluid">
                                        <div class="span3 ">
					                        <div class="control-group">
    					                        <label class="control-label">查询起始日期</label>
    					                        <div class="input-append date date-picker" data-date="2017-02-20" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
    				                            	<input id="drTimeStart1" name="drTimeStart" class="m-wrap m-ctrl-medium date-picker" readonly size="10" type="text" value="" style="height:20px;"/><span class="add-on"><i class="icon-calendar"></i></span>
    				                          	</div>
					                        </div>
					                    </div>
                                        <!--/span-->
                                        <div class="span3 ">
                                            <div class="control-group">
                                                <label class="control-label">查询结束日期</label>
                                                <div class="input-append date date-picker" data-date="2017-02-25" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
                                                    <input id="drTimeEnd1" name="drTimeEnd" class="m-wrap m-ctrl-medium date-picker" readonly size="10" type="text" value="" style="height:20px;"/><span class="add-on"><i class="icon-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">任务</label>
                                                <div class="controls">
                                                    <input id="drText1" type="text" name="drText" class="m-wrap span12" placeholder="请输入要查询的任务">
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
                                
                            </div>
                            <div class="portlet-body">
                                <table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
                                    <thead>
                                        <tr>
                                            <th>日期</th0>
                                            <th>填写人</th>
                                            <th>项目</th> 
                                            <th>工作量</th>
                                            <th>加班</th>
                                            <th width="400px">任务</th>
                                            <th>状态</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${dailyReportList}" var="d">
	                                        <tr>
                                                
                                                <td><fmt:formatDate value="${d.drTime}" pattern="yyyy-MM-dd"/></td>
                                                <td>${d.userName}</td>
                                                <td>${d.projName}</td> 
                                                <td>${d.drWork}</td>
                                                <td>${d.drExWork}</td>
                                                <td><a id="drText2" href="#form_modal4" data-toggle="modal" class="name">${d.drText}</a></td>
                                                <td><c:choose><c:when test="${d.drStatus==1}"><span class="label label-success">通过</span></c:when><c:when test="${d.drStatus==2}"><span class="label label-warning">不通过</span></c:when><c:otherwise><span class="label label-info">未审核</span></c:otherwise></c:choose></td>
                                                
                                                
                                                
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
                        
                        <div id="form_modal3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                            <form action="updateDailyReport_Manager" class="form-horizontal" name="updateDailyReportForm" >
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
            $('#projName').val($(this).parent().parent().children().first().next().next().text());
            $('#drWork').val($(this).parent().parent().children().first().next().next().next().text());
            $('#drExWork').val($(this).parent().parent().children().first().next().next().next().next().text());
            $('#drText').val($(this).parent().parent().children().first().next().next().next().next().next().text());
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
