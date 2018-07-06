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
<script type="text/javascript">
$(".panel-collapse").on("hide.bs.collapse", function () {
    $(".panel-collapse-clickable").find('i').removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
});

$(".panel-collapse").on("show.bs.collapse", function () {
    $(".panel-collapse-clickable").find('i').removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
});
</script>
<style type="text/css">
.panel-collapse-clickable {
     cursor: pointer;  
}
#ch {
 color: #0275d8;
 font-weight: bold;
}

#ch:hover {
color: white;
}

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
						<td style="padding-bottom:11px;"><img src="/images/cruise/logo/1-1.png"></td>
					</tr>
					<tr>
						<td class="leftnevi">
							<a href="/cruise/company1.jsp" onfocus="blur()" >회사소개</a><br>
							<a href="/cruise/company2.jsp" onfocus="blur()" class="on">찾아오시는길</a><br>
					</tr>
				</tbody></table>
				<p style="margin-top:20px; padding-bottom:80px;"><img src="/images/cruise/logo/shortcut.png" alt=" " border="0" usemap="#left_banner">
					<map name="left_banner" id="left_banner">
						<area shape="rect" coords="2,3,65,103" href="#" target="_blank" onfocus="blur()">
						<area shape="rect" coords="67,3,131,103" href="/cruise/community1.jsp">
						<area shape="rect" coords="133,3,197,103" href="http://localhost/" target="_blank" onfocus="blur()">
					</map>
				</p></td>
				<td width="714" style="padding-top:66px;"><p style="position:relative; width:714px; height:180px; margin-bottom: -20px;"><img src="/images/cruise/logo/sub01-2.png" align="left"></p>

<label style="font-size: 20px;"><span class="glyphicon glyphicon-home" style="margin-left: 5px;"></span> 회사 주소</label><p>
<img src="/images/cruise/company2.png" style="margin-bottom: 40px;">
<font style="font-size: 18px; margin-bottom: 30px;"><b>주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)</b></font>
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