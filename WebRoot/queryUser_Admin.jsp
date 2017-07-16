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
    <title>查询用户信息</title>
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
    <!-- sweetalert -->
    <link href="media/css/sweetalert.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">

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
                <li class="">
                    <a href="${pageContext.request.contextPath }/index_Admin.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        
                    </a>
                </li>
                <li class="start active ">
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
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <h3 class="page-title">

							员工信息查询 <small></small>

						</h3>
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index.jsp">首页</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="">人事信息管理</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li><a href="">员工信息查询</a></li>
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
                                <form action="queryUser_Admin" class="horizontal-form" method="post">
                                    <div class="row-fluid">
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">用户工号</label>
                                                <div class="controls">
                                                    <input type="text" id="userId" name="userId" class="m-wrap span12" placeholder="请输入查询的工号">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">用户名</label>
                                                <div class="controls">
                                                    <input type="text" id="userName" name="userName" class="m-wrap span12" placeholder="请输入查询的用户名">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row-fluid">
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">组名</label>
                                                <div class="controls">
                                                    <select class="m-wrap span12" name="grpName">
                                                        <option value=""></option>
                                                        <c:forEach items="${grpList}" var="a">
                                                            <option value="${a.grpName}">${a.grpName}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                        <div class="span6 ">
                                            <div class="control-group">
                                                <label class="control-label">职务</label>
                                                <div class="controls">
                                                    <select class="m-wrap span12" name="userRole">
                                                        <option value="-1"></option>
                                                        <option value="1">组员</option>
                                                        <option value="2">组长</option>
                                                        <option value="3">项目经理</option>
                                                        <option value="0">管理员</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->

                                    <div class="form-actions">
                                        <button type="submit" class="btn blue pull-right " id="search1"><i class="icon-search"></i> 查询</button>
                                    </div>
                                </form>
                                <!-- END FORM-->
                            </div>
                        </div>
                        <!-- BEGIN EXAMPLE TABLE PORTLET id="sample_editable_1_new"-->
                        <div class="portlet box blue">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-edit"></i>查询条件</div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"></a>
                                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                    <a href="javascript:;" class="reload"></a>
                                    <a href="javascript:;" class="remove"></a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="clearfix">
                                    <div class="btn-group">
                                        <a href="${pageContext.request.contextPath }/insertUser_Admin.jsp" data-toggle="modal" class="btn green update">
                                        <i class="icon-plus"></i> 添加新用户</a>
                                    </div>
                                    <div class="btn-group pull-right">
                                        <button class="btn dropdown-toggle" data-toggle="dropdown">工具 <i class="icon-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="#">打印</a></li>
                                            <li><a href="#">存储为PDF格式</a></li>
                                            <li><a href="#">转换为Excel格式</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- <form action="deleteUser" class="horizontal-form" method="post"> -->
                                    <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                        <thead>
                                            <tr>
                                                <th>用户工号</th>
                                                <th>用户名</th>
                                                <th>组名</th>
                                                <th>职务</th>
                                                <th width="150px">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach items="${userList }" var="user">
                                                <tr>
                                                    <td>${user.userId }</td>
                                                    <td>${user.userName }</td>
                                                    <td>${user.grpName }</td>
                                                    <td><c:choose><c:when test="${user.userRole==1}">组员</c:when><c:when test="${user.userRole==2}">组长</c:when><c:when test="${user.userRole==3}">经理</c:when><c:when test="${user.userRole==0}">管理员</c:when></c:choose></td>
                                                        <!--<c:if test="${user.userRole==1} ">
                                                            <c:out value="组员"/>
                                                        </c:if>
                                                        <c:if test="${user.userRole==2} ">
                                                            组长
                                                        </c:if>
                                                        <c:if test="${user.userRole==3} ">
                                                            项目经理
                                                        </c:if>
                                                        <c:if test="${user.userRole==4} ">
                                                            管理员
                                                        </c:if>-->
                                                    
                                                    <td><a href="#form_modal3" data-toggle="modal" class="btn mini yellow update"><i class="icon-edit"></i> 修改</a>
                                                    <a href="javascript:;" class="btn mini red delete"><i class="icon-trash"></i>  解雇</a></td>
                                                    <!-- <a href="${pageContext.request.contextPath }/deleteUser?userId=${user.userId}" class="btn mini red"><i class="icon-trash"></i> 删除</a></td> -->
                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                <!-- </form> -->
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
                        <div id="form_modal3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                            <form action="updateUserSubmit" class="form-horizontal" name="updateUserForm" >
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                    <h3 id="myModalLabel3">更改用户信息</h3>
                                </div>
                                <div class="modal-body">

                                    <div class="control-group">
                                        <label class="control-label">用户工号</label>
                                        <div class="controls">
                                            <input type="text" id="userCustomId" class="m-wrap " name="userId" value="${userCustomId}" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">用户名</label>
                                        <div class="controls">
                                            <input type="text" id="userCustomName" class=" m-wrap" name="userName" value="${userCustomName}" />
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">组名</label>
                                        <div class="controls">
                                            <select class="m-wrap" name="grpName" id="userCustomGrpName">
                                                <option value=""></option>
                                                <c:forEach items="${grpList}" var="a">
                                                    <option value="${a.grpName}">${a.grpName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">职务</label>
                                        <div class="controls">
                                            <select id="userCustomRole" class="m-wrap" name="userRole">
                                                <option value="-1"></option>
                                                <option value="组员">组员</option>
                                                <option value="组长">组长</option>
                                                <option value="经理">经理</option>
                                                <option value="管理员">管理员</option>
                                            </select>
                                            <!-- <select class="m-wrap" name="userRole" id="userCustomRole">
                                                <option value=""></option>
                                                <c:forEach items="${userRoleList}" var="b">
                                                    <option value="${b.grpName}">${a.grpName}</option>
                                                </c:forEach>
                                            </select> -->
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button class="btn" data-dismiss="modal" aria-hidden="true"> 取消</button>
                                    <button id="submit1" class="btn green btn-primary" data-dismiss="modal" > 保存</button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
                <!-- END PAGE CONTENT -->
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
    <script type="text/javascript" src="media/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="media/js/DT_bootstrap.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="media/js/app.js"></script>
    <script src="media/js/table-editable.js"></script>
    <!-- sweetalert -->
    <script src="media/js/sweetalert-dev.js" type="text/javascript"></script>
    <script>
    jQuery(document).ready(function() {

        App.init();

        TableEditable.init();

        function cleanWhitespace(element) 
        { 
            for(var i=0; i<element.childNodes.length; i++) 
            { 
                var node = element.childNodes[i]; 
                if(node.nodeType == 3 && !/\S/.test(node.nodeValue)) 
                { 
                    node.parentNode.removeChild(node); 
                } 
            } 
        } 


       /* function sbt(){
            document.updateUserForm.submit();
        }*/
    

        $('#sample_editable_1 a.update').live('click', function(e) {
            e.preventDefault();

            //console.log($(this).parent().parent().children().first().text());
            $('#userCustomId').val($(this).parent().parent().children().first().text());
            $('#userCustomName').val($(this).parent().parent().children().first().next().text());
            $('#userCustomGrpName').val($(this).parent().parent().children().first().next().next().text());
            $('#userCustomRole').val($(this).parent().parent().children().first().next().next().next().text());


            // var nRow = $(this).parents('tr')[0];
            // oTable.fnDeleteRow(nRow);
            /*$.ajax({
                type: "POST",
                url: "updateUser?userId=" + $(this).parent().parent().children().first().text()
            })*/
        });
        
        $('#submit1').live('click', function(e) {
            e.preventDefault();

            

            // var nRow = $(this).parents('tr')[0];
            // oTable.fnDeleteRow(nRow);
            $.ajax({
                type: "POST",
                url: "updateUserSubmit",
                data: {
                    "userId" :$('#userCustomId').val(),
                    "userName" :$('#userCustomName').val(),
                    "grpName" :$('#userCustomGrpName').val(),
                    "userRole1" :$('#userCustomRole').val()
                }
            })

            swal("保存成功!", "成功保存用户信息!", "success")
        });
        
    });

    </script>
</body>
<!-- END BODY -->

</html>
