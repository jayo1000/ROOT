<%@page import="kr.or.greenb.user.domain.Users"%>
<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인페이지</title>
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/css/main.css">
</head>
<body>
	<div>
		<div id="contents">
				<%
					Users user = (Users) pageContext.findAttribute("users");				
				%>
				<table width="700" cellpadding="3" cellspacing="2" border="1">
					<caption align="left">
						<h2>
							<cite>회원가입을 축하합니다.</cite>
						</h2>
					</caption>
					<tr>
						<th>이름</th>
						<td><%=user.getName() %></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><%=user.getId() %></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>*******</td>
					</tr>
					<tr>
						<td colspan="2"><a href="/jsp">홈으로</a></td>
					</tr>
				</table>			
		</div>
	</div>

</body>
</html>

