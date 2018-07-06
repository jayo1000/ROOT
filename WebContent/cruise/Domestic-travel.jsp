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
<meta property="og:url" content="http://localhost">
<meta name="naver-site-verification" content="d575fb090c981f1afdcc2dd9b29307c9c4dfe49d"/>
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<![endif]-->
<link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/button.css" />
<link rel="stylesheet" href="http://dgefmentor.or.kr/css/jquery.bxslider.css" type="text/css">
<style>
body {
	font-size: 14px;
}
	.imageblock img{
		max-width: 100%;
		height: auto;
	}
	#first {
        background-color: #444;
         background-image: url("/images/main/back7.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
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

.leftnevi {
/* background-color: #F4F4F4;
color: #6B80B2; */
}
.leftnevi:hover {
/* background-color: #00549E;
color: white; */
}

.cont_left {
background-image: url("/images/cruise/left_bg.gif");
background-repeat: repeat-y;
}

#table-tr
{
border-bottom-style: double;
border-top-style: inset;
background-color: #FCFDFC; }

#td {
padding :  5px;
text-align: center;
}

#footer {
    padding: 45px;
    padding-top: 10px;
    margin-top: 0px;
    margin-bottom: 0px;
    padding-left: 155px;
    font-size: 13px;
    height: 50px;
    border-top-style: groove;
    border-top-width: thin;
}

#sub_cont {
background: url("/images/cruise/logo/banner.png") top center no-repeat;
}

.btn-primary {
background-color: black;
}
#but {
background-color: black;
color: white;
}
#but:hover {
background-color: white;
color: #00549F;
}
/*leftmenu*/
/* .leftnevi a:link,
.leftnevi a:active,
.leftnevi a:visited,
.leftnevi a:hover {width:200px; height:43px; line-height:43px; padding-left:16px; background:url(http://www.lifecruise.co.kr/img_common/menu/bgg.gif) left bottom no-repeat;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:15px; font-weight:bold; color:#6b6b6b;
	vertical-align:middle; display:inline-block; letter-spacing:-0.05em;text-decoration:none;}
.leftnevi a:hover {width:200px; height:43px; line-height:43px; padding-left:16px; background:url(http://www.lifecruise.co.kr/img_common/menu/bgc.gif) no-repeat; color:#ffffff;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:15px; font-weight:bold; letter-spacing:-0.05em;text-decoration:none;}
.leftnevi a.on:link,	.leftnevi a.on:active, .leftnevi a.on:visited, .leftnevi a.on:hover 
	{width:200px; height:43px; line-height:43px; padding-left:16px; background:url(http://www.lifecruise.co.kr/img_common/menu/bgc.gif) no-repeat; color:#ffffff;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:15px; font-weight:bold; letter-spacing:-0.05em;text-decoration:none;}

.somenu {padding:12px 0;background:url(http://www.lifecruise.co.kr/img_common/menu/bgg.gif) left bottom no-repeat;}	
.somenu a:link,
.somenu a:active,
.somenu a:visited,
.somenu a:hover {width:160px; height:24px; line-height:24px; padding-left:30px; text-decoration:none;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:13px; font-weight:bold; color:#a4a4a4;
	vertical-align:middle; display:inline-block; letter-spacing:-0.05em;}
.somenu a:hover {width:160px; height:24px; line-height:24px; padding-left:30px; color:#00549e;text-decoration:none;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:13px; font-weight:bold; letter-spacing:-0.05em;}
.somenu a.on:link,	.somenu a.on:active, .somenu a.on:visited, .somenu a.on:hover 
	{width:160px; height:24px; line-height:24px; padding-left:30px; color:#00549e;text-decoration:none;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:13px; font-weight:bold; letter-spacing:-0.05em;} */
	.leftnevi a:link,
.leftnevi a:active,
.leftnevi a:visited,
.leftnevi a:hover {width:200px; height:43px; line-height:43px; padding-left:16px;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:15px; font-weight:bold; color:#6b6b6b;
	vertical-align:middle; display:inline-block; letter-spacing:-0.05em;text-decoration:none;}
