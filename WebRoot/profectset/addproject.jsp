<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addproject.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  </head>
  
  <body>
  		<form action="addproject2">
  		 项目ID<input type="text" name="projId"><br>
  		 项目名称<input type="text" name="projName"><br>
  		 开始时间<input type="date" name="projStartTime"><br>
  		 结束时间<input type="date" name="projDeadTime"><br>
  		<input type="hidden" name="projStatus" value="0">
  		项目负责人编号<select name="projManager">
  		 <c:forEach items="${list}" var="item">
  		 	<option value="${item.userId}">${item.userId} ${item.userName}</option>
  		 </c:forEach>
  		 </select><br>
  		执行小组编号<select name="grpId">
  		 <c:forEach items="${list1}" var="item1">
  		 	<option value="${item1.grpId}">${item1.grpId} ${item1.grpName}</option>
  		 </c:forEach>
  		 </select><br>
  		 项目备注<input type="text" name="projText"><br>
  		 
  		 <input type="submit" value="提交">
  		
  		</form>
  
  </body>
</html>
