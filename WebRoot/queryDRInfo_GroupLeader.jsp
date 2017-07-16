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
    <title>日报审核</title>
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
    <link rel="stylesheet" type="text/css" href="media/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="media/css/sweetalert.css"/>
 
    <script type="text/javascript">
        function c1(){
        	if($("#check").is(":checked")){
        		document.getElementById("DaliyReport").action="checkdr_GroupLeader.action?drStatus=1";
                document.getElementById("DaliyReport").submit();
        	}
        	else{
        		swal("请选择需要审核的日报");
        	}
        }
        function c2(){
        	if($("#check").is(":checked")){
        		document.getElementById("DaliyReport").action="checkdr_GroupLeader.action?drStatus=2";
                document.getElementById("DaliyReport").submit();
        	}
        	else{
        		swal("请选择需要审核的日报");
        	}
        }
	</script>
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
                            <li><a href="${pageContext.request.contextPath }//jumpToInsertDailyReportPage_GroupLeader.action?userId=${userId }"><i class="icon-envelope"></i> 新建日报</a></li>
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
                <li class=" ">
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
                <li class="start active">
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
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <h3 class="page-title">

							日报审核 |  <small> 日报管理系统</small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index_GroupLeader.jsp">首页</a>
                                <i class="icon-angle-right"></i>
                            </li>
                           
                            <li><a href="#">日报审核</a></li>
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
                                <form action="reviewquery_GroupLeader.action" class="horizontal-form" method="post">
                                    <div class="row-fluid">
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">人员</label>
                                                <div class="controls">
                                                    <select class="m-wrap span12" name="userName">
  															<option value=""></option>
    													<c:forEach items="${username}" var="a">
        													<option value="${a}">${a}</option>
        												</c:forEach>
    												</select>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">审核状态</label>
                                                <div class="controls">
                                                    <select class="m-wrap span12" name="drStatus">
    													<option value="0"></option>
    													<option value="3">未审核</option>
        												<option value="1">通过</option>
        												<option value="2">未通过</option>
    												</select>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row-fluid">
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">查询起始日期<span class="required">*</span></label>
                                                <div class="controls">
                                                    <div class="input-append date date-picker" data-date="2017-02-20" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
                                                		<input class="m-wrap m-ctrl-medium date-picker" readonly size="16" type="text" value="" name="ssTime"/><span class="add-on"><i class="icon-calendar"></i></span>
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">查询结束日期<span class="required">*</span></label>
                                                <div class="controls">
                                                    <div class="input-append date date-picker" data-date="2017-02-25" data-date-format="yyyy-mm-dd" data-date-viewmode="years">
                                                		<input class="m-wrap m-ctrl-medium date-picker" readonly size="16" type="text" value="" name="seTime"/><span class="add-on"><i class="icon-calendar"></i></span>
                                            		</div> 
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    
                                    <div class="form-actions">
                                        <button type="submit" class="btn blue pull-right"><i class="icon-ok"></i> 查询</button>
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
                                        <a class="btn" href="#" data-toggle="dropdown">

										Columns

										<i class="icon-angle-down"></i>

										</a>
                                        <div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
                                   
                                            <label>
                                                <input type="checkbox" checked data-column="1">姓名</label>
                                            <label>
                                                <input type="checkbox" checked data-column="2">项目</label>
                                            <label>
                                                <input type="checkbox" checked data-column="3">工作内容</label>
                                            <label>
                                                <input type="checkbox" checked data-column="4">部门</label>
                                            <label>
                                                <input type="checkbox" checked data-column="5">日期</label>
                                            <label>
                                                <input type="checkbox" checked data-column="6">工作量(H)</label>
                                            <label>
                                                <input type="checkbox" checked data-column="7">加班(H)</label>
                                            <label>
                                                <input type="checkbox" checked data-column="8">状态</label>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                            <form id="DaliyReport" method="post" class="form-horizontal">
                                <table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
                                    <thead>
                                        <tr>
                                            <th>选择</th>
                                            <th class="hidden-480">姓名</th>
                                            <th class="hidden-480">项目</th>
                                            <th class="hidden-480">工作内容</th>
                                            <th class="hidden-480">部门</th>
                                            <th class="hidden-480">日期</th>
                                            <th class="hidden-480">工作量(H)</th>
                                            <th class="hidden-480">加班(H)</th>
                                            <th class="hidden-480">状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${custom}" var="b">
        									<tr>
        										<td><input type="checkbox" id="check" name="drIds" value="${b.drId}"></td>
        										<td class="hidden-480">${b.userName}</td>
    											<td class="hidden-480">${b.projName}</td>
    											<td class="hidden-480">${b.drText}</td>
    											<td class="hidden-480">${b.deptName}</td>
    											<td class="hidden-480"><fmt:formatDate value="${b.drTime}" pattern="yyyy-MM-dd"/></td>
    											<td class="hidden-480">${b.drWork}</td>
    											<td class="hidden-480">${b.drExWork}</td>
    											<td class="hidden-480">
    												<c:choose>
    													<c:when test="${b.drStatus == 1}">
    														通过
    													</c:when>
    													<c:when test="${b.drStatus == 2}">
    														不通过
    													</c:when>
    													<c:otherwise>
    														未审核
    													</c:otherwise>
    												</c:choose>
    											</td>
    											<td><a href="alterquery_GroupLeader.action?drId=${b.drId}">修改</a></td>
        									</tr>
        									
        								</c:forEach>
        								
 										
                                    </tbody>
                                    <tfoot>
                                    	<tr>
 										<td colspan="10">
 										     <div style="float:right;">
 											 <button type="button" class="btn blue" onclick="c1()">通过</button>
                                             <button type="button" class="btn blue" onclick="c2()">不通过</button>
                                             </div>
 										</td>
 									</tr>
                                    </tfoot>								
                                </table>
                            </form>
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
    <script type="text/javascript" src="media/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="media/js/sweetalert.min.js"></script>
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
        

    });
    
    </script>
    
</body>
<!-- END BODY -->

</html>

