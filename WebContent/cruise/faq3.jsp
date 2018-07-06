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
						<td style="padding-bottom:11px;"><img src="/images/cruise/logo/5-5.png"></td>
					</tr>
					<tr>
						<td class="leftnevi">
							<a href="/cruise/faq1.jsp" onfocus="blur()">공지사항</a><br>
							<a href="/cruise/faq2.jsp" onfocus="blur()">묻고 답하기</a><br>
							<a href="/cruise/faq3.jsp" onfocus="blur()" class="on">자주하는 질문</a><br>
							<a href="/cruise/faq4.jsp" onfocus="blur()">디지털앨범CD신청</a></td>
					</tr>
				</tbody></table>
				<p style="margin-top:20px; padding-bottom:80px;"><img src="/images/cruise/logo/shortcut.png" alt=" " border="0" usemap="#left_banner">
					<map name="left_banner" id="left_banner">
						<area shape="rect" coords="2,3,65,103" href="#" target="_blank" onfocus="blur()">
						<area shape="rect" coords="67,3,131,103" href="/cruise/community1.jsp">
						<area shape="rect" coords="133,3,197,103" href="http://localhost/" target="_blank" onfocus="blur()">
					</map>
				</p></td>
				<td width="714" style="padding-top:66px;"><p style="position:relative; width:714px; height:180px; margin-bottom: -30px;"><img src="/images/cruise/logo/sub05-03.png" align="left"></p>
<label style="background-color: #C0C0C0; width:100%; height: 2px;"></label>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#filterPanel" style="font-weight: bold; padding-left: 20px;">1. 그린비와 다른 금융은 어떻게 다른가요?</a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#filterPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="filterPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
            그린비는 P2P(Peer to peer, 개인 간 거래)방식으로 대출과 투자를 연결해주는 회사입니다. 개인이 온라인으로 파일을 주고 받는 것처럼 그린비를 통해 다른 사람에게 자금을 빌리고, 빌려줄 수 있습니다. 
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#SecondPanel" style="font-weight: bold; padding-left: 20px;">2. 누구나 대출 받을수 있나요?</a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#SecondPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="SecondPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
            그린비 자체 신용평가시스템에 의해 다양한 직업과 상황을 가지신 분들을 대비해 대출을 받을 수 있습니다. 단, 아래 조건에 해당되는 경우에는 대출을 진행하지 못할 가능성이 큽니다.
<p>1.NICE 신용등급이 8, 9, 10등급인 경우
<p>2.연소득이 2,000만원 미만인 경우
<p>3.현재 연체 중인 대출이 있거나 90일 이상 연체 경험이 있는 경우
<p>4.신용대출, 연대보증이 과다하거나 최근 다수의 대출이 발생한 경우
<p>5.채무불이행, 개인회생 혹은 파산 기록이 있는 경우
<p>
<a href="/main.jsp" style="color: blue;">대출신청 바로가기</a>
 
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#ThirdPanel" style="font-weight: bold;  padding-left: 20px;">3. 그린비 투자는 어떻게 다른가요?</a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#ThirdPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="ThirdPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
            그린비 투자는 10% 내외의 연평균 수익률을 제공하고 있으며, 다수의 채권에 투자금을 분산시켜 손실 위험을 낮추고 있습니다. 더불어 고객님의 성향에 맞게 수익률을 높이거나 안전성을 강화할 수 있는 옵션을 제공합니다 
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#FourthPanel" style="font-weight: bold; padding-left: 20px;">4. 그린비는 왜 이자율이 낮은가요?</a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#FourthPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="FourthPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
           그린비는 온라인 과 오프라인 지점 함께 이용가능하여 기존 금융사들보다 효율적으로 운영합니다. 그리고 그에 따른 비용 절감을 통해 대출 고객님들께 합리적인 금리를 제공하고 있습니다. 
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#FivePanel" style="font-weight: bold; padding-left: 20px;">5. 대출 시 신용등급이 내려가나요?</a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#FivePanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="FivePanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
            그린비 대출은 신용등급에 영향을 미치지 않습니다.

