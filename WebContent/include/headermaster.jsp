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
<style type="text/css">
	#first {
        background-color: #444;
         background-image: url("/images/index/index-main.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }
    #re {
        background-color: #444;
         background-image: url("/images/renuwal/product.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }
    #ch {
 color: #0275d8;
 font-weight: bold;
}

#ch:hover {
color: white;
}
   </style>  
   <div class="header">
  <div align="center">
  <img src="/images/renuwal/mainup.png">
  </div>
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="/images/logo/logos.png" style="margin-top: 5px;"></a>
 <c:choose>
    <c:when test="${empty cookie.loginId }">
        <ul class="nav navbar-nav pull-xs-right" style="padding-right: 65px; padding-top: 10px;">
          <li ><a id="ch" href="/employment.jsp" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">채용문의</a>
			</li>					
        </ul>
                        </c:when>
                        <c:when test="${cookie.loginId.value eq'admin2159926'}" >
                          <ul class="nav navbar-nav pull-xs-right" style="padding-right: 65px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;"> 총괄 관리자 <i class="glyphicon glyphicon-off"></i></a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/admin.jsp" style="padding-left: 15px;">관리자 페이지로</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/logout.htm" style="padding-left: 15px;">로그아웃</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
                          </c:when>
<c:otherwise>
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 65px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;"><%=loginId %> 님<i class="glyphicon glyphicon-user"></i></a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/read.htm?id=<%=loginId %>" style="padding-left: 15px;">내 정보보기</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/logout.htm" style="padding-left: 15px;">로그아웃</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
</c:otherwise>
</c:choose>	   
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 10px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">고객지원</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/contact.jsp" style="padding-left: 15px;">이용문의</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/faq.jsp" style="padding-left: 15px;">자주묻는질문</a></li>
				</ul>
			</li>					
        </ul>
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 10px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">회사소개</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/company.jsp" style="padding-left: 15px;">그린비 소개</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/company2.jsp" style="padding-left: 15px;">그린비통계</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
       <ul class="nav navbar-nav pull-xs-right" style="padding-right: 10px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">투자하기</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/invest.jsp" style="padding-left: 15px;">그린비 투자란?</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/product/product.jsp" style="padding-left: 15px;">그린비 투자상품</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
        <ul class="nav navbar-nav pull-xs-right" style="padding-right: 10px; padding-top: 10px;">
          <li ><a href="/main.jsp" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">대출하기</a>
			</li>					
        </ul>
</label>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
</div>