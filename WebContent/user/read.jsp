<%@page import="kr.or.greenb.user.domain.Users"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.greenb.user.dao.UsersDao"%>
<%@page import="kr.or.greenb.user.dao.JdbcUserDao"%>
<%@page import="kr.or.greenb.common.factory.DaoFactory"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String id = request.getParameter("id");
DaoFactory factory = (DaoFactory)application.getAttribute("daoFactory");
UsersDao dao = (UsersDao)factory.getDao(JdbcUserDao.class);
Users user = dao.get(id);
pageContext.setAttribute("user", user);
%>


<!DOCTYPE html">
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/048.css">
<style>
table{
	width: 500px;
	margin: 0 auto;
}
</style>
</head>
<body>
<table>
	<caption style="padding-left: 130px">사용자 목록</caption>
	<tr>
	<th>번호</th>
	<th>아이디</th>
	<th>이름</th>
	<th>비밀번호</th>	
	</tr>
	<h3>${user.name}님의 상세정보</h3>
	<tr>
	<td>${user.count }</td>
	<td>${user.id }</td>
	<td>${user.name }</td>
	<td>${user.passwd }</td>
	</tr>
</table>
</body>
</html>