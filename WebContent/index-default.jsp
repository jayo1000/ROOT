<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="kr.or.greenb.accumloan.domain.Accumloan"%>
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <title>정직한 금융 GREEN BEE</title>
     <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
<meta name="description" content="그린비 정직한 금융. 쉽고 빠른 투자&대출과 최고25% 금리대출. 안전하고 실속있는 그린비입니다." />
<meta property="og:type" content="website">
<meta property="og:title" content="정직한 금융 그린비">
<meta property="og:description" content="정직한 금융 그린비. 그린비는 안전하고 실속있는 금융업체입니다.">
<meta property="og:image" content="/images/logo/logo5.png">
<meta property="og:url" content="http://www.greenbloan.com">
<meta name="naver-site-verification" content="d575fb090c981f1afdcc2dd9b29307c9c4dfe49d"/>
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<![endif]-->
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
<link rel="stylesheet" href="css/view.css" />
<link rel="stylesheet" href="css/odometer-theme-train-station.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<!-- <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" /> -->
<!-- 경계   ie9이전 버전에서는 이 css파일을 샐행하라는 조건 주석문 이다. 낮은버전에서 사용할 css파일 따로 만들어야된다-->
   <script src="http://code.jquery.com/jquery-latest.js"></script>
   <script type="text/javascript">
    $(document).ready(function(){
      $('#close').click(function() {
        $('#pop').hide();      
      });
      $.ajax({
  		type : "post",
  		data : 'accumloan,accumloan2',
  		url: "/accumlist.htm",
  		dataType: "json",
  		success: function(data) {
  		     setList(data);
		}
    });
 });
     
    function setList(data)	{
    	var list = data.list;
    	var view = "<ul style=\"display: block;\">";
    	var accum1 = document.getElementById("01");
    	var accum2 = document.getElementById("02");
    	$.each(list, function(index, accum){
    		view += "<span>";
    		view += "<font"+ accum.accumloan +">";
    		view += "</font>";
    		view += "<font"+ accum.accumloan2 +">" +"</font>";
    		view += "</span>";
    		console.log(accum.accumloan);
    		console.log(accum.accumloan2);
    		$("#01").html(accum.accumloan);
    		$("#02").html(accum.accumloan2);
    	});
    	view += "</ul>";
    	$("#view").html(view);
    }
 </script>
   <!-- media query를  처리하기위한 장소.-->
   <style type="text/css">
    #pop{
  width:300px; height:400px; background:white; color:black; 
  position:absolute; top:180px; left:90px; text-align:center; 
  border:2px solid #000;
 /*  background-image: url("/images/renuwal/pop.png"); */
   }
   .setDiv {
            padding-top: 100px;
            text-align: center;
        }
        .mask {
            position:absolute;
            left:0;
            top:0;
            z-index:9999;
            background-color:#000;
            display:none;
        }
        .window {
            display: none;
            background-color: #ffffff;
            height: 200px;
            z-index:99999;
        }
   
	/* #first {
        background-color: #444;
         background-image: url("/images/logo/back.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }*/
    body {
    margin: 30px 0px;
}
.progress {
    position: relative;
	height: 20px;
}
.progress > .progress-type {
	position: absolute;
	left: 0px;
	font-size: 12px;
	padding-left: 20px;
	padding-right: 20px;
	color: rgb(255, 255, 255);
	background-color: rgba(25, 25, 25, 0.2);
}
.progress > .progress-completed {
	position: absolute;
	right: 0px;
	font-weight: 800;
	padding-left: 10px;
}

.placeholder { color:#252525; }
input::-moz-placeholder {
  color: #252525;
  opacity: 1;
}
input:-ms-input-placeholder {
  color: #252525;
}
input::-webkit-input-placeholder {
  color: #252525;
}
input:focus::-webkit-input-placeholder,
textarea:focus::-webkit-input-placeholder { 
  color:transparent;
}
input:focus:-moz-placeholder,
textarea:focus:-moz-placeholder { 
  color:transparent;
}
input:focus::-moz-placeholder,
textarea:focus::-moz-placeholder {
  color:transparent;
}
input:focus:-ms-input-placeholder,
textarea:focus:-ms-input-placeholder {
  color:transparent;
}
        /* jssor slider loading skin double-tail-spin css */

        .jssorl-004-double-tail-spin img {
            animation-name: jssorl-004-double-tail-spin;
            animation-duration: 1.2s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-004-double-tail-spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }

#ch {
 color: #0275d8;
 font-weight: bold;
}

