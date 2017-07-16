<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zzkmain.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<br>
  	<br>
  	<br>

    
    <br><br><br><br><br><br>
    <h1>模板</h1>
     <a href="adddepartment1.action">新增部门</a><br>
     <a href="finddepartment.action">查询所有部门</a><br>
     <a href="addproject1.action">新建项目</a><br>
     <a href="findproject.action">查询所有项目</a><br>
     <a href="updateproject.action">修改项目进度</a><br>
    
    <a href="adddepartment1_Admin.action">adddepartment1_Admin.action</a><br>
    <a href="finddepartment_Admin.action">finddepartment_Admin.action</a><br>
    
    
  </body>
</html>