.leftnevi a:hover {width:200px; height:43px; line-height:43px; padding-left:16px; color:#ffffff; background-color: #638F18;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:15px; font-weight:bold; letter-spacing:-0.05em;text-decoration:none;}
.leftnevi a.on:link,	.leftnevi a.on:active, .leftnevi a.on:visited, .leftnevi a.on:hover 
	{width:200px; height:43px; line-height:43px; padding-left:16px; color:#ffffff;  background-color : #638F18;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:15px; font-weight:bold; letter-spacing:-0.05em;text-decoration:none;}

.somenu {padding:12px 0;background:url(http://www.lifecruise.co.kr/img_common/menu/bgg.gif) left bottom no-repeat;}	
.somenu a:link,
.somenu a:active,
.somenu a:visited,
.somenu a:hover {width:160px; height:24px; line-height:24px; padding-left:30px; text-decoration:none;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:13px; font-weight:bold; color:#a4a4a4;
	vertical-align:middle; display:inline-block; letter-spacing:-0.05em;}
.somenu a:hover {width:160px; height:24px; line-height:24px; padding-left:30px; color:#638F18;text-decoration:none;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:13px; font-weight:bold; letter-spacing:-0.05em;}
.somenu a.on:link,	.somenu a.on:active, .somenu a.on:visited, .somenu a.on:hover 
	{width:160px; height:24px; line-height:24px; padding-left:30px; color:#638F18;text-decoration:none;
	font-family:"맑은 고딕",Malgun Gothic,"돋움",Dotum,"굴림",Gulim,AppleGothic,Sans-serif; font-size:13px; font-weight:bold; letter-spacing:-0.05em;}
</style>
<BODY>
<!-- <label class="bg-alt" style="width: 100%; background-color: #154E9B; height: 3px;"></label> -->
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<table width="820" border="0" cellspacing="0" cellpadding="0" align="center" ><tr>
<td>
<a class="brand" href="/mai.jsp"><img src="/images/logo/logos.png" style="margin-top: 15px;"></a>
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
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="sub_cont">
	<tbody><tr valign="top">
		<td height="50">&nbsp;</td>
	</tr>
	<tr valign="top">
		<td align="center"><table width="980" border="0" cellspacing="0" cellpadding="0">
			<tbody><tr valign="top" align="left">
				<td width="266" class="cont_left"><table width="252" border="0" cellspacing="0" cellpadding="0">
					<tbody><tr>
						<td style="padding-bottom:11px;"><img src="/images/cruise/logo/7-1.png"></td>
					</tr>
					<tr>
						<td class="leftnevi">
							<a href="/cruise/Domestic-travel.jsp" onfocus="blur()" class="on">국내 일반여행 소개</a><br>
					</tr>
				</tbody></table>
				<p style="margin-top:20px; padding-bottom:80px;"><img src="/images/cruise/logo/shortcut.png" alt=" " border="0" usemap="#left_banner">
					<map name="left_banner" id="left_banner">
						<area shape="rect" coords="2,3,65,103" href="#" target="_blank" onfocus="blur()">
						<area shape="rect" coords="67,3,131,103" href="/cruise/community1.jsp">
						<area shape="rect" coords="133,3,197,103" href="http://localhost/" target="_blank" onfocus="blur()">
					</map>
				</p></td>
				<td width="714" style="padding-top:66px;"><p style="position:relative; width:714px; height:180px; margin-bottom: -5px;"><img src="/images/cruise/logo/sub02-1.png" align="left"></p>
<table border="0" cellspacing="0" cellpadding="0" class="search_table" style="width: 100%">
<form name="searching" action="/images/cruise/logo/sub02-1.png" method="post"></form>
	<tbody><tr style="border-bottom-style: groove;">
		<td><button class="btn ripple btn-outline btn-primary" style="padding: 5px; margin-right: -1px; width: 75px;" id="but">전체</button>
		<button class="btn ripple btn-outline btn-primary" style="padding: 5px; margin-right: 2px; width: 80px;" id="but">예약가능</button><button class="btn ripple btn-outline btn-primary" style="padding: 5px; width: 80px;" id="but">일정마감</button></td>
		<td></td><td></td>
	</tr>
	<tr style="padding-bottom:10px;">
		<td id="td" style="padding-left: 1px; padding-top: 35px;"></td>
		<td align="right">
			<select name="find" style="width: 80px; height: 24px;">
				<option value="subject">통합검색</option>
				<option value="contents">여행 상품명</option>
				<option value="name">여행날짜</option>
			</select>&nbsp;
			<input name="search" type="text" size="25" maxlength="20" style="padding-top:inherit; padding-bottom:inherit; width: 200px; height: 24px;">&nbsp;
			<button><img src="/images/cruise/logo/search.png">검색</button>
		</td>
	</tr>

</tbody></table>
<table cellpadding="0" cellspacing="0" border="0" width="714">
	<tbody><tr>
		<td style="height:2px;background:#6a6a6a;width:714px"></td>
	</tr>
	<tr>
		<td width="100%" align="center" bgcolor="">
			<input type="hidden" name="tname" value="product">
            <input type="hidden" name="cbNum" value="3">
<table cellpadding="0" class="boardTbl" cellspacing="0" border="0" width="100%" style="background:url(../board/img/board_back.png) no-repeat;height:39px; border-bottom:1px solid #aaaaaa;" title="리스트">
	<tbody><tr>
		<th width="354" align="center" height="36" style="text-align: center"><strong style="color:#444444;font-size:13px;">여행 상품명</strong></th>
		<th width="120" align="center" height="36" style="text-align: center"><strong style="color:#444444;font-size:13px;">여행일정</strong></th>
		<th width="120" align="center" height="36" style="text-align: center"><strong style="color:#444444;font-size:13px;">신청기간</strong></th>
		<th width="120" align="center" height="36" style="text-align: center"><strong style="color:#444444;font-size:13px;">여행신청</strong></th>
	</tr>
	<tr>
		<td height="2" colspan="4"></td>
	</tr>
	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF"><!--img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//--><span style="padding-left:101px">&nbsp;</span><span style="color:rgb(128, 0, 128)"><span style="font-size:14px"><strong>&lt;9월 제주도 대박상품 /&nbsp;7박 8일&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=73&amp;page=1&amp;goods_status="><b>Les'tgo tour-1</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=73&amp;page=1&amp;goods_status=">
				<img src="/images/cruise/plan/plan1.png" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=73&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아름다운 관광지 제주도. 9월 말까지 신청가능. 7박 8일 휴양.</b></span>&nbsp;</div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="/images/cruise/plan/min.png" style="margin:0 3px 2px 0;text-align:middle;">68명<img src="/images/cruise/plan/max.png" style="margin:0 3px 2px 10px;text-align:middle;">0명<!--img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//--></div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-12-09 <b>출발</b><br>2017-12-17 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-25 부터<br>2017-09-30 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="/images/cruise/plan/b1.png">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF"><!--img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//--><span style="padding-left:101px">&nbsp;</span><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>&lt;신라시대 문화유적이 살아 숨쉬는 경주&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=72&amp;page=1&amp;goods_status="><b>Les'tgo tour-2</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=72&amp;page=1&amp;goods_status=">
				<img src="/images/cruise/plan/plan2.png" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=72&amp;page=1&amp;goods_status='"><b style="font-size:14px;">경주 8박10일 전문 해외 통역사 완비</b></span>&nbsp;</div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="/images/cruise/plan/min.png" style="margin:0 3px 2px 0;text-align:middle;">20명<img src="/images/cruise/plan/max.png" style="margin:0 3px 2px 10px;text-align:middle;">0명<!--img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//--></div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2018-06-08 <b>출발</b><br>2018-06-17 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-06 부터<br>2018-02-08 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="/images/cruise/plan/b1.png">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF"><!--img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//--><span style="padding-left:101px">&nbsp;</span><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>&lt;서울 최고의 일정 / 사람들이 알지못한 최고의 투어 선사&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=71&amp;page=1&amp;goods_status="><b>Les'tgo tour-3</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=71&amp;page=1&amp;goods_status=">
				<img src="/images/cruise/plan/plan3.png" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=71&amp;page=1&amp;goods_status='"><b style="font-size:14px;">서울 고궁과 같은 문화유산, 명동, 홍대등의 현대적 경관이 있는 도심.</b></span>&nbsp;</div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="/images/cruise/plan/min.png" style="margin:0 3px 2px 0;text-align:middle;">20명<img src="/images/cruise/plan/max.png" style="margin:0 3px 2px 10px;text-align:middle;">0명<!--img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//--></div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2018-06-01 <b>출발</b><br>2018-06-10 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-06 부터<br>2018-01-31 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="/images/cruise/plan/b1.png">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF"><!--img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//--><span style="padding-left:101px">&nbsp;</span><span style="color:rgb(255, 0, 0)"><strong><span style="font-size:14px">&lt;전주. 가장 잘 보존된 한옥의 세계로&gt;</span></strong></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=70&amp;page=1&amp;goods_status="><b>Les'tgo tour-4</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=70&amp;page=1&amp;goods_status=">
				<img src="/images/cruise/plan/plan4.png" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=70&amp;page=1&amp;goods_status='"><b style="font-size:14px;">담양 죽녹원과 한옥마을, 치즈마을등의 다양한 볼거리가 가득.</b></span>&nbsp;</div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="/images/cruise/plan/min.png" style="margin:0 3px 2px 0;text-align:middle;">20명<img src="/images/cruise/plan/max.png" style="margin:0 3px 2px 10px;text-align:middle;">0명<!--img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//--></div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2018-04-14 <b>출발</b><br>2018-04-23 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-06 부터<br>2017-12-15 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="/images/cruise/plan/b1.png">
			</td>
	</tr>
<!--     
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF">img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//<span style="padding-left:101px">&nbsp;</span><span style="color:rgb(255, 0, 0)"><span style="font-size:14px"><strong>&lt;아시아최대 17만톤급 / 파크호텔1박 / 6박8일(일정+1)&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=69&amp;page=1&amp;goods_status="><b>A20170906</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=69&amp;page=1&amp;goods_status=">
				<img src="/board/goods_file/1504654498_%B1%D7%B8%B21.jpg" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=69&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아시아 6박8일 (싱가폴/말레이시아/태국) 로얄캐리비안 오베이션호</b></span>&nbsp;<img alt="" src="../board/img/icon_file.gif" style="vertical-align:middle"></div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="../board/img/apply_image_1.gif" style="margin:0 3px 2px 0;text-align:middle;">30명<img src="../board/img/apply_image_2.gif" style="margin:0 3px 2px 10px;text-align:middle;">0명img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//</div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2018-04-08 <b>출발</b><br>2018-04-15 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-06 부터<br>2018-01-09 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="../board/img/apply_button_1.jpg">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF">img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//<span style="padding-left:101px">&nbsp;</span><span style="font-size:14px"><span style="color:rgb(255, 0, 0)"><strong>&lt;싱가폴 마리나베이샌즈호텔 포함&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=68&amp;page=1&amp;goods_status="><b>A20170906</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=68&amp;page=1&amp;goods_status=">
				<img src="/board/goods_file/1504653967_%B1%D7%B8%B21.jpg" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=68&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아시아 5박7일 (싱가폴/말레이시아/태국) 로얄캐리비안 마리너호</b></span>&nbsp;<img alt="" src="../board/img/icon_file.gif" style="vertical-align:middle"></div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="../board/img/apply_image_1.gif" style="margin:0 3px 2px 0;text-align:middle;">30명<img src="../board/img/apply_image_2.gif" style="margin:0 3px 2px 10px;text-align:middle;">0명img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//</div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2018-03-04 <b>출발</b><br>2018-03-10 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-06 부터<br>2017-12-22 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="../board/img/apply_button_1.jpg">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF">img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//<span style="padding-left:101px">&nbsp;</span><span style="font-size:14px"><span style="color:rgb(255, 0, 0)"><strong>&lt;싱가폴 마리나베이샌즈호텔 포함&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=67&amp;page=1&amp;goods_status="><b>A20170906</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=67&amp;page=1&amp;goods_status=">
				<img src="/board/goods_file/1504653316_%B1%D7%B8%B21.png" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=67&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아시아 5박7일 (싱가폴/말레이시아/태국) 로얄캐리비안 마리너호</b></span>&nbsp;<img alt="" src="../board/img/icon_file.gif" style="vertical-align:middle"></div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="../board/img/apply_image_1.gif" style="margin:0 3px 2px 0;text-align:middle;">40명<img src="../board/img/apply_image_2.gif" style="margin:0 3px 2px 10px;text-align:middle;">18명img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//</div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2018-01-21 <b>출발</b><br>2018-01-27 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-09-06 부터<br>2017-11-22 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="../board/img/apply_button_1.jpg">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF">img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//<span style="padding-left:101px">&nbsp;</span><span style="font-size:14px"><span style="color:rgb(0, 128, 128)"><strong>&lt;2차 추가일정&gt; &lt;싱가폴 마리나베이샌즈호텔 포함&gt;</strong></span></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=66&amp;page=1&amp;goods_status="><b>A20170731</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=66&amp;page=1&amp;goods_status=">
				<img src="/board/goods_file/1501457801_%B1%D7%B8%B21.jpg" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=66&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아시아 5박7일 (싱가폴/말레이지아) 로얄캐리비안 마리너호</b></span>&nbsp;<img alt="" src="../board/img/icon_file.gif" style="vertical-align:middle"></div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="../board/img/apply_image_1.gif" style="margin:0 3px 2px 0;text-align:middle;">14명<img src="../board/img/apply_image_2.gif" style="margin:0 3px 2px 10px;text-align:middle;">14명img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//</div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-11-05 <b>출발</b><br>2017-11-11 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-07-31 부터<br>2017-08-25 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="../board/img/apply_button_7.jpg">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF">img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//<span style="padding-left:101px">&nbsp;</span><span style="font-size:14px"><strong>연말연시 특별일정 / 아시아최대 17만톤급 퀀텀호</strong></span></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=65&amp;page=1&amp;goods_status="><b>A20170627</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=65&amp;page=1&amp;goods_status=">
				<img src="/board/goods_file/1498519546_%C5%A9%B1%E2%BA%AF%C8%AF_%B1%D7%B8%B21.jpg" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=65&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아시아 5박6일 (중국/일본) 로얄캐리비안 콴텀호</b></span>&nbsp;<img alt="" src="../board/img/icon_file.gif" style="vertical-align:middle"></div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="../board/img/apply_image_1.gif" style="margin:0 3px 2px 0;text-align:middle;">30명<img src="../board/img/apply_image_2.gif" style="margin:0 3px 2px 10px;text-align:middle;">0명img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//</div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-12-28 <b>출발</b><br>2018-01-02 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-06-27 부터<br>2017-08-19 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="../board/img/apply_button_1.jpg">
			</td>
	</tr>
    
  	<tr style="cursor:pointer" bgcolor="">
		</tr><tr><td colspan="4" height="15"></td></tr>
        <tr><td colspan="4" align="left" class="line" style="vertical-align:top; font-size:12px; color: #0099FF">img src='../board/img/apply_image_new1.gif' style='margin:0px 3px 2px 106px;text-align:middle;'//<span style="padding-left:101px">&nbsp;</span><strong><span style="font-size:14px">아시아 최다기항지(4개) / 최장일정(7박8일) / 최대크루즈(17만톤급)</span></strong></td></tr>
        <tr><td align="left" class="line" style="color:#444444;vertical-align:top; font-size:12px;"><table cellpadding="0" cellspacing="0" style="margin-bottom:12px;">
			<tbody><tr>
				<td style="padding:0 14px 0 0;"><div style="text-align:center;"><a href="/sub02/sub02_3.php?mode=view&amp;idx=64&amp;page=1&amp;goods_status="><b>A20170627</b></a></div>
				<a href="/sub02/sub02_3.php?mode=view&amp;idx=64&amp;page=1&amp;goods_status=">
				<img src="/board/goods_file/1498518093_%C5%A9%B1%E2%BA%AF%C8%AF_%B1%D7%B8%B21.jpg" width="92px" height="56px">
								</a>
				</td>
				<td><div style="text-align:left;margin:0 0 10px 0;height:30px;line-height:15px;"><span style="vertical-align:middle;cursor:pointer;line-height:15px;" onclick="location.href='/sub02/sub02_3.php?mode=view&amp;idx=64&amp;page=1&amp;goods_status='"><b style="font-size:14px;">아시아 7박8일 (중국/일본) 로얄캐리비안 콴텀호</b></span>&nbsp;<img alt="" src="../board/img/icon_file.gif" style="vertical-align:middle"></div>
					<div style="text-align:left;text-align:middle;font-size:12px;"><img src="../board/img/apply_image_1.gif" style="margin:0 3px 2px 0;text-align:middle;">30명<img src="../board/img/apply_image_2.gif" style="margin:0 3px 2px 10px;text-align:middle;">16명img src='../board/img/apply_image_3.gif' style='margin:0 3px 2px 10px;text-align:middle;'>0명//</div></td>
			</tr>
		</tbody></table>
        </td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-12-08 <b>출발</b><br>2017-12-15 <b>도착</b></td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			2017-06-27 부터<br>2017-09-22 까지</td>
		<td align="center" class="line" style="color:#444444;vertical-align:middle;padding:10px 0;line-height:18px; font-size:12px;">
			<img src="../board/img/apply_button_1.jpg">
			</td>
	</tr>
     -->
  </tbody></table>
</td></tr></tbody></table>
<!--페이지자리-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<tbody><tr>
		<td width="520">
			<div class="pageing" align="center">

			&nbsp;<a href="#" class="on"></a>			</div>
			
		</td>
		<td align="right" style="padding-top:12px;"></td>		
	</tr>
</tbody></table>

<p style="margin-bottom:80px; text-align:center; width:706px;"><button>1</button>
</p>
				</td>
			</tr>
		</tbody></table>
		</td>
	</tr>
</tbody>
</table>
<footer id="footer" class="bg-alt" style="font-size: 13px; height: 50px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <h6 class="text-uppercase" style="font-weight: bold;"></h6>
                <ul class="list-unstyled">
                    <li><label style="color: gray">대표 : 박승영 | 사업자 등록번호 : 178-96-00363  |  개인정보관리책임자 : 박승영    |  이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color: gray">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)   |   대표전화 : 032-866-9996</label></li>
                    <li><label style="color: gray">Made by program ©2017 GreenB Company</label></li>
                </ul>
            </div>
</footer>
<!-- 스크립트 모음 -->
<script>

var util = new PageUtil();

util.totalCnt = 220; //게시물의 총 건수
util.pageRows = 10; // 한번에 출력될 게시물 수
util.disPagepCnt= 10; //화면 출력 페이지 수

function fn_DrowPageNumber()
{
 parent.document.getElementById('page').innerHTML  = util.Drow();
}

function goPage(pageNo)
{
 util.curPage = pageNo;  
 util.setTotalPage();
 fn_DrowPageNumber();
}

function next_page()
{
 util.curPage    = util.getNextPage();
 util.setTotalPage();
 fn_DrowPageNumber();
}

function next()
{
 util.curPage    = util.getNext();
 util.setTotalPage();
 fn_DrowPageNumber();
}

function prev_page()
{
 util.curPage    = util.getNextPage();
 util.setTotalPage();
 fn_DrowPageNumber();
}

function prev()
{
 util.curPage    = util.getNext();
 util.setTotalPage();
 fn_DrowPageNumber();
}

</script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="js/scripts.js"></script>
</BODY>
</HTML>