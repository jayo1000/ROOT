<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>Let's Go Life Cruise!</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css"
	rel="stylesheet" />
<meta name="description"
	content="그린비 정직한 금융. 쉽고 빠른 투자&대출과 최고25% 금리대출. 안전하고 실속있는 그린비입니다." />
<meta property="og:type" content="website">
<meta property="og:title" content="정직한 금융 그린비">
<meta property="og:description"
	content="정직한 금융 그린비. 그린비는 안전하고 실속있는 금융업체입니다.">
<meta property="og:image" content="/images/logo/logo5.png">
<meta property="og:url" content="http://localhost">
<meta name="naver-site-verification"
	content="d575fb090c981f1afdcc2dd9b29307c9c4dfe49d" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="/asset/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/button.css" />
<link rel="stylesheet" href="/css/view.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Raleway:300,500|Arvo:700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/modernizr.custom.79639.js"></script> 
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- jQuery library (served from Google) -->
<style>
/*preload classes*/
.svw {
	width: 50px;
	height: 20px;
	background: #fff;
}

.svw ul {
	position: relative;
	left: -999em;
}

/*core classes*/
.stripViewer {
	position: relative;
	overflow: hidden;
	border: 5px solid #ff0000;
	margin: 0 0 1px 0;
}

.stripViewer ul { /* this is your UL of images */
	margin: 0;
	padding: 0;
	position: relative;
	left: 0;
	top: 0;
	width: 1%;
	list-style-type: none;
}

.stripViewer ul li {
	float: left;
}

.stripTransmitter {
	overflow: auto;
	width: 1%;
}

.stripTransmitter ul {
	margin: 0;
	padding: 0;
	position: relative;
	list-style-type: none;
}

.stripTransmitter ul li {
	width: 20px;
	float: left;
	margin: 0 1px 1px 0;
}

.stripTransmitter a {
	font: bold 10px Verdana, Arial;
	text-align: center;
	line-height: 22px;
	background: #ff0000;
	color: #fff;
	text-decoration: none;
	display: block;
}

.stripTransmitter a:hover, a.current {
	background: #fff;
	color: #ff0000;
}

/*tooltips formatting*/
.tooltip {
	padding: 0.5em;
	background: #fff;
	color: #000;
	border: 5px solid #dedede;
}
/** 여기위까지 슬라이드 */
.imageblock img {
	max-width: 100%;
	height: auto;
}

.bo:hover {
	color: #fff;
	border-color: white;
	background-color:;
}

#ch {
	color: #0275d8;
	font-weight: bold;
}

#right {
	right: 50%;
}

#ch:hover {
	color: white;
}

.dropdown-toggle::after {
	content: none;
}

#pop {
	width: 300px;
	height: 400px;
	background: white;
	color: black;
	position: absolute;
	top: 180px;
	left: 90px;
	text-align: center;
	border: 2px solid #000;
	/*  background-image: url("/images/renuwal/pop.png"); */
}

.setDiv {
	padding-top: 100px;
	text-align: center;
}

.mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 9999;
	background-color: #000;
	display: none;
}

.window {
	display: none;
	background-color: #ffffff;
	height: 200px;
	z-index: 99999;
}

.progress {
	position: relative;
	height: 20px;
}

.progress>.progress-type {
	position: absolute;
	left: 0px;
	font-size: 12px;
	padding-left: 20px;
	padding-right: 20px;
	color: rgb(255, 255, 255);
	background-color: rgba(25, 25, 25, 0.2);
}

.progress>.progress-completed {
	position: absolute;
	right: 0px;
	font-weight: 800;
	padding-left: 10px;
}

.placeholder {
	color: #252525;
}

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

input:focus::-webkit-input-placeholder, textarea:focus::-webkit-input-placeholder
	{
	color: transparent;
}

input:focus:-moz-placeholder, textarea:focus:-moz-placeholder {
	color: transparent;
}

input:focus::-moz-placeholder, textarea:focus::-moz-placeholder {
	color: transparent;
}

input:focus:-ms-input-placeholder, textarea:focus:-ms-input-placeholder
	{
	color: transparent;
}
/* jssor slider loading skin double-tail-spin css */
.jssorl-004-double-tail-spin img {
	animation-name: jssorl-004-double-tail-spin;
	animation-duration: 1.2s;
	animation-iteration-count: infinite;
	animation-timing-function: linear;
}

@
keyframes jssorl-004-double-tail-spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}

}
/* .cd-slider {
	position: relative;	
	width: 100%;	
	overflow: hidden;
} */
</style>
<BODY>
	<!-- <label class="bg-alt" style="width: 100%; background-color: #154E9B; height: 3px;"></label> -->
	<label class="bg-alt"
		style="width: 100%; background-color: white; height: 80px;">
		<table width="820" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td><a class="brand" href="http://localhost/mai.jsp"><img
						src="/images/logo/logos.png" style="margin-top: 15px;"></a></td>
				<td>
					<ul class="nav navbar-nav pull-xs-right"
						style="padding-right: 5px; padding-top: 25px;">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"
							style="font-size: 15px; font-weight: bold;">고객센터</a> <!-- <span class="caret"></span> -->
							<ul class="dropdown-menu" role="menu">
								<li><a class="nav-link page-scroll" href="/cruise/faq1.jsp"
									style="padding-left: 15px;">공지사항/뉴스</a></li>
								<li><a class="nav-link page-scroll" href="/cruise/faq2.jsp"
									style="padding-left: 15px;">묻고 답하기</a></li>
								<li><a class="nav-link page-scroll" href="/cruise/faq3.jsp"
									style="padding-left: 15px;">자주하는 질문</a></li>
								<li><a class="nav-link page-scroll" href="/cruise/faq4.jsp"
									style="padding-left: 15px;">디지털앨범CD신청</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-xs-right"
						style="padding-right: 5px; padding-top: 25px;">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"
							style="font-size: 15px; font-weight: bold;">커뮤니티</a> <!-- <span class="caret"></span> -->
							<ul class="dropdown-menu" role="menu">
								<li><a class="nav-link page-scroll"
									href="/cruise/community1.jsp" style="padding-left: 15px;">여행
										후기</a></li>
								<li><a class="nav-link page-scroll"
									href="/cruise/community2.jsp" style="padding-left: 15px;">동영상갤러리</a></li>
								<li><a class="nav-link page-scroll"
									href="/cruise/community3.jsp" style="padding-left: 15px;">포토갤러리</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-xs-right"
						style="padding-right: 5px; padding-top: 25px;">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"
							style="font-size: 15px; font-weight: bold;">해외 일반여행</a> <!-- <span class="caret"></span> -->
							<ul class="dropdown-menu" role="menu">
								<li><a class="nav-link page-scroll"
									href="/cruise/Foreign-travel.jsp" style="padding-left: 15px;">해외
										일반여행 소개</a></li>
								<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-xs-right"
						style="padding-right: 5px; padding-top: 25px;">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"
							style="font-size: 15px; font-weight: bold;">국내 일반여행</a> <!-- <span class="caret"></span> -->
							<ul class="dropdown-menu" role="menu">
								<li><a class="nav-link page-scroll"
									href="/cruise/Domestic-travel.jsp" style="padding-left: 15px;">국내
										일반여행 소개</a></li>
								<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-xs-right"
						style="padding-right: 5px; padding-top: 25px; margin-left: -45px;">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"
							style="font-size: 15px; font-weight: bold;">회사소개</a> <!-- <span class="caret"></span> -->
							<ul class="dropdown-menu" role="menu">
								<li><a class="nav-link page-scroll"
									href="/cruise/company1.jsp" style="padding-left: 15px;">회사소개</a></li>
								<li class="divider"></li>
								<li><a class="nav-link page-scroll"
									href="/cruise/company2.jsp" style="padding-left: 15px;">찾아오시는길</a></li>
								<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
							</ul></li>
					</ul>
				</td>
			</tr>
		</table>
	</label>
	<div>
		<section class="cd-slider">
			<ul>
				<li data-color="#0d0d0d">
					<div class="content"
						style="background-image: url(/images/logos/1.png);">
						<section id="first">
							<div class="header-content">
								<div class="inner" align="center">
									<h1 class="text-uppercase text-bold text-darkest"
										style="margin-bottom: 30px; font-size: 70px; padding-top: 20px; font-weight: bold;">
										<img src="images/logo/logo5.png" style="margin-bottom: 15px;">
										알로하 투어
									</h1>
									<h6 class="wow fadeIn text-normal wow fadeIn"
										style="color: white;">고객만족을 위한 안전한
										여행&nbsp;&nbsp;/&nbsp;&nbsp;알로하만의 저렴과 실리의 여행!</h6>
									<%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
									<div class="offset-top-35 group" style="margin-top: 10px;">
										<a href="/cruise/Domestic-travel.jsp"
											class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3"
											style="margin-right: 50px; font-size: 20px;"> <span
											class="icon mdi mdi-basket"></span>국내 여행 찾아보기
										</a> <a href="/cruise/Foreign-travel.jsp"
											class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3"
											style="font-size: 20px;">해외 여행 찾아보기</a>
									</div>
								</div>
							</div>
						</section>
					</div>
				</li>
				<li data-color="#1a1a1a">
					<div class="content"
						style="background-image: url(/images/logos/2.png);">
						<section id="first">
							<div class="header-content">
								<div class="inner" align="center">
									<h1 class="text-uppercase text-bold text-darkest"
										style="margin-bottom: 30px; font-size: 70px; padding-top: 20px; font-weight: bold; color: white; font-family: sans-serif;">
										<img src="images/logo/logo5.png" style="margin-bottom: 15px;">
										알로하 투어
									</h1>
									<h6 class="wow fadeIn text-normal wow fadeIn"
										style="color: white;">고객만족을 위한 안전한
										여행&nbsp;&nbsp;/&nbsp;&nbsp;알로하만의 저렴과 실리의 여행!</h6>
									<%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
									<div class="offset-top-35 group" style="margin-top: 10px;">
										<a href="/cruise/Domestic-travel.jsp"
											class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3"
											style="margin-right: 50px; font-size: 20px;"> <span
											class="icon mdi mdi-basket"></span>국내 여행 찾아보기
										</a> <a href="/cruise/Foreign-travel.jsp"
											class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3"
											style="font-size: 20px;">해외 여행 찾아보기</a>
									</div>
								</div>
							</div>
						</section>
					</div>
				</li>
				<li data-color="#262626">
					<div class="content"
						style="background-image: url(/images/logos/3.png)">
						<section id="first">
							<div class="header-content">
								<div class="inner" align="center">
									<h1 class="text-uppercase text-bold text-darkest"
										style="margin-bottom: 30px; font-size: 70px; padding-top: 20px; font-weight: bold;">
										<img src="images/logo/logo5.png" style="margin-bottom: 15px;">
										알로하 투어
									</h1>
									<h6 class="wow fadeIn text-normal wow fadeIn">고객만족을 위한
										안전한 여행&nbsp;&nbsp;/&nbsp;&nbsp;알로하만의 저렴과 실리의 여행!</h6>
									<%-- <h5>${today}</h5>  시간 표시하게되면 하고, 아님 말고--%>
									<div class="offset-top-35 group" style="margin-top: 10px;">
										<a href="/cruise/Domestic-travel.jsp"
											class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3"
											style="margin-right: 50px; font-size: 20px;"> <span
											class="icon mdi mdi-basket"></span>국내 여행 찾아보기
										</a> <a href="/cruise/Foreign-travel.jsp"
											class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp m-t-3"
											style="font-size: 20px;">해외 여행 찾아보기</a>
									</div>
								</div>
							</div>
						</section>
					</div>
				</li>
			</ul>
			<nav>
				<div>
					<a class="prev" href="#"></a>
				</div>
				<div>
					<a class="next" href="#"></a>
				</div>
			</nav>
		</section>
		<div class="sub_contents" align="center"
			style="margin-left: 30px; margin-top: 55px; margin-bottom: 30px;">
			<label
				style="border: 1px solid #cccccc; width: 252px; height: 320px; margin-right: 20px; margin-bottom: 20px;">
				<img src="images/cruise/plan/plan1.png"
				style="width: 250px; height: 200px;">
				<ul>
					<li
						style="list-style: none; padding-top: 30px; margin-left: -40px;">[최다판매/주말출도착]우리가
						기쁨을 느끼고 싶다면 스...</li>
					<li style="list-style: none; color: #808080">10월 <font
						style="text-align: right; margin-right: 10px;">1,490,000원</font></li>
					<li style="list-style: none; color: #808080">&nbsp;</li>
				</ul>
			</label> <label
				style="border: 1px solid #cccccc; width: 252px; height: 320px; margin-right: 20px; margin-bottom: 20px;">
				<img src="images/cruise/plan/plan2.png"
				style="width: 250px; height: 200px;"> <ui>
				<li style="list-style: none; padding-top: 30px;">[동율을 지나 발칸에
					머물다]동유럽(오/체/헝)+...</li>
				<li style="list-style: none; color: #808080">10월<font
					style="text-align: right; margin-right: 10px;">1,390,000원</font></li>
				<li style="list-style: none; color: #808080">&nbsp;</li>
				</ul>
			</label> <label
				style="border: 1px solid #cccccc; width: 252px; height: 320px; margin-right: 20px; margin-bottom: 20px;">
				<img src="images/cruise/plan/plan3.png"
				style="width: 250px; height: 200px;">
				<ul>
					<li
						style="list-style: none; padding-top: 30px; margin-left: -40px;">[OZ직항]백조의성+드레스덴+할슈타트+동유럽(독/오/...</li>
					<li style="list-style: none; color: #808080">10월<font
						style="text-align: right; margin-right: 10px;">890,000원</font></li>
					<li style="list-style: none; color: #808080">&nbsp;</li>
				</ul>
			</label> <label
				style="border: 1px solid #cccccc; width: 252px; height: 320px; margin-right: 20px; margin-bottom: 20px;">
				<img src="images/cruise/plan/plan4.png"
				style="width: 250px; height: 200px;">
				<ul>
					<li
						style="list-style: none; padding-top: 30px; margin-left: -40px;">프랑스
						아름다운 마을_10일[고르드/루시용]절벽위에...</li>
					<li style="list-style: none; color: #808080">10월<font
						style="text-align: right; margin-right: 10px;">3,340,000원</font></li>
					<li style="list-style: none; color: #808080">&nbsp;</li>
				</ul>
			</label>
		</div>
		<table align="center">
			<colgroup>
				<col style="width: 80px">
				<col style="width: 545px;">
				<col style="width: 545px">
				<col style="width: 80px">
			</colgroup>
			<tr>
				<td></td>
				<td><img src="images/logo/side.png" style="width: 100%; padding-right: 10px; margin-left: 5px;"></td>
				<td><img src="images/logo/side2.png" style="width: 100%; padding-left: 10px;"></td>
				<td></td>
			</tr>
		</table>
		</div>
	<div style="margin-top: -40px;">
	<img src="/images/cruise/base3.png"
		style="width: 100%; margin-top: 100px;">
	<img src="/images/cruise/base4.png" style="width: 100%">
	</div>
	
	<!-- --------------------------------------------------------- -->
	<!-- <div class="container"> -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="height: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">메뉴판</h4>
        </div>
        <div class="modal-body">


 <section class="search-box1">
	<div class="container">
			
			<section class="main">

				<div id="rm-container" class="rm-container">

					<div class="rm-wrapper" style="width: 200%; margin-left: -70px;">

						<div class="rm-cover">

							<div class="rm-front">
								<div class="rm-content">

									<div class="rm-logo"></div>
									<h2>Gourmet Castle</h2>
									<h3>Fine Dining &amp; Gourmet Takeaway</h3>

									<a href="#" class="rm-button-open">View the Menu</a>
									<div class="rm-info">
										<p>
										<strong>Gourmet Castle Restaurant</strong><br>
										246 Wonderful Paradise Ln.<br>
										Pasadena, CA 91101<br>
										<strong>Phone</strong> 626.511.1170<br>
										<strong>Fax</strong> 626.992.1020</p>
									</div>

								</div><!-- /rm-content -->
							</div><!-- /rm-front -->

							<div class="rm-back">
								<div class="rm-content">
									<h4>Appetizers</h4>
									<dl>
										<dt>Bella's Artichokes</dt>
										<dd>Roasted artichokes with chipotle aioli and cream cheese</dd>

										<dt>Bruschetta Blue Delight</dt>
										<dd>Blue cheese and citrus bruschetta</dd>

										<dt>Pomme Dulse</dt>
										<dd>Baked potatoes with crisped dulse</dd>

										<dt><a href="http://herbivoracious.com/2011/11/crostini-with-young-pecorino-grilled-figs-and-arugula-mint-pesto-recipe.html" class="rm-viewdetails" data-thumb="images/1.jpg">Green Love Crostini</a></dt>
										<dd>Crostini with young pecorino, grilled figs and arugula &amp; mint pesto</dd>
										
										<dt>Focaccia di Carciofi</dt>
										<dd>Artichoke focaccia with fresh thyme</dd>
									</dl>

									<h4>Salads &amp; More</h4>
									<dl>
										<dt>Green Delight</dt>
										<dd>Watercress, frisee and avocado salad</dd>

										<dt><a href="http://herbivoracious.com/2010/02/thai-tofu-salad-recipe.html" class="rm-viewdetails" data-thumb="images/13.jpg">Gourmet Yam Taohu</a></dt>
										<dd>Thai tofu salad yam taohu</dd>

										<dt>Panini Deluxe</dt>
										<dd>Buffalo mozzarella basil panini</dd>
									</dl>
								</div><!-- /rm-content -->
								<div class="rm-overlay"></div>

							</div><!-- /rm-back -->

						</div><!-- /rm-cover -->

						<div class="rm-middle">
							<div class="rm-inner">
								<div class="rm-content">
									<h4>Main Courses</h4>
									<dl>
										<dt><a href="http://herbivoracious.com/2009/03/panfried-gnocchi-with-arugula-recipe.html" class="rm-viewdetails" data-thumb="images/11.jpg">Crispy Gnocchi with Arugula</a></dt>
										<dd>Pan-fried potato gnocchi with arugula salad</dd>

										<dt>Sea Palm Spicy Peanut Curry</dt>
										<dd>Tender sea palm noodles, seasoned vegetables, spicy peanut curry and tempeh fenel croquettes</dd>

										<dt><a href="http://herbivoracious.com/2012/09/caviar-lentil-salad-with-arugula-crispy-shallots-and-roasted-garlic-recipe.html" class="rm-viewdetails" data-thumb="images/8.jpg">Lentil Caviar &amp; Arugula</a></dt>
										<dd>Black lentil curry with arugula salad, caramelized shallots and roasted garlic</dd>

										<dt>Tamari-Maple Glazed Tofu</dt>
										<dd>Wasabi emulsion, sesame seeds and scallions</dd>

										<dt>Maple Barbeque Tofu</dt>
										<dd>Grilled marinated tofu, maple barbeque sauce, tahini slaw, grilled seasonal vegetables and mashed potatoes</dd>
																													
										<dt><a href="http://herbivoracious.com/2012/07/king-oyster-mushroom-with-roasted-cherries-and-sage-no-that-isnt-meat-recipe-and-thought-process.html" class="rm-viewdetails" data-thumb="images/4.jpg">Luxur Oyster</a></dt>
										<dd>King oyster mushroom with roasted cherries and sage</dd>
										
										<dt><a href="http://herbivoracious.com/2012/09/rigatoni-with-roasted-cauliflower-and-spicy-tomato-sauce-recipe.html" class="rm-viewdetails" data-thumb="images/3.jpg">Rigatoni di Cavolfiore</a></dt>
										<dd>Rigatoni with roasted cauliflower and spicy tomato sauce</dd>
										
										<dt><a href="http://herbivoracious.com/2012/06/saffron-chickpea-stew-with-grilled-porcini-mushroom-recipe.html" class="rm-viewdetails" data-thumb="images/14.jpg">Saffron Chana Secret</a></dt>
										<dd>Saffron chickpea stew with grilled porcini mushrooms</dd>
									</dl>
								</div><!-- /rm-content -->
								<div class="rm-overlay"></div>
							</div><!-- /rm-inner -->
						</div><!-- /rm-middle -->

						<div class="rm-right">

							<div class="rm-front">
								
							</div>

							<div class="rm-back">
								<span class="rm-close">Close</span>
								<div class="rm-content">
									<h4>Desserts</h4>
									<dl>
										<dt><a href="http://herbivoracious.com/2012/08/crepes-with-roasted-french-plums-yogurt-and-honey.html" class="rm-viewdetails" data-thumb="images/5.jpg">French Plum Crepes</a></dt>
										<dd>Crepes with roasted french plums, yogurt &amp; honey</dd>
										
										<dt><a href="http://herbivoracious.com/2012/05/butterscotch-pudding-with-bittersweet-ganache-and-caramelize-white-chocolate-crunchies-recipe.html" class="rm-viewdetails" data-thumb="images/6.jpg">Butterscotch Pudding</a></dt>
										<dd>Butterscotch pudding with bittersweet ganache and caramelize white chocolate crispies</dd>
										
										<dt><a href="http://herbivoracious.com/2009/12/gateaux-de-crepes-recipe.html" class="rm-viewdetails" data-thumb="images/12.jpg">Chocolate Gâteau de Crêpes</a></dt>
										<dd>Gâteau de crêpes with chocolate pastry cream and dulce de leche</dd>
										
										<dt><a href="http://herbivoracious.com/2009/05/dutch-baby-with-sauteed-apples-giant-ovenbaked-pancakes-recipe.html" class="rm-viewdetails" data-thumb="images/10.jpg">Dutch Baby With Sauteed Apples</a></dt>
										<dd>Dutch ginat oven-baked pancakes with sauteed apples</dd>
										
										<dt><a href="http://herbivoracious.com/2008/08/blueberry-napol.html" class="rm-viewdetails" data-thumb="images/7.jpg">Blueberry Napoleon</a></dt>
										<dd>Blueberry Napoleon with crème fraîche and raspberry powder</dd>
										
										<dt><a href="http://herbivoracious.com/2008/09/rings-of-saturn.html" class="rm-viewdetails" data-thumb="images/2.jpg">Rings of Saturn</a></dt>
										<dd>Saturn peach on challah french toast</dd>
										
										<dt><a href="http://herbivoracious.com/2008/04/recipe-atayef.html" class="rm-viewdetails" data-thumb="images/9.jpg">Classic Atayef</a></dt>
										<dd>Syrian ricotta-filled dessert pancakes</dd>
									</dl>
								</div><!-- /rm-content -->
							</div><!-- /rm-back -->

						</div><!-- /rm-right -->
					</div><!-- /rm-wrapper -->

				</div><!-- /rm-container -->

			</section>
  	</div>
</section>



        </div>
        
        </div>
      </div>
      
    </div>
<!--   </div> -->
	<footer id="footer" class="bg-alt"
		style="margin-top: -35px; margin-bottom: -30px; margin-left: 130px; font-size: 13px; height: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-xs-8 col-sm-8 col-md-8">
					<h6 class="text-uppercase" style="font-weight: bold;"></h6>
					<ul class="list-unstyled">
						<li><label style="color: gray">대표 : 박승영 | 사업자 등록번호 :
								178-96-00363 | 개인정보관리책임자 : 박승영 | 이메일 : coolmonster@naver.com</label></li>
						<li><label style="color: gray">주소 : 인천광역시 남구 석바위로
								58-1, 505호(주안동,영빌딩) | 대표전화 : 032-866-9996</label></li>
						<li><label style="color: gray">Made by program ©2017
								GreenB Company</label><label style="margin-left: 434px;"></label></li>
					</ul>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-4">
					<ul class="list-unstyled">
						<li><label style="margin-bottom: 1px;"> <a
								data-toggle="modal" data-target="#myModal"><img
									src="/images/cruise/sign-2.png"></a></label></li>
						<li><label> <a
								href="http://greenbloan.com/include/greenb.pdf"
								style="color: blue;"><img src="/images/cruise/sign-1.png"></a></label></li>
					</ul>
				</div>
	</footer>
	<!-- 스크립트 모음 -->
			<!-- jQuery if needed -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
		<script type="text/javascript">
			$(function() {

				Menu.init();
			
			});
		</script>
	<script type="text/javascript">
		var myVar = setInterval(function() {
			myTimer()
		}, 1);
		var count = 0;
		function myTimer() {
			if (count < 40) {
				$('.progress').css('width', count + "%");
				count += 0.1;
			/* document.getElementById("demo").innerHTML = Math.round(count) +"%"; */
			// code to do when loading
			} else if (count > 40) {
				// code to do after loading
				count = 40;
			}
		}
		// w3 슬라이더 스크립트 
		var slideIndex = 1;
		showDivs(slideIndex);
	
		function plusDivs(n) {
			showDivs(slideIndex += n);
		}
	
		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			x[slideIndex - 1].style.display = "block";
		}
	
		var slideIndex2 = 1;
		showDivs2(slideIndex2);
	
		function plusDivs2(n) {
			showDivs2(slideIndex2 += n);
		}
	
		function showDivs2(n) {
			var i;
			var x = document.getElementsByClassName("mySlides2");
			if (n > x.length) {
				slideIndex2 = 1
			}
			if (n < 1) {
				slideIndex2 = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			x[slideIndex2 - 1].style.display = "block";
		}
	</script>
	<script src="js/jquery.easing.1.2.js" type="text/javascript"></script>
	<script type="text/javascript" src="/js/jquery.slideviewer.1.2.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
	<script src="/js/scripts.js"></script>
	<script src="/js/script_ie9.js"></script>
	<script type="text/javascript" src="js/view.js"></script>
</BODY>
</HTML>