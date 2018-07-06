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
<script type="text/javascript">
function play(){
	var money = document.getElementById("money").value;
	var loan
	loan = (("%.2f%%%n", money * 125.0 / 100.0))
	var sum = document.getElementById("loan");
	var total = document.getElementById("total");
	total.style.display="";
	
	sum.value = parseInt(loan);
	console.log(sum.value);	
}
</script>
</head>
<body>
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="/images/logo/logos.png" style="margin-top: 5px;"></a>
 <c:choose>
    <c:when test="${empty cookie.loginId }">
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 65px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">로그인</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/sign.jsp" style="padding-left: 15px;">회원가입</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/login.jsp" style="padding-left: 15px;">로그인</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
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
					<li><a class="nav-link page-scroll" href="/sign.jsp" style="padding-left: 15px;">내 정보보기</a></li>
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
<div align="center" style="margin-top: 50px; text-align: center;">
<h6> 수익성과 안정성의 밸런스를 맞추다</h6>
<h1>그린비 투자</h1>
</div>
<div class="sub_contents" align="center" style="margin-top: 55px;">
	<label style="border: 1px solid #cccccc; width:600px; height: 120px; margin-bottom: 20px; ">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 30px;">얼마를 투자하시겠습니까?
	<input type="text" id="money" style="width:150px; margin-left: 30px; text-align: right">&nbsp;만원
	<button type="button" id="cal" class="btn-default" style="font-size: 15px; margin-left: 305px; width: 150px;" onclick="play()">계산하기<i class="glyphicon glyphicon-stats"></i></button></li>
	</ul>
	</label>
	<div id="total" style="font-size: 18px; display: none;"> 투자시 받으시는 금액은 <input type="text" id="loan" style="width:150px; height: 30px; margin-left: 30px; text-align: right"> 만원 입니다.</div>
</div>
<div align="center" style="margin-top: 30px; margin-bottom: 50px;">
<img src="/images/invest/1.png">
</div>
<div class="sub_contents" align="center" style="margin-top: 55px;">
<label class="bg-alt" align="center" style="width: 100%; background-color: #E4F4F2; height: 180px; margin-bottom: 50px;">
	<label style="width:750px; height: 180px; margin-bottom: 20px;">
	<img align="right" src="/images/invest/3.png" style="margin-top: 30px; margin-right: 100px;">
	<ul style="text-align: left; margin-left: 30px; margin-top: 10px;">
	<li style="list-style: none; padding-top:30px; margin-right: 50px; color: #808080">고객보호 정책 안내</li>
	<li style="list-style: none; font-size: 23px; "> 그린비는 다양한 정책으로</li>       
	<li style="list-style: none; font-size: 23px; "> 고객들을 보호합니다.</li>	
	</ul>
	</label>
</label>
	</div>


<div align="center" style="margin-top: 50px; text-align: center;">
<h1>수익성에서 비교 우위, 그린비</h1>
</div>
<div></div>
<div align="center" style="margin-top: 15px; margin-bottom: 50px;">
<img src="/images/invest/2.png" style="margin-top: 30px;">
</div>
<div align="center">
	<label style=" width:580px; height: 170px; margin-bottom: 20px; ">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:10px; font-size: 23px; padding-bottom: 10px;">연 수익률 10% 내외의 그린비 투자</li>
	<li style="list-style: none; color: #808080">저금리 시대의 적금은 수익률이 만족스럽지 못합니다.</li>       
	<li style="list-style: none; color: #808080">그린비는 연평균 10% 내외의 수익률을 제공합니다.</li>	
	</ul>
	</label>
