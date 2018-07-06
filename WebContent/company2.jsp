<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="X-UA-Compatible" content="IE=6">
<meta http-equiv="X-UA-Compatible" content="IE=5">
<title>※GreenB※</title>
  <!-- start: Css -->
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
</head>
<style type="text/css">
#ch {
 color: #0275d8;
 font-weight: bold;
}

#ch:hover {
color: white;
}

#first {
        background-color: #444;
         background-image: url("/images/logo/tong.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }*/
</style>
<body>
  <div align="center">
    <img src="/images/renuwal/mainup.png" width="100%">
  </div>
  <!-- <label class="bg-alt" style="width: 100%; background-color: #d9d9d9; height: 50px;"> -->
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
<%-- <jsp:include page="/include/mainheader.jsp" /> --%>
<!-- header -->
<!--<div align="center" style="margin-top: 50px;">
<div style="margin-bottom: 50px;"></div>
 <label style="background-color: #99ddff; width: 800px; font-family: fantasy; height: 50px;">
<h2 style="padding-top: 20px;">그린비 통계</h2>
</label> -->
<div align="center" style="margin-top: -10px;">
<label style="height: 200px; width: 100%" id="first">
<h1 style="margin-bottom: -50px; font-weight: bold; margin-top: 120px; color:#f2f2f2"> 그린비 통계</h1>
<!-- <img alt="" src="/images/logo/tong.png" height="300px" width="100%"> -->
</label>
<div class="boardType1" style="margin-bottom: 80px;">
			<table border="0" cellspacing="0" cellpadding="0">
			<colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
			<tbody>
				<tr style="height: 80px;">
					<th style="padding-left: 70px;">연 평균 수익률</th>
					<td style="padding-left: 60px;">누적 상환액</td>
				<td style="padding-left: 60px;">연체율</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<th style="padding-left: 75px; color:#3399ff; font-size: 30px;">16.61%</th>
					<td style="padding-left: 50px; color:#3399ff; font-size: 30px;">321억원</td>
				<td style="padding-left: 50px; color:#3399ff; font-size: 30px;"> 0.89%</td>
				</tr>
				<tr style="border-top:1px solid black;"><td></td><td></td><td></td></tr>
				</tbody>
			</table>
		</div>
<!-- <div style="border-top:10px solid #e6e6e6; margin-bottom: 20px;"></div> -->
<h3 style="font-size: 30px; margin-bottom: 50px;">채권 상태 분포</h3>
<div class="boardType1" style="margin-bottom: 80px;">
			<table border="0" cellspacing="0" cellpadding="0">
			<colgroup>
				<col width="300px"/>
				<col width="300px"/>
				<col width="200px"/>
			</colgroup>
			<tbody>
				<tr style="border-top:1px solid black; height: 50px;">
					<th style="background-color: #e6e6e6; padding-left: 90px;">상환중</th>
					<td style="background-color: #e6e6e6; padding-left: 40px;">상환완료</td>
				<td style="background-color: #e6e6e6;">연체 / 부실률</td>
				</tr>
				<tr style="border-top:1px solid black; height: 50px;">
					<th style="padding-left: 60px;">769.5억원(125건)</th>
					<td style="padding-left: 20px;">373억원(69건)</td>
				<td style="padding-left: 10px;"> 0%(0건)</td>
				</tr>
				<tr style="border-top:1px solid black;"><td></td><td></td><td></td></tr>
				</tbody>
			</table>
		</div>
<h3 style="font-size: 30px; margin-bottom: 50px;">투자자 비율</h3>
<img src="/images/company/3.png" >
<div style="margin-top: 50px;"></div>
<img src="/images/company/4.png" >
<div style="margin-bottom: 80px;"></div>
</div>
<footer id="footer" class="bg-black">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6">
                <h6 class="text-uppercase" style="font-weight: bold; color:#595959">그린비</h6>
                <ul class="list-unstyled">
                    <li><label style="color:#595959"">대표 : 박승영 | 사업자 등록번호 : 454-81-00787</label></li>
                    <li><label style="color:#595959"">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)</label></li>
                    <li><label style="color:#595959"">이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color:#595959""></label></li>
                </ul>
            </div>
             <div class="col-xs-6 col-sm-6 col-md-6">
                <h6 class="text-uppercase" style="font-weight: bold; color:#595959"">그린비 대부</h6>
                <ul class="list-unstyled">
                    <li><label style="color:#595959"">대표 : 박승영 | 사업자 등록번호 : 178-96-00363</label></li>
                    <li><label style="color:#595959"">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)</label></li>
                    <li><label style="color:#595959"">이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color:#595959""></label></li>
                </ul>
            </div>
           <!--  <div class="col-xs-6 col-sm-3 column">
                <h6 class="text-uppercase">다양한 링크들</h6>ㄴ
                <ul class="list-unstyled">
                    <li><a href="#">GreenB</a></li>
                    <li><a href="http://naver.com">NAVER</a></li>
                    <li><a href="http://daum.net">DAUM</a></li>
                    <li><a href="#">Terms &amp; Conditions</a></li>
                </ul>
            </div> -->
            <div class="col-xs-12 col-sm-12 column" style="margin-top: -20px;">
            <ul class="list-unstyled">
               <li><label style="color:#595959"">중개수수료를 요구하거나 받는 것은 불법입니다. 과도한 빋은 당신에게 큰 불행을 안겨줄 수 있습니다.</label></li>
               
                    <li><label style="color:#595959"">이자율 &nbsp;: &nbsp;연24.0%~연27.9%이내 &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;| &nbsp; &nbsp;연체율&nbsp;: &nbsp;연27.9%이내(2016년03월03일부터 신규,갱신,연장되는 대부계약부터 적용됩니다.)</label></li>
                    <li><label style="color:#595959"">상환기간 &nbsp;: &nbsp;최저 36개월,최대 60개월  &nbsp; &nbsp;| &nbsp; &nbsp;총대출예시비용&nbsp;: &nbsp;신용대출 연 27.9%로 100만원 대출 후 12개월 원리금 균등분할 상환 시 총 상환액은 1,157,488원 (대출상품 및 상환방법에 따라 상이할 수 있습니다.) </label></li>
                    <li><label style="color:#595959"">권리행사 또는 보전에소요되는 비용 및 신용조회 비용 외 담보대출에 한하여 설정비등의 법무비용과 중도 상환수수료가 발생할수 있음.</label></li>
                    <li><label style="color:#595959"">(담보대출 후 1년이내 중도상환 시 중도상환수수료는 중도상환원금의 최대 연2%이내, 잔존기간에 따르지만 기납입 이자와 중도상환 수수료를 합산한 금액이 연 27.9%를 초과하지 않음.)</label></li>
                	
                </ul>
            <!-- <div class="col-xs-12 col-sm-3 text-xs-right">
                <h6 class="text-uppercase">Follow</h6>
                <ul class="list-inline">
                    <li class="list-inline-item"><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
                    <li class="list-inline-item"><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a></li>
                </ul>
            </div>
        </div> -->
         <label style="color:#595959">Made by program ©2017 GreenB Company</label>
    </div>
</footer>
<!-- 스크립트 모음 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>