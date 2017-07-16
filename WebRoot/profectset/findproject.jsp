<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body> 
<table width="100%" border=1>
<tr>
	<td>项目编号</td>
	<td>项目名称</td>
	<td>项目开始时间</td>
	<td>项目截至时间</td>
	<td>项目完成状态</td>
	<td>项目负责人编号</td>
	<td>执行小组编号</td>
	<td>项目备注</td>
</tr>
<c:forEach items="${projectlist}" var="item">
<tr>
	
	<td>${item.projId }</td>
	<td>${item.projName }</td>
	<td>${item.projStartTime }</td>
	<td>${item.projDeadTime }</td>
	<td>${item.projStatus }</td>
	<td>${item.projManager }</td>
	<td>${item.grpId }</td>
	<td>${item.projText }</td>
	
	
	
</tr>
</c:forEach>

</table>
</body>

</html>