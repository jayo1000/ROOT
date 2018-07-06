<%@page import="kr.or.greenb.user.domain.Users"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.greenb.user.dao.UsersDao"%>
<%@page import="kr.or.greenb.user.dao.JdbcUserDao"%>
<%@page import="kr.or.greenb.common.factory.DaoFactory"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
DaoFactory factory = (DaoFactory)application.getAttribute("daoFactory");
UsersDao dao = (UsersDao)factory.getDao(JdbcUserDao.class);
List<Users> list = dao.getAll();
pageContext.setAttribute("list", list);
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
	<c:forEach var="view" items='${list}' varStatus="iter">
	<tr>
	<td>${iter.count }</td>
	<td><a href="/user/read.jsp?id='${view.id}'">${view.id }</a></td>
	<td>${view.name }</td>
	<td>${view.passwd }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>