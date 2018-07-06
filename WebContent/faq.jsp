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
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
</head>
<script type="text/javascript">
$(".panel-collapse").on("hide.bs.collapse", function () {
    $(".panel-collapse-clickable").find('i').removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
});

$(".panel-collapse").on("show.bs.collapse", function () {
    $(".panel-collapse-clickable").find('i').removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
});

$(document).ready(function(){
/* 	var mini = $('#filterPanel');
	 $(".panel-collapse-clickable").find('i').removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up"); */
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
</style>
<body>
  <div align="center">
    <img src="/images/renuwal/mainup.png" width="100%">
  </div>
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
<div align="center" style="margin-top: 70px; margin-bottom: 130px;">
<h2 style="font-size: 40px;">자주묻는 질문</h2>
<h6 style="margin-top: 20px; color:#8c8c8c; size: 1px;">좀더 그린비에 대해서 알기위해</h6>
<h6 style="margin-top: 20px; color:#8c8c8c; size: 1px;">자주 물어보시는 질문들을 정리해놓았습니다.</h6>
<div class="container" style="text-align: left;">
<br/>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#filterPanel" style="font-weight: bold; padding-left: 20px;">
            1. 그린비와 다른 금융은 어떻게 다른가요?</a>
            <span class="pull-right panel-collapse-clickable" id="lele" data-toggle="collapse" data-parent="#accordion" href="#filterPanel">
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
            공개되지 않습니다. 렌딧은 대출과 관련하여 고객님의 어떤 정보도 노출하지 않습니다.
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
          렌딧에서 대출을 받으실 경우, 대출금액에 대하여 최대 3.5%의 대출수수료(선취수수료)가 발생합니다. 대출수수료는 대출자의 심사 결과와 대출 기간에 따라서 할인을 해드릴 수 있습니다. 
         
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
<div style="margin-top: 50px;">
<h2>더 궁금한게 있으신가요?</h2>
<h6 style="color: gray;">그린비 고객센터는 여러분의 소중한 문의를 받을 수 있도록 활짝 열려있습니다.</h6>
<a href="/contact.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 20px; margin-top: 20px; margin-bottom: 20px;">
           <span class="icon mdi mdi-basket"></span>이용문의 보러가기</a>
</div>
</div>
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