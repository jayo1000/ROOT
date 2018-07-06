<%@ page contentType="text/html; charset=utf-8" %>
<%-- <%@page import="kr.or.greenb.accumLoan.dao.AccumLoanDao"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.greenb.accumLoan.dao.JdbcAccumLoanDao"%>
<%@page import="kr.or.greenb.common.factory.DaoFactory"%>
<%@page import="kr.or.greenb.accumLoan.domain.AccumLoan"%>
<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="accumloan" class="kr.or.greenb.accumLoan.domain.AccumLoan"
	scope="request" />
<jsp:setProperty property="*" name="accumloan" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="X-UA-Compatible" content="IE=6">
    <meta http-equiv="X-UA-Compatible" content="IE=5">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
    <title>P2P GREEN B</title>
    <meta name="description" content="p2p 금융의 선두주자 그린비입니다." />
     <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <meta name="generator" content="p2p 그린비">
      <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
<!--     <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" /> -->
   <!-- 경계   ie9이전 버전에서는 이 css파일을 샐행하라는 조건 주석문 이다. 낮은버전에서 사용할 css파일 따로 만들어야된다--> 
   
   <!-- media query를  처리하기위한 장소.-->
   <style type="text/css">
   @media (max-width:300px;){
   .myclass {
   	width: 200px;
   	height: 200px;
   		}
	} 
	#first {
        background-color: #444;
         background-image: url("/images/logo/back.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }
    #last {
        background-color: #444;
         background-image: url("/images/logo/back10.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
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
   </style>   
   <!--  쿼리문 닫음  -->  
  </head>
  <body class="bg-faded">
  <!-- <label class="bg-alt" style="width: 100%; background-color: #d9d9d9; height: 50px;"> -->
 
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="images/logo/logos.png" style="margin-top: 5px;"></a>
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
          <li ><a href="/main1.jsp" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">대출하기</a>
			</li>					
        </ul>
</label>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
    <section id="first" style="height: 20px;">
    <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 30px; font-weight: bold; color: white;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 그린비 정직한 P2P 금융 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" style="color: white;">쉽고 빠른 투자&대출&nbsp;&nbsp;/&nbsp;&nbsp;최저 4.5%/최고 15%의 금리 대출&nbsp;&nbsp;/&nbsp;&nbsp;소액 분산 투자(다양한 채권의 소액)</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main1.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>대출하기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">투자하기</a></div>
        </div>
    </div>
</section>
<%-- <%@ include file="/include/header.jsp"%> --%>
<section id="one"  class="bg-alt" >
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-xs-center">
                <h3 class="m-t-0 text-primary" style="margin-right: 30px; margin-bottom: 40px; margin-top: 50px;">누적 대출액</h3>
                <!-- <hr class="primary" style="padding-right: 70px;"> -->
                 <h1 style="margin-bottom: 30px; font-size: 50px; margin-right: 40px;">&nbsp;1587억&nbsp; 4,&nbsp;850만원</h1>
			  <h5 style="margin-right: 50px;">대출 잔액 321억 8,714만원</h5>
            </div>
        </div>
    </div>
    <div class="container wow fadeInUp">
        <div class="row">
            <div class="myclass" style=" margin-bottom: 30px;" align="center">
            <!--  <div class="range range-xs-center" style=" margin-bottom: 80px;" align="center"> -->
            <table style="margin-top: 50px;">
            <tr>
            <td style="width: 250px;"><div style="text-align: center; margin-left: 45px;"><h6 align="center">평균수익율</h6></div></td>
            <td></td>
            <td style="width: 250px;"><div style="margin-left: 70px; "><h6>연체율</h6></div></td>
            <td></td>
            <td style="width: 250px;"><div style="margin-left: 25px;"><h6>부실율</h6></div></td>
            </tr>
            <tr>
            <td style="width: 250px;"><h4 style="padding-left: 115px;">9.74%</h4></td>
            <td><div style="border-right:2px solid #e6e6e6;"></div></td>
            <td style="width: 250px;"><h4 style="padding-left: 80px;">0 %</h4></td>
            <td><div style="border-right:2px solid #e6e6e6;"></div></td>
            <td style="width: 250px;"><h4 style="padding-left: 38px;">0 %</h4></td>
            </tr>
            </table>
                </div>
        </div>
    </div>
</section>
<section id="two">
       <div class="container wow fadeInUp" align="center">
       <h1 align="center" style="font-size: 50px; margin-bottom: 30px; margin-right: 10px; margin-top: 10px;">그린비의 최신투자 상품</h1>
              <h6 align="center" style="margin-bottom: 20px; margin-right: 10px;">투자자에게는 더 높은 수익을 </h6>
              <div class="range range-xs-center">
              <table style="height: 330px; width: 300px;" border="0">
               <tr>
               <td>
               <div align="center">
<label style="width: 300px; height: 320px;">
<table style="width: 300px; height: 330px; border: 1px solid #CBCBCB;">
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="5" width="309" height="119"><img src="/images/index/main-1-1.png" style=""></td>
</tr>
<!-- 상품 메인이름 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" style="padding-left: 8px;" height="50">
<!-- <font style="font-weight: bold;" size="4px;">경남 의창 무동리 창원STX칸 1차</font> -->
<font style="font-weight: bold; font-size: 13px;">OOO 주식회사</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;" height="50">투자모집기간</td>
<td colspan="3" style="color: gray; font-size: 13px; padding-left: 35px;" height="50">&nbsp;&nbsp;&nbsp;&nbsp;2017-07-18 ~ 2017-07-18</td>
</tr>
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;"  height="50">대출금액/금리</td>
<td colspan="3" style="padding-left: 45px; color: #3399ff; font-size:13px;"  height="50">&nbsp;&nbsp;2,700만원 / <font color="#ff4d4d" style="font-size:13px;">12%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" align="center">
<a href="/product/product1.jsp" class="btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 13px; padding: 10px 15px;">
           <!-- <span class="icon mdi mdi-basket"></span> -->자세히보기</a>
</tr>
</table>
</label>
</div>
                </td>
              <td style="padding-left: 10px;">
                             <div align="center">
<label style="width: 300px; height: 320px;">
<table style="width: 300px; height: 330px; border: 1px solid #CBCBCB;">
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="5" width="309" height="119"><img src="/images/index/main-2-2.png" style=""></td>
</tr>
<!-- 상품 메인이름 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" style="padding-left: 8px;" height="50">
<!-- <font style="font-weight: bold;" size="4px;">경남 의창 무동리 창원STX칸 1차</font> -->
<font style="font-weight: bold; font-size: 13px;">마리에드 준비중</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;" height="50">투자모집기간</td>
<td colspan="3" style="color: gray; font-size: 13px; padding-left: 35px;" height="50">&nbsp;&nbsp;&nbsp;&nbsp;2017-07-17 ~ 2017-07-17</td>
</tr>
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;"  height="50">대출금액/금리</td>
<td colspan="3" style="padding-left: 45px; color: #3399ff; font-size:13px;"  height="50">&nbsp;&nbsp;2,000만원 / <font color="#ff4d4d" style="font-size:13px;">12%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" align="center">
<a href="/product/product2.jsp" class="btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 13px; padding: 10px 15px;">
           <!-- <span class="icon mdi mdi-basket"></span> -->자세히보기</a>
</tr>
</table>
</label>
</div>
</td>
               </tr>
               </table>
            </div>
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
                <p><h6 style="font-weight: bold;">간단하게 소통하기위한 대화창입니다. 로그인 필요없이, 글을 적어주시면 빠르게 답변해드리겠습니다..</h6></p>
            </div>
            <div class="col-sm-10 col-md-10 col-xs-10 text-xs-center" style="margin-left: 100px;" align="center">
                <form class="contact-form row" >
                    <div class="col-sm-4 col-md-4 col-xs-4">
                        <label></label>
                        <input type="text" class="form-control" placeholder="이름" name="">
                    </div>
                    <div class="col-sm-4 col-md-4 col-xs-4">
                        <label></label>
                        <input type="text" class="form-control" placeholder="이메일">
                    </div>
                    <div class="col-sm-4 col-md-4 col-xs-4">
                        <label></label>
                        <input type="text" class="form-control" placeholder="연락처">
                    </div>
                    <div class="col-sm-12 col-md-12 col-xs-12">
                        <label></label>
                        <textarea class="form-control" rows="9" placeholder="원하시는 투자정보를 입력해주세요" id="comment"></textarea>
                    </div>
                    <div class="col-sm-4 col-md-4 col-xs-4 offset-md-4">
                        <label></label>
                       <a href="/index.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 20px; margin-top: 20px; margin-bottom: 20px; padding: 15px 80px;">
          	 <span class="icon mdi mdi-basket"></span>투자정보받기</a>
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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="js/scripts.js"></script>
    <!-- slider를 사용하기 위한 -->
    <!-- 익스플로러에서 place holder를 나오게하기위한 -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/js/placeholder_ie2.js"></script>
	<script src="/js/script_ie9.js"></script>   
    <!-- Javascript -->
        <!-- 경계선 -->
  </body>
</html>