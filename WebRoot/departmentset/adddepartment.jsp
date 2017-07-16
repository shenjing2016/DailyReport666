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
    <form action="adddepartment.action">
  		 部门ID<input type="text" name="deptId"><br>
  		 部门名称<input type="text" name="deptName"><br>
  		 部门负责人编号<select name="deptManager">
  		 <c:forEach items="${list }" var="item">
  		 	<option value="${item.userId}">${item.userId} ${item.userName}</option>
  		 </c:forEach>
  		 </select>
  		 

  		 <input type="submit" value="提交">
  		
  		</form>
  </body>
</html>
