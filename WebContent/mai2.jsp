<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <title>Let's Go Life Cruise!</title>
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
<link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/button.css" />
<link rel="stylesheet" href="/css/view.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- jQuery library (served from Google) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- bxSlider Javascript file -->
<script src="/js/jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="/lib/jquery.bxslider.css" rel="stylesheet" />
<style>
	.imageblock img{
		max-width: 100%;
		height: auto;
	}
.bo:hover{
    color:#fff;
    border-color: white;
    background-color: ;
  }  
#ch {
 color: #0275d8;
 font-weight: bold;
}

#ch:hover {
color: white;
}
.dropdown-toggle::after {
content: none;
}
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
        .cd-slider {
    position: relative;
    width: 100%;
    height: 300px;
    overflow: hidden;
}
</style>
<BODY>
<!-- <label class="bg-alt" style="width: 100%; background-color: #154E9B; height: 3px;"></label> -->
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<table width="820" border="0" cellspacing="0" cellpadding="0" align="center" ><tr>
<td>
<a class="brand" href="http://greenbloan.com/mai.jsp"><img src="/images/logo/logos.png" style="margin-top: 15px;"></a>
</td><td>
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 5px; padding-top: 25px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">고객센터</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/cruise/faq1.jsp" style="padding-left: 15px;">공지사항/뉴스</a></li>
					<li><a class="nav-link page-scroll" href="/cruise/faq2.jsp" style="padding-left: 15px;">묻고 답하기</a></li>
					<li><a class="nav-link page-scroll" href="/cruise/faq3.jsp" style="padding-left: 15px;">자주하는 질문</a></li>
					<li><a class="nav-link page-scroll" href="/cruise/faq4.jsp" style="padding-left: 15px;">디지털앨범CD신청</a></li>
				</ul>
			</li>					
        </ul>
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 5px; padding-top: 25px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">커뮤니티</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/cruise/community1.jsp" style="padding-left: 15px;">여행 후기</a></li>
					<li><a class="nav-link page-scroll" href="/cruise/community2.jsp" style="padding-left: 15px;">동영상갤러리</a></li>
					<li><a class="nav-link page-scroll" href="/cruise/community3.jsp" style="padding-left: 15px;">포토갤러리</a></li>
				</ul>
			</li>					
        </ul>
         <ul class="nav navbar-nav pull-xs-right" style="padding-right: 5px; padding-top: 25px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">해외 일반여행</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/cruise/Foreign-travel.jsp" style="padding-left: 15px;">해외 일반여행 소개</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
                <ul class="nav navbar-nav pull-xs-right" style="padding-right: 5px; padding-top: 25px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">국내 일반여행</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/cruise/Domestic-travel.jsp" style="padding-left: 15px;">국내 일반여행 소개</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
        <ul class="nav navbar-nav pull-xs-right" style="padding-right: 5px; padding-top: 25px; margin-left: -45px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">회사소개</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/cruise/company1.jsp" style="padding-left: 15px;">회사소개</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/cruise/company2.jsp" style="padding-left: 15px;">찾아오시는길</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
        </td></tr></table>
</label>
<div>
<section class="cd-slider">
  <ul>
    <li data-color="#0d0d0d">
      <div class="content" style="background-image:url(/images/logos/1.png)">
        <section id="first" style="height: 20px;">
     <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 20px; font-weight: bold;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 알로하 투어 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" >고객만족을 위한 안전한 여행&nbsp;&nbsp;/&nbsp;&nbsp;알로하만의 저렴과 실리의 여행!</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>국내 여행 찾아보기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">해외 여행 찾아보기</a></div>
        </div>
    </div>
</section>
      </div>
    </li>
    <li data-color="#1a1a1a">
      <div class="content" style="background-image:url(/images/logos/2.png)">
        <section id="first" style="height: 20px;">
  <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 20px; font-weight: bold; color: white; font-family: sans-serif;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 알로하 투어 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" style="color: white;">고객만족을 위한 안전한 여행&nbsp;&nbsp;/&nbsp;&nbsp;알로하만의 저렴과 실리의 여행!</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>국내 여행 찾아보기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">해외 여행 찾아보기</a></div>
        </div>
    </div>