<p>미국/영국에서 이미 활성화된 P2P대출은 국내에서 아직 법제화 되지 않아 대부업으로 등록하고 영업하도록 되어 있습니다. 하지만 그린비를 통한 대출은 기존의 대부업 대출과 같은 평가를 받고 있지는 않습니다. 

<p>1. 그린비에서 받으신 대출은 P2P대출업체를 제외한 타 금융기관에 공유되지 않습니다. 
<p>2. 그린비에서 대출을 받으셔도 신용등급/신용점수가 변경되지 않습니다. 

<p>이는 신용평가기관(NICE, KCB)에서 현재 P2P대출에 대한 평가데이터를 쌓는 중이기 때문입니다. 이로 인해 지금까지 그린비에서 다른 대출을 대환한 고객 중 60%는 신용등급이 향상 되었습니다. 또한 향상된 신용등급을 통해 1금융권 대출로 다시 돌아가는 부가적인 혜택도 누리고 있습니다. 다만, 연체 시에는 대부업 연체 이력으로 기록되어 신용등급이 하락할 수 있으니 유의하셔야 합니다.

<p><a href="/main.jsp" style="color: blue;">대출신청 바로가기</a>

        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#SixPanel" style="font-weight: bold; padding-left: 20px;">6. 대출을 신청하면 개인정보가 공개되나요?</a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#SixPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="SixPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
            공개되지 않습니다. 그린비는 대출과 관련하여 고객님의 어떤 정보도 노출하지 않습니다.
      <p><a href="/main.jsp" style="color: blue;">대출신청 바로가기</a>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#SevenPanel" style="font-weight: bold; padding-left: 20px;">7. 대출 신청 후 대출금을 받기까지 얼마나 걸리나요? </a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#SevenPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="SevenPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
           서류 제출 시점에 따라 유동적이며, 서류를 빨리 보내주시면 당일 지급도 가능합니다.
           <p><a href="/main.jsp" style="color: blue;">대출신청 바로가기</a>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#EighthPanel" style="font-weight: bold; padding-left: 20px;">8. 대출에 따른 수수료가 있나요? </a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#EighthPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="EighthPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
          그린비에서 대출을 받으실 경우, 대출금액에 대하여 최대 3.5%의 대출수수료(선취수수료)가 발생합니다. 대출수수료는 대출자의 심사 결과와 대출 기간에 따라서 할인을 해드릴 수 있습니다. 
         
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#NinePanel" style="font-weight: bold; padding-left: 20px;">9. 만기 전에 대출금을 갚아도 되나요? </a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#NinePanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="NinePanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
          네. 만기 전에 대출금 상환을 하셔도 됩니다. 단, 중도상환을 하시려면, 대출 원리금 상환 첫 회가 지난 이후부터 가능하며, 잔여 원금과 사용한 날까지의 이자를 한번에 상환해주셔야 합니다
           
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#TenPanel" style="font-weight: bold; padding-left: 20px;">10. 중도상환 수수료가 있나요? </a>
            <span class="pull-right panel-collapse-clickable" data-toggle="collapse" data-parent="#accordion" href="#TenPanel">
                <i class="glyphicon glyphicon-chevron-down"></i>
            </span>
        </h4>
    </div>
    <div id="TenPanel" class="panel-collapse panel-collapse collapse">
        <div class="panel-body">
           그린비 대출에는 중도상환 수수료가 없습니다. 
           <p><a href="/main.jsp" style="color: blue;">대출신청 바로가기</a>
        </div>
    </div>
</div>
<label style="background-color: #C0C0C0; width:100%; height: 2px;"></label>
<div style="margin-top: 40px;">
<h2>더 궁금한게 있으신가요?</h2>
<h6 style="color: gray;">그린비 고객센터는 여러분의 소중한 문의를 받을 수 있도록 활짝 열려있습니다.</h6>
<a href="/contact.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 20px; margin-top: 20px; margin-bottom: 20px;">
           <span class="icon mdi mdi-basket"></span>이용문의 보러가기</a>
</div>
</div>
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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="js/scripts.js"></script>
</BODY>
</HTML>