#ch:hover {
color: white;
}
<!-- 커서색깔 -->
        .jssorb053 .i {position:absolute;cursor:pointer;}
        .jssorb053 .i .b {fill:black;fill-opacity:0.5;stroke:#000;stroke-width:400;stroke-miterlimit:10;stroke-opacity:0.5;}
        .jssorb053 .i:hover .b {fill-opacity:.7;}
        .jssorb053 .iav .b {fill-opacity: 1;}
        .jssorb053 .i.idn {opacity:.3;}

        .jssora093 {display:block;position:absolute;cursor:pointer;}
        .jssora093 .c {fill:none;stroke:black;stroke-width:400;stroke-miterlimit:10;}
        .jssora093 .a {fill:none;stroke:black;stroke-width:400;stroke-miterlimit:10;}
        .jssora093:hover {opacity:.8;}
        .jssora093.jssora093dn {opacity:.6;}
        .jssora093.jssora093ds {opacity:.3;pointer-events:none;}
   </style>   
   <!--  쿼리문 닫음  -->  
  </head>
  <body class="bg-faded" style="color: black;">
  <!-- <h4 style="color: #007FFF; margin-top: 20px;" align="center">[ 홈페이지 리뉴얼 중입니다. 더 좋은 삼품을 가지고 돌아오겠습니다. ]</h4> -->
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
					<li><a class="nav-link page-scroll" href="/read.htm" style="padding-left: 15px;">내 정보보기</a></li>
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
   <section class="cd-slider">
  <ul>
    <li data-color="#0d0d0d">
      <div class="content" style="background-image:url(/images/logo/back.png)">
        <section id="first" style="height: 20px;">
    <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 150px; font-weight: bold; color: white; font-family: sans-serif;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 그린비 정직한 금융 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" style="color: white;">쉽고 빠른 투자&대출&nbsp;&nbsp;/&nbsp;&nbsp;최저 4.5%/최고 25%의 금리 대출&nbsp;&nbsp;/&nbsp;&nbsp;소액 분산 투자(다양한 채권의 소액)</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>대출하기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">투자하기</a></div>
        </div>
    </div>
</section>
      </div>
    </li>
    <li data-color="#1a1a1a">
      <div class="content" style="background-image:url(/images/logo/back8.png)">
        <section id="first" style="height: 20px;">
    <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 150px; font-weight: bold;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 그린비 정직한 금융 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" >쉽고 빠른 투자&대출&nbsp;&nbsp;/&nbsp;&nbsp;최저 4.5%/최고 25%의 금리 대출&nbsp;&nbsp;/&nbsp;&nbsp;소액 분산 투자(다양한 채권의 소액)</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>대출하기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">투자하기</a></div>
        </div>
    </div>
</section>
      </div>
    </li>
    <li data-color="#262626">
      <div class="content" style="background-image:url(/images/logo/back10.png)">
        <section id="first" style="height: 20px;">
    <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 150px; font-weight: bold; color: black;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 그린비 정직한 금융 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" style="color: black;">쉽고 빠른 투자&대출&nbsp;&nbsp;/&nbsp;&nbsp;최저 4.5%/최고 25%의 금리 대출&nbsp;&nbsp;/&nbsp;&nbsp;소액 분산 투자(다양한 채권의 소액)</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>대출하기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">투자하기</a></div>
        </div>
    </div>
</section>
      </div>
    </li>
  </ul>
  <nav>
    <div><a class="prev" href="#"></a></div>
    <div><a class="next" href="#"></a></div>
  </nav>
</section>
<%-- <%@ include file="/include/header.jsp"%> --%>
<section id="one"  class="bg-alt" >
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-xs-center">
                <h3 class="m-t-0 text-primary" style="margin-right: 50px; margin-bottom: 40px; margin-top: 50px; color: black;">누적 대출액</h3>
                <div id="view" name="view"></div>
                <h1 style="margin-bottom: 30px; font-size: 45px; margin-right: 40px; color: black;" id="">
                <label class="odometer" id="01"></label>억&nbsp; &nbsp;<label class="odometer" id="02"></label>만원</h1>		        
                <!-- <hr class="primary" style="padding-right: 70px;"> -->
                <%-- <c:forEach var="list" items="${list}" >   
                 <h1 style="margin-bottom: 30px; font-size: 50px; margin-right: 40px; color: black;" id="">&nbsp;${list.accumloan}</label>억&nbsp; &nbsp;${list.accumloan2}</label>만원</h1>
			        </c:forEach>	  
			   <h1 style="margin-bottom: 30px; font-size: 50px; margin-right: 40px; color: black;">&nbsp;
			   1587억&nbsp; &nbsp;4850만원</h1> --%>
			   <h5 style="margin-right: 45px; color: black;">대출 잔액 321억 8,714만원</h5>
            </div>
        </div>
    </div>
    <div class="container wow fadeInUp">
        <div class="row">
            <div class="myclass" style=" margin-bottom: 30px;" align="center">
            <!--  <div class="range range-xs-center" style=" margin-bottom: 80px;" align="center"> -->
            <table style="margin-top: 50px;">
            <tr>
            <td style="width: 250px;"><div style="text-align: center; margin-left: 50px;"><h6 align="center">평균수익율</h6></div></td>
            <td></td>
            <td style="width: 250px;"><div style="margin-left: 40px;"><h6>연체율</h6></div></td>
            <td></td>
            </tr>
            <tr>
            <td style="width: 250px;"><h4 style="padding-left: 115px;">16.61%</h4></td>
            <td><div style="border-right:2px solid #e6e6e6;"></div></td>
            <td style="width: 250px;"><h4 style="padding-left: 40px;">0.89 %</h4></td>
            <td><div style="border-right:2px solid #e6e6e6;"></div></td>
            </tr>
            </table>
                </div>
        </div>
    </div>
</section>
<section id="two" style="font-size: 14px;">
       <div class="container wow fadeInUp" align="center">
       <h1 align="center" style="font-size: 50px; margin-bottom: 20px; margin-right: 10px; margin-top: 5px;">그린비의 최신투자 상품</h1>
              <h6 align="center" style="margin-bottom: 20px; margin-right: 10px;">투자자에게는 더 높은 수익을 </h6>
              
              <img src="/images/renuwal/main-product2.png" style="width: 100%">
             </div>
</section>
<section id="three" class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-lg-14 text-xs-center">
                <h2 class="m-t-0 text-primary" style="margin-right: 30px; margin-bottom: 10px; margin-top: 10px; font-size: 50px; "><font color='green'>그린비</font> 투자 프로세스 안내</h2>
                <!-- <hr class="primary" style="padding-right: 70px;"> -->
			  <h5 style="margin-right: 30px; margin-bottom: 50px;">쉽고 편리한 투자 프로세스</h5>
            </div>
        </div>
    </div>
    <div class="container wow fadeInUp" align="center">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12 range range-xs-center" style="margin-bottom: 40px;" align="center">
                <div class="col-sm-2 col-md-2 col-xs-2" style="margin-left: 40px;"><img width="100" height="130" src="images/p1.png" style="margin-bottom: 20px;" />
				  <h5 style="font: bold; margin-bottom: 30px;" >회원가입하기</h5>
                  <h6>회원가입 후<p>로그인 합니다.</h6>
                </div>
                <div style="margin-top:80px;" class="col-sm-1">
					<img width="42" height="44" src="images/ar.png" />
				</div>
                <div class="col-sm-2 col-md-2 col-xs-2"><img width="100" height="130" src="images/p2.png"style="margin-bottom: 20px; margin-left: 20px;" />
				  <h5 style="font: bold; margin-bottom: 30px;">예치금 입금하기</h5>
                  <h6>가상계좌를 발급 받고 투자를 위한 예치금을입금합니다.</h6>
                </div>
                <div style="margin-top:80px;" class="col-sm-1">
					<img width="42" height="44" src="images/ar.png" />
				</div>
                <div class="col-sm-2 col-md-2 col-xs-2"><img width="100" height="130" src="images/p3.png" style="margin-bottom: 20px; margin-left: 20px;"/>
				  <h5 style="font: bold; margin-bottom: 30px; margin-left: 30px;">투자하기</h5>
                  <h6>원하는 상품을 선택하<p>고 투자를 합니다.</h6>
                </div>
                <div style="margin-top:80px;" class="col-sm-1">
					<img width="42" height="44" src="images/ar.png" />
				</div>
				<div class="col-sm-2 col-md-2 col-xs-2"><img width="100" height="130" src="images/p4.png" style="margin-bottom: 20px; margin-left: 20px;"/>
				  <h5 style="font: bold; margin-bottom: 30px;">상환 받고 인출하기</h5>
                  <h6>원금과 수익금을 상환<p>받고 인출합니다.</h6>
                </div> 
                </div>
        </div>
    </div>
</section>
<section id="last" style="margin-bottom: -20px;">
    <div class="container">
        <div class="row">
            <div class="range range-xs-center text-xs-center">
                <h2 class="margin-top-0 wow fadeIn" style="font-weight: bold;">투자 정보 받기</h2>
                <hr class="primary">
                <p><h6>간단하게 소통하기위한 대화창입니다. 로그인 필요없이, 글을 적어주시면 빠르게 답변해드리겠습니다..</h6></p>
            </div>
            <div class="col-sm-10 col-md-10 col-xs-10 text-xs-center" style="margin-left: 100px;" align="center">
                <form class="contact-form row" method="post" action="/invest.htm">
                    <div class="col-sm-4 col-md-4 col-xs-4">
                        <label></label>
                        <input type="text" class="form-control" placeholder="이름" name="name" id="name" required>
                    </div>
                    <div class="col-sm-4 col-md-4 col-xs-4">
                        <label></label>
                        <input type="text" class="form-control" placeholder="이메일" name="email" id="email" required>
                    </div>
                    <div class="col-sm-4 col-md-4 col-xs-4">
                        <label></label>
                        <input type="text" class="form-control" placeholder="연락처" name="phonenumber" id="phonenumber" required>
                    </div>
                    <div class="col-sm-12 col-md-12 col-xs-12">
                        <label></label>
                        <textarea class="form-control" rows="9" placeholder="원하시는 투자정보를 입력해주세요" id="wanted" name="wanted" required></textarea>
                        <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
                    </div>
                    <div class="col-sm-4 col-md-4 col-xs-4 offset-md-4" style="margin-top: 30px;">
                    <button type="submit"  class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp style="font-size: 20px; margin-top: 20px; margin-bottom: 20px; padding: 15px 60px;"">
          			 <span class="icon mdi mdi-basket"></span>투자정보받기  </button>
                     <!--   <a href="/index.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 20px; margin-top: 20px; margin-bottom: 20px; padding: 15px 60px;">
          			 <span class="icon mdi mdi-basket"></span>투자정보받기</a> -->
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
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
<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body text-xs-center">
                <img src="//placehold.it/1200x700/222?text=..." id="galleryImage" class="center-block img-fluid">
                <p>
                    <br>
                    <button class="btn btn-primary btn-lg" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body text-xs-center">
                <h2 class="text-xs-center">투자 정보 받기</h2>
                <h6 class="text-xs-center">본 화면이 기본이지만. 회원가입과 로그인은 다른화면으로넘어갑니다</h6>
                <p class="text-xs-center">
                    부트스트랩4를 베이스로 만든 사이트입니다.
                </p>
                <p class="text-xs-center"><a href="http://192.168.0.35/">[ 임시사이트 ]</a></p>
                <p class="text-xs-center"><a href="http://192.168.0.39/">[ 임시사이트 ]</a></p>
                <br>
                <button class="btn btn-primary btn-lg" data-dismiss="modal" aria-hidden="true"> OK </button>
            </div>
        </div>
    </div>
</div>
<div id="alertModal" class="modal fade" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body text-xs-center">
                <h2 class="text-xs-center">작동 불가!</h2>
                <p class="text-xs-center">You clicked the button, but it doesn't actually go anywhere because this is only a demo.</p>
                <p class="text-xs-center">클릭한 버튼은 실제로 어디도 가지 않는 버튼입니다.</p>
                <br>
                <button class="btn btn-primary btn-lg" data-dismiss="modal" aria-hidden="true" onclick="location.href='/index.htm'">OK</button>
            </div>
        </div>
    </div>
</div>
<!--scripts loaded here-->   
   <!-- 스크립트 모음 -->
   <div id="pop">
  <div style="height:330px;">
   <font style="font-weight: bold;">홈페이지 리뉴얼 공지.</font><br><br>
   <font color="#007FFF">정직한 금융 그린비입니다.</font>
   <br>
   <font>홈페이지 리뉴얼로 인하여 현재</font>
   <br>
   <font>많은 자료와 정보들이 제공되지 </font>
   <br>
   <font>못한 점 양해부탁드립니다.</font>
   <br>
   <font>보다 유익한 정보를 여러분들께</font>
   <br>
   <font>드릴 날을 기다리며 발전하는</font>
   <br>
   <font>그린비가 되어 돌아오겠습니다.</font>
    <br>
     <br>
     <br>
    <a href="/employment.jsp" style="color:#007FFF"><b>채용정보 바로가기</b></a>
    <br>
    <a href="/contact.jsp" style="color:#007FFF; padding-right:1px;"><b>이용문의 바로가기</b></a>
  </div>
 <div>
     <div style="width: 100px; margin: auto;">
                                   <button id="close" class=" ripple-infinite btn-gradient btn-info">
                                    <div>
                                      <span>닫기</span>
                                    </div>
                                  </button>
                              </div>
    <!-- <button id="close" style="width: 100px; margin:auto;">닫기</button> -->
  </div>
</div>
       <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <!-- <script src="js/jssor.slider-25.2.0.min.js" type="text/javascript"></script> -->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              {$Duration:500,$Delay:30,$Cols:8,$Rows:4,$Clip:15,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:2049,$Easing:$Jease$.$OutQuad},
              {$Duration:500,$Delay:80,$Cols:8,$Rows:4,$Clip:15,$SlideOut:true,$Easing:$Jease$.$OutQuad},
              {$Duration:1000,x:-0.2,$Delay:40,$Cols:12,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Assembly:260,$Easing:{$Left:$Jease$.$InOutExpo,$Opacity:$Jease$.$InOutQuad},$Opacity:2,$Outside:true,$Round:{$Top:0.5}},
              {$Duration:2000,y:-1,$Delay:60,$Cols:15,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:$Jease$.$OutJump,$Round:{$Top:1.5}},
              {$Duration:1200,x:0.2,y:-0.1,$Delay:20,$Cols:8,$Rows:4,$Clip:15,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:260,$Easing:{$Left:$Jease$.$InWave,$Top:$Jease$.$InWave,$Clip:$Jease$.$OutQuad},$Round:{$Left:1.3,$Top:2.5}}
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 980);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        });
    </script>
    <script type="text/javascript">
   var myVar=setInterval(function(){myTimer()},1);
   var count = 0;
   function myTimer() {
   if(count < 40){
     $('.progress').css('width', count + "%");
     count += 0.1;
      /* document.getElementById("demo").innerHTML = Math.round(count) +"%"; */
      // code to do when loading
     }
     
     else if(count > 40){  
         // code to do after loading
     count = 40;   
     }
   }
   </script>
      <%-- <h1 style="margin-bottom: 30px; font-size: 50px; margin-right: 40px; color: black;" id="">&nbsp;${list.accumloan}억&nbsp; &nbsp;${list.accumloan2}만원</h1> --%>    
   
    <!-- 슬라이더 추가하기위한 스크립트 -->
	<script>
	setTimeout(function() {	
    $("#01").html();
    $("#02").html();
  	}, 1000);
	</script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="/js/scripts.js"></script>
    <!-- slider를 사용하기 위한 -->
    <!-- 익스플로러에서 place holder를 나오게하기위한 -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/js/placeholder_ie2.js"></script>
	<script src="/js/script_ie9.js"></script>
 	<script type="text/javascript" src="js/view.js"></script>  
    <!-- Javascript -->
    <!-- odometer 만들기 -->
    <script src="/js/odometer.js"></script>
        <!-- 경계선 -->
  </body>
</html>