</section>
      </div>
    </li>
    <li data-color="#262626">
      <div class="content" style="background-image:url(/images/logos/3.png)">
        <section id="first" style="height: 20px;">
    <div class="header-content">
        <div class="inner" align="center">
            <h1 class="text-uppercase text-bold text-darkest" style="margin-bottom: 30px; font-size: 70px; padding-top: 20px; font-weight: bold;"><img src="images/logo/logo5.png" style="margin-bottom: 15px;"> 알로하 투어 </h1>
            <h6 class="wow fadeIn text-normal wow fadeIn" >고객만족을 위한 안전한 여행&nbsp;&nbsp;/&nbsp;&nbsp;알로하만의 저렴과 실리의 여행!</h6>
            <%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
           <div class="offset-top-35 group" style="margin-top: 10px;">
           <a href="main.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="margin-right: 50px; font-size: 20px;">
           <span class="icon mdi mdi-basket"></span>국내 여행 찾아보기</a>
           <a href="invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3" style="font-size: 20px;">해외 여행 찾아보기</a></div>
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
<!-- <img src="/images/cruise/base1.png" style="width: 100%"> -->
<!-- <img src="/images/cruise/base2.png" style="width: 100%"> -->
<img src="/images/cruise/base3.png" style="width: 100%">
<img src="/images/cruise/base4.png" style="width: 100%">
</div>
<footer id="footer" class="bg-alt" style="margin-top: -35px; margin-bottom: -30px; margin-left: 130px; font-size: 13px; height: 50px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8">
                <h6 class="text-uppercase" style="font-weight: bold;"></h6>
                <ul class="list-unstyled">
                    <li><label style="color: gray">대표 : 박승영 | 사업자 등록번호 : 178-96-00363  |  개인정보관리책임자 : 박승영    |  이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color: gray">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)   |   대표전화 : 032-866-9996</label></li>
                    <li><label style="color: gray">Made by program ©2017 GreenB Company</label><label style="margin-left: 434px;"></label></li>
                </ul>
            </div>
             <div class="col-xs-4 col-sm-4 col-md-4">
                <ul class="list-unstyled">          
                <li><label style="margin-bottom: 1px;">
                    <a href="http://blogattach.naver.com/3da8219283d1d9052acfa89ba2423f47e2b642adf7/20170926_110_blogfile/feeea1004_1506404069672_SOZv40_pdf/%C8%DE%B8%D5%B6%F3%C0%CC%C7%C1%C5%A9%B7%E7%C1%EE%C8%B8%BF%F8%B0%A1%C0%D4%BD%C5%C3%BB%BC%AD%28NCR%C1%F6%29A4.pdf" style="color: blue;"><img src="/images/cruise/sign-2.png"></a></label></li>
                    <li><label>
                    <a href="http://blogattach.naver.com/5cc940f0e2bdb8644baec9fac3235e2683d723cc7f/20170926_283_blogfile/feeea1004_1506403963353_WUfcTp_pdf/%B1%D7%B8%B0%BA%F1%B6%F3%C0%CC%C7%C1+%C8%B8%BF%F8%B0%A1%C0%D4%BD%C5%C3%BB%BC%AD.pdf" style="color: blue;"><img src="/images/cruise/sign-1.png"></a></label></li>
                </ul>
            </div>
</footer>
<!-- 스크립트 모음 -->
 <script type="text/javascript">
	$(document).ready(function(){
		  $('.bxslider').bxSlider();
		});
	
        jQuery(document).ready(function ($) {

        	$('#myCarousel').carousel({
            	interval:   4000
        	});
        	 
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="/js/scripts.js"></script>
	<script src="/js/script_ie9.js"></script>
 	<script type="text/javascript" src="js/view.js"></script>  
</BODY>
</HTML>