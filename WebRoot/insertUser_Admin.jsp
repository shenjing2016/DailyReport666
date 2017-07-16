<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>注册新用户</title>
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
    <link rel="stylesheet" type="text/css" href="media/css/chosen.css" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico" />

    <link href="media/css/sweetalert.css" rel="stylesheet" type="text/css" />

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
                <li>
                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                </li>
                <li class=" ">
                    <a href="${pageContext.request.contextPath }/index_Admin.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        
                    </a>
                </li>
                <li class="start active">
                    <a href="javascript:;">
                        <i class="icon-briefcase"></i>
                        <span class="title">人事信息管理</span>
                        <span class="arrow "></span>
                        <span class="selected"></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToInsertUser.action">

                            <i class="icon-time"></i> 新员工信息录入</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/jumpToQueryUser.action">

                            <i class="icon-time"></i> 员工信息查询</a>
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
                        <!-- BEGIN PAGE HEADER-->
                        <h3 class="page-title">

							新员工信息录入

							 <small></small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index.jsp">首页</a>
                                <span class="icon-angle-right"></span>
                            </li>
                            <li>
                                <a href="">人事信息管理</a>
                                <span class="icon-angle-right"></span>
                            </li>
                            <li><a href="">新员工信息录入</a></li>
                        </ul>
                    </div>
                </div>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->
                <div class="row-fluid">
                    <div class="span12">
                        <div class="portlet box blue" id="form_wizard_1">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-reorder"></i> 注册新用户 <span class="step-title">第一步</span>
                                </div>
                                <div class="tools hidden-phone">
                                    <a href="javascript:;" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="javascript:;" class="reload"></a>
                                    <a href="javascript:;" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <form action="insertUser" class="form-horizontal" id="submit_form">
                                    <div class="form-wizard">
                                        <div class="navbar steps">
                                            <div class="navbar-inner">
                                                <ul class="row-fluid">
                                                    <li class="span3">
                                                        <a href="#tab1" data-toggle="tab" class="step active">
                                                            <span class="number">1</span>
                                                            <span class="desc"><i class="icon-ok"></i> 账户设置</span>
                                                        </a>
                                                    </li>
                                                    <li class="span3">
                                                        <a href="#tab2" data-toggle="tab" class="step">
                                                            <span class="number">2</span>
                                                            <span class="desc"><i class="icon-ok"></i> 详细设置</span>
                                                        </a>
                                                    </li>
                                                    <li class="span3">
                                                        <a href="#tab3" data-toggle="tab" class="step">
                                                            <span class="number">3</span>
                                                            <span class="desc"><i class="icon-ok"></i> 分组设置</span>
                                                        </a>
                                                    </li>
                                                    <li class="span3">
                                                        <a href="#tab4" data-toggle="tab" class="step">
                                                            <span class="number">4</span>
                                                            <span class="desc"><i class="icon-ok"></i> 确认表单</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div id="bar" class="progress progress-success progress-striped">
                                            <div class="bar"></div>
                                        </div>
                                        <div class="tab-content">
                                            <div class="alert alert-error hide">
                                                <button class="close" data-dismiss="alert"></button>
                                                您的表单有一些错误，请检查。
                                            </div>
                                            <div class="alert alert-success hide">
                                                <button class="close" data-dismiss="alert"></button>
                                                您的表单提交成功！
                                            </div>
                                            <div class="tab-pane active" id="tab1">
                                                <h3 class="block">请完善用户信息</h3>
                                                <div class="control-group">
                                                    <label class="control-label">用户名<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="text" class="span6 m-wrap" name="userName"  id="userName1" />
                                                        <span class="help-inline">至少3位字符</span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">密码<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="password" class="span6 m-wrap" name="userPwd" id="submit_form_password" />
                                                        <span class="help-inline">至少4位字符</span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">确认密码<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="password" class="span6 m-wrap" name="rpassword" id="rpassword" />
                                                        <!-- <span class="help-inline">请重复填写密码</span> -->
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">Email<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="text" class="span6 m-wrap" name="email" />
                                                        <!-- <span class="help-inline">请填写电子邮箱地址</span> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab2">
                                                <h3 class="block">请完善详细信息</h3>
                                                <div class="control-group">
                                                    <label class="control-label">真实姓名<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="text" class="span6 m-wrap" name="fullname" />
                                                        <!-- <span class="help-inline">请填写真实姓名</span> -->
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">电话号码<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="text" class="span6 m-wrap" name="phone" />
                                                        <!-- <span class="help-inline">请填写电话号码</span> -->
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">性别<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="gender" value="M" data-title="男" /> 男
                                                        </label>
                                                        <div class="clearfix"></div>
                                                        <label class="radio">
                                                            <input type="radio" name="gender" value="F" data-title="女" /> 女
                                                        </label>
                                                        <div id="form_gender_error"></div>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">家庭地址<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input type="text" class="span6 m-wrap" name="address" />
                                                        <!-- <span class="help-inline">请填写家庭地址</span> -->
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label">备注</label>
                                                    <div class="controls">
                                                        <textarea class="span6 m-wrap" rows="3" name="remarks"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab3">
                                                <h3 class="block">请完善分组信息</h3>
                                                <!-- <div class="control-group">
                                                    <label class="control-label">部门名称<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <select name="deptName" class="span6" id="deptName">
                                                            <option value="">请选择</option>
                                                            <option value="01">销售部</option>
                                                            <option value="02">财务部</option>
                                                            <option value="03">后勤部</option>
                                                        </select>
                                                    </div>
                                                    
                                                </div> -->
                                                <div class="control-group">
                                                    <label class="control-label">小组名称<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <select class="m-wrap span6" name="groupId" id="groupId">
                                                            <option value=""></option>
                                                            <c:forEach items="${grpList}" var="a">
                                                                <option value="${a.grpId}">${a.grpName}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">职位<span class="required">*</span></label>
                                                    <div class="controls">
                                                        <select name="userRole" class="span6" id="userRole" name="userRole">
                                                            <option value="">请选择</option>
                                                            <option value="1">组员</option>
                                                            <option value="2">组长</option>
                                                            <option value="3">项目经理</option>
                                                        </select>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="tab-pane" id="tab4">
                                                <h3 class="block">确认信息</h3>
                                                <h4 class="form-section">账户信息</h4>
                                                <div class="control-group">
                                                    <label class="control-label">用户名:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="userName"></span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">Email:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="email"></span>
                                                    </div>
                                                </div>
                                                <h4 class="form-section">详细信息</h4>
                                                <div class="control-group">
                                                    <label class="control-label">真实姓名:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="fullname"></span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">性别:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="gender"></span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">电话号码:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="phone"></span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">家庭地址:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="address"></span>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label">备注:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="remarks"></span>
                                                    </div>
                                                </div>
                                                <h4 class="form-section">分组信息</h4>
                                                <!-- <div class="control-group">
                                                    <label class="control-label">部门名称:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="deptName"></span>
                                                    </div>
                                                </div> -->
                                                <div class="control-group">
                                                    <label class="control-label">小组名称:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="groupId"></span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">职位:</label>
                                                    <div class="controls">
                                                        <span class="text display-value" data-display="userRole"></span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-actions clearfix">
                                            <a href="javascript:;" class="btn button-previous">
                                                <i class="m-icon-swapleft"></i> 上一步
                                            </a>
                                            <a href="javascript:;" class="btn blue button-next">

											下一步 <i class="m-icon-swapright m-icon-white"></i>

											</a>
                                            <a href="${pageContext.request.contextPath }/queryUser_Admin.jsp"><button id="submit1" type="submit" class="btn green button-submit">

											提交 <i class="m-icon-swapright m-icon-white"></i>

											</button></a>
                                        </div>
                                    </div>
                                </form>
                            </div>
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
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="media/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="media/js/additional-methods.min.js"></script>
    <script type="text/javascript" src="media/js/jquery.bootstrap.wizard.min.js"></script>
    <script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="media/js/select2.min.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="media/js/app.js"></script>
    <script src="media/js/form-wizard.js"></script>

    <script src="media/js/sweetalert-dev.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
    jQuery(document).ready(function() {

        // initiate layout and plugins

        App.init();

        FormWizard.init();

        $('#submit1').live('click', function(e) {
            e.preventDefault();

            

            // var nRow = $(this).parents('tr')[0];
            // oTable.fnDeleteRow(nRow);
            $.ajax({
                type: "GET",
                url: "insertUser",
                data: {
                    "userName" :$('#userName1').val(),
                    "userPwd" :$('#submit_form_password').val(),
                    "groupId" :$('#groupId').val(),
                    "userRole" :$('#userRole').val()
                }

            })

            swal("注册成功!", "成功注册用户信息!", "success")
        });

    });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>

