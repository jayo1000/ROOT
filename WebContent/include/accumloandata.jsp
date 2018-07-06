<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
<%
String loginId = null;
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("loginId")){
			loginId = cookie.getValue();
		}
	}	
}
%>

