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
	<td>部门ID</td>
	<td>部门名称</td>
	<td>负责人编号</td>
</tr>
<c:forEach items="${departmentList }" var="item">
<tr>
	<td>${item.deptId }</td>
	<td>${item.deptName }</td>
	<td>${item.deptManager }</td>
</tr>
</c:forEach>

</table>
</body>

</html>