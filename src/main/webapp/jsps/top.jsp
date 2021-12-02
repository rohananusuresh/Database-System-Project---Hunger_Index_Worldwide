<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #4682B4; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">hunger_index_worldwide</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; 
		<%-- <a href="<c:url value='/jsps/login_user/menu.jsp'/>" target="body">Login User</a> |&nbsp;&nbsp; --%>
			<a href="<c:url value='/jsps/world_body_fat_percentage/menu.jsp'/>" target="body">World Body Fat Percentage</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/world_death_rate/menu.jsp'/>" target="body">World Death Rate</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/world_happiness_index/menu.jsp'/>" target="body">World Happiness Index</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/world_income_avg/menu.jsp'/>" target="body">World Income Average</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/world_unemployement_rate/menu.jsp'/>" target="body">World Unemployement Rate</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/world_hunger_statistics/menu.jsp'/>" target="body">World Hunger Statistics</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/world_vaccination_info/menu.jsp'/>" target="body">World Vaccination Info</a> |&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/jsps/item.jsp'/>" target="body">Query Result</a> |&nbsp;&nbsp;
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> |&nbsp; 
			<a href="<c:url value='/jsps/entity1/entity1create.jsp'/>" target="_parent">Create Entity1</a> |&nbsp; 
			<a href="<c:url value='/jsps/entity1/entity1read.jsp'/>" target="_parent">Read Entity1</a> |&nbsp;
			<a href="<c:url value='/jsps/entity1/entity1update.jsp'/>" target="_parent">Update Entity1</a> |&nbsp;	 
			<a href="<c:url value='/jsps/entity1/entity1delete.jsp'/>" target="_parent">Delete Entity1</a>
			
			

		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

