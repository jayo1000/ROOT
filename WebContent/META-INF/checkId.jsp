<%--<%@ page contentType="text/html; charset=UTF-8"%> --%>
<%@ page contentType="text/plain; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
<script type="text/javascript" src="/js/Validator.js"></script>
<%
	String id = request.getParameter("id");
%>
<script type="text/javascript">
	function setId()	{
		opener.document.registForm.id.value="${param.id}";
		opener.document.registForm.idCheckResult.value=1;
		window.self.close();
		opener.document.registForm.passwd.focus();
	}
	
	function idCheck() {
		var inputId = document.forms[0].id.value;

		if (Validator.isEmpty(inputId)) {
			alert("아이디를 입력해 주세요.");
			document.forms[0].id.focus();
			return false;
		} else {
			document.forms[0].submit();
		}
	}
</script>
<c:choose>
  <c:when test="${empty user}">
    입력하신 ${param.id}는 사용이 가능합니다.
    <input type="button" value="닫기" onclick="setId();">
  </c:when>
  <c:otherwise>
    현재 ${param.id}는 이미 사용중인 아이디 입니다.
    <form method="get" action="checkid.htm">
      <input type="text" name="id">
      <input type="button" value="검색" onclick="idCheck()">
    </form>
  </c:otherwise>
</c:choose>
 --%>
<c:choose>
  <c:when test="${empty user}">
    true
  </c:when>
  <c:otherwise>
    false
  </c:otherwise>
</c:choose>