<%@ page import="kr.or.greenb.user.domain.Users"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta charset="utf-8">
	<meta name="description" content="Miminium Admin Template v.1">
	<meta name="author" content="Isna Nur Azis">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>※GreenB※</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/mediaelementplayer.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
  <link href="asset/css/style.css" rel="stylesheet">
  <link href="css/sign-result.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
 <link rel="stylesheet" href="css/styles.css" /><!-- 
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" /> -->
  <!-- end: Css -->

  <link rel="shortcut icon" href="asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
      
      <script type="text/javascript">
      function lo() {
    	  alert("로그아웃 후에 사용가능한 작업입니다.");    	  
      }
      </script>
</head>

<body id="mimin" class="dashboard topnav">
      <!-- start: Header -->
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
          <li ><a href="/main.jsp" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">대출하기</a>
			</li>					
        </ul>
</label>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
      <!-- end: Header -->

      <!-- start: Content -->
     <div class="container" style="margin-bottom: 50px;">
<div class="resume" style="margin-top: 30px;">
<div align="center" style="margin-bottom: 50px;">
    <h1 class="page-title"><i class="fa fa-spinner"></i>&nbsp;사원 코드부여가 완료 되었습니다.</h1>
    <small>&nbsp;&nbsp;&nbsp;
    <i class="fa fa-clock-o"></i> Last Updated on: <time>Friday, October 20, 2017</time></small>
    </div>
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
    <div class="panel panel-default">
      <div class="panel-heading resume-heading">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-xs-12 col-sm-4">
              <figure>
                <img class="img-circle img-responsive" alt="" src="images/exp/developer.png">
              </figure>
                        
            </div>
<jsp:useBean id="user" class="kr.or.greenb.partnership.domain.Partnership" scope="request" />
            <div class="col-xs-12 col-sm-8">
              <ul class="list-group">
                <li class="list-group-item">아이디 :: ${user.partnerid}</li>
                <li class="list-group-item">비밀번호 :: ${user.passwd}</li>
                <li class="list-group-item">이름 :: ${user.id}</li>
                <choose>
                
                </choose>
                <li class="list-group-item"><i class="fa fa-phone"></i>담당지역 :: ${user.area}</li>
              </ul>
            </div>
            <button class="btn ripple btn-round btn-3d btn-default" onclick="location.href='lo()'" style="width: 180px; height: 30px; margin-left: 245px; margin-bottom: 20px; font-family: fantasy; margin-top: 20px;">로그인</button>
            <button class="btn ripple btn-round btn-3d btn-default" onclick="location.href='/alllist.htm'" style="width: 180px; height: 30px; margin-left: 25px; margin-bottom: 20px; font-family: fantasy; margin-top: 20px;">홈페이지</button>
          </div>
        </div>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4 style="padding-left: 20px; padding-top: 20px; padding-bottom: 10px; font-weight: bold;">사원코드 란?</h4>
        <ul class="list-group">
          <li><a class="list-group-item inactive-link" href="#">
            지역 장부를 처리할 수 있는 사원에게 부여하는 권한입니다.
            <p class="list-group-item-text">
                  </li>
                  <li>
지역 결정 후에는 그 지역을 확인 할 수 있는 권리가 생기니. 부여 시 착오 없으시기 바랍니다 
          </a>
          </li>
           <p class="list-group-item-text">
                  </li>
                  <li>
문제, 착오 발생시 개발자에게 문의 주시기 바랍니다.
          </a>
          </li>
        </ul>
      </div>
    </div>

  </div>
</div>
    
</div>

</div>
      <!-- end: content -->
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
<!-- start: Javascript -->
<script src="asset/js/jquery.min.js"></script>
<script src="asset/js/jquery.ui.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>



<!-- plugins -->
<script src="asset/js/plugins/holder.min.js"></script>
<script src="asset/js/plugins/moment.min.js"></script>
<script src="asset/js/plugins/jquery.nicescroll.js"></script>


<!-- custom -->
<script src="asset/js/main.js"></script>
<script type="text/javascript">
  $(document).ready(function(){

  });
</script>
<!-- end: Javascript -->
</body>
</html>