</div>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 1px;"></label>
<div align="center" style="margin-top: 50px; text-align: center;">
<h1>안정성에서 비교 우위, 그린비</h1>
</div>
<div align="center" style="margin-top: 15px; margin-bottom: 50px;">
<img src="/images/invest/4.png" style="margin-top: 30px;">
</div>
<div align="center">
	<label style="width:580px; height: 200px; margin-bottom: 20px; ">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; padding-bottom: 10px;">수백개 채권에 자동 분산투자</li>
	<li style="list-style: none; color: #808080">높은 수익률을 제시하는 P2P투자에서 중요한 것은 바로 위험의 분산입니다.</li>       
	<li style="list-style: none; color: #808080">그린비는 전화 한번으로 분산투자가 가능합니다.</li>	
	</ul>
	</label>
</div>
<div align="center">
<a href="/product/product.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 20px; margin-top: -40px; margin-bottom: 20px;">
           <span class="icon mdi mdi-basket"></span>투자상품 보러가기</a>
</div>
<div align="center">
<label class="bg-alt" style="width: 100%; background-color: #E4F4F2; height: 400px;">
<h1 style="margin-top: 40px;">그린비의 간편한 투자과정</h1>
	<label style=" width:700px; height: 180px; ">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; margin-right: 50px;">[ 1 ]  투자신청 </li>
	<li style="list-style: none; ">  : 내가 원하는 투자를 상담후, 투자를 결정한다.</li>       
	<li style="list-style: none; padding-top:10px;"> [ 2 ]  발급받은 MY 그린비 계좌의 투자금액을 입금</li>
	<li style="list-style: none; "> : 상담후 부여받은 MY 그린비 계좌에 신청한 투자금액을 입금하면 투자가 완료됩니다.</li>              
	<li style="list-style: none; padding-top:10px;"> [ 3 ]  투자완료 및 원리금 수취</li>
	<li style="list-style: none; ">  : 대출자가 매달 출금을 상환을 할 때마다 투자 원금과 이자를 수취하게 됩니다.</li>       
	<li style="list-style: none; padding-top:10px;"> ( 자세한 사항 및, 투자 상담신청은. <a href="/contact.jsp" style="color: #17CCB4">이용안내</a> 페이지에서 확인바랍니다. )</li>		
	</ul>
	</label>
</label>
</div>
<!--  -->
<footer id="footer" class="bg-black">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6">
                <h6 class="text-uppercase" style="font-weight: bold;">그린비</h6>
                <ul class="list-unstyled">
                    <li><label style="color: gray">대표 : 박승영 | 사업자 등록번호 : 454-81-00787</label></li>
                    <li><label style="color: gray">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)</label></li>
                    <li><label style="color: gray">이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color: gray"></label></li>
                </ul>
            </div>
             <div class="col-xs-6 col-sm-6 col-md-6">
                <h6 class="text-uppercase" style="font-weight: bold;">그린비 대부</h6>
                <ul class="list-unstyled">
                    <li><label style="color: gray">대표 : 박승영 | 사업자 등록번호 : 178-96-00363</label></li>
                    <li><label style="color: gray">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)</label></li>
                    <li><label style="color: gray">이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color: gray"></label></li>
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
               <li><label style="color: gray">대출금이 연 20%이내(연체금리 연 25%이내) 플랫폼 이용료 외 </label></li>
               
                    <li><label style="color: gray">취급수수료등 기타 부대비용 없습니다. 중개수수료를 요구하거나 받는 행위는 불법입니다. 과도한 빚은 당신에게 큰 불행을 안겨줄 수 있습니다.</label></li>
                    <li><label style="color: gray">그린비는 투자원금과 수익을 보장하지 않으며, 투자손실에 대한 책임은 모두 투자자에게 있습니다.</label></li>
                </ul>
            <!-- <div class="col-xs-12 col-sm-3 text-xs-right">
                <h6 class="text-uppercase">Follow</h6>
                <ul class="list-inline">
                    <li class="list-inline-item"><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
                    <li class="list-inline-item"><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a></li>
                </ul>
            </div>
        </div> -->
         <font color="#3399ff">Made by program ©2017 GreenB Company</font>
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