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
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>※GreenB※</title>
  <!-- start: Css -->
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
</head>
<style type="text/css">
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
</style>
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
<label id="first" style="width: 100%; height: 400px; margin-top: -10px;">
<div align="center">
<h2 style="color: white; margin-top: 90px; font-weight: bold; font-size: 40px;">그린비 대출안내</h2>
</div>
<div align="center" style="margin-top: 40px;">
<ul><li>
	<label style="border: 1px solid #cccccc; width:620px; height: 110px;  margin-right: 20px; margin-bottom: 20px; ">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:10px; font-size: 23px; color: white;">그린비 대출은 상황에 맞는 대출을 안내해드립니다.</li>
	<li style="list-style: none; color: #808080">보험설계사 대출 :: 신용대출 :: 사업자 대출 :: 개인회생 대출</li>       
	<li style="list-style: none; color: #808080">주부/여성 대출 :: 직장인 대출 :: 보증인 대출 :: 소액 대출 :: 프리랜서 대출</li>	
	</ul>
	</label></li>
<li style="list-style: none;">
<!-- <button class="btn" id="btn" style="padding-left: -100px; border: none; background-color: white; margin-right: -16px; margin-bottom: -7px;"><img class="btn-img" src="images/grb-button1.png" onclick="localhost.href='#'"></button> -->
<a href="/main1.jsp" class="btn btn-lg bo" style="background-color: green; color: white; border-radius: 7px; margin-right: 30px; font-size: 15px;">그린비 대출상품 보러가기<span class="box"></span></a>
</li>
</ul>
</div>
</label>
<div align="center" style="margin-top: 55px;">
<label style="border: 1px solid #cccccc; width:500px; height: 200px;  margin-right: 20px; margin-bottom: 20px; ">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:50px; font-size: 23px; margin-right: 50px;">
	<h2 style="font-size: 40px;">최고 금리 25%</h2></li>
	<li style="list-style: none;"><h2 style="font-size: 40px;">최대 한도 5,000만원</h2></li>
	</ul>
</label>
</div>
<!-- 서브 컨텐츠 내용 시작 -->
	<div class="sub_contents" align="center" style="margin-top: 55px;">
	<label style="width:720px; height: 200px; margin-right: 20px; margin-bottom: 20px; ">
	<img src="/images/main/button/loan1.png" style="margin-top: 15px; margin-left: 50px; margin-right: 70px;" align="left">
	<img src="/images/main/button/loan2.png" style="margin-top: 15px; margin-right: 70px;" align="left">
	<img src="/images/main/button/loan3.png" style="margin-top: 15px; margin-right: 70px;" align="left">
	<img src="/images/main/button/loan4.png" style="margin-top: 15px; margin-right: 70px;" align="left">
	<div style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;중금리 대출가능 
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;후순위가능 
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신속한 대출심사 &nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사업비 절감	</div>
	</label>
	</div>
	<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 1px;"></label>
	<div class="sub_contents" align="center" style="margin-top: 40px; margin-bottom: 50px;">
	<label style="width:720px; height: 200px; margin-right: 20px; margin-top: 35px; margin-bottom: 50px;">
	<h4>대출을 원하는 사람과 투자를 원하는 사람들을 온라인 오프라인으로 직접 연결하는 방식의 금융 비즈니스</h4>
	<img src="/images/main/button/loan5.png" style="margin-top: 60px; margin-bottom: 50px; margin-right: 70px;" align="left">
	<h4>그린비 P2P는 대출자와 투자자 모두 웃을 수 있는 착한 금융입니다.</h4>
	</label>
	</div>
	<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 1px;"></label>
<!-- <img src="images/mainmenu/main-in1.png" style="margin-top: 40px;"> -->
<form name="SpeedForm" class="form-horizontal" method="post" id="panel" action="/loan.htm"> <!-- action은 아직 추가안함 -->
<div align="center" style="margin-bottom: 250px; margin-top: 120px;">
<h1>빠른 대출 상담신청</h1>
<div style="margin-bottom: 50px;"></div>
<!-- <div style="border-top:10px solid #e6e6e6; margin-bottom: 20px;"></div> -->
<div class="boardType1">
			<table border="0" cellspacing="0" cellpadding="0">
			<colgroup>
				<col width="160px"/>
				<col width="840px"/>
			</colgroup>
			<tbody>
				<tr style="border-top:5px solid black; height: 50px;">
					<th style="background-color: #e6e6e6; padding-left: 30px;">이름</th>
					<td style="padding-left: 20px;"><input type="text" id="name" name="name" maxlength="16" title="이름 입력" style="width:320px;" required/></input></td>
				</tr>
				<tr style="border-top:1px solid black; height: 50px;">
					<th style="background-color: #e6e6e6; padding-left: 30px;">휴대폰</th>
					<td style="padding-left: 20px;">
						<select title="휴대폰 번호 앞자리 선택" id="phonenumber1" name="phonenumber1" style="width:95px" required>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select><!--
				   --><span class="noun">-</span><!-- 
				   --><input type="text" id="phonenumber2" name="phonenumber2" maxlength="4" title="휴대폰 번호 중간자리 입력" style="width:90px;" required/></input><!-- 
				   --><span class="noun">-</span><!-- 
				   --><input type="text" id="phonenumber3" name="phonenumber3" maxlength="4" title="휴대폰 번호 뒷자리 입력" style="width:90px;" required/></input>
					</td>
				</tr>
				<tr style="border-top:1px solid black; height: 50px;">
					<th style="background-color: #e6e6e6; padding-left: 30px;">필요금액</th>
					<td style="padding-left: 20px;"><input type="text" id="requestmoney" name="requestmoney" maxlength="16" title="필요금액 입력" style="width:320px;" required/></input> 만원</td>
				</tr>
				<tr style="border-top:1px solid black; "><td></td><td></td></tr>
				<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
				</tbody>
			</table>
		</div>
				<!--왼쪽 약관동의 끝-->
		<div class="boardType2 mg_t30" style="margin-top: 10px;">
			<table>
				<colgroup>
				<col width="780px"/>
				<col width="220px"/>
			</colgroup>
			<tbody style="margin-top: 50px;">
				<tr>
					<td colspan="2">
						<!-- 개인정보취급방침 시작 -->
					</td>
				</tr>
				<tr>
					<td class="text_01">개인(신용)정보 수집·이용 동의 [필수]</td>
					<td class="alignR pd_r30">
						<input type="radio" checked="checked" class="agree_group_1" title="동의함" name="agree" id="chkAgree" value="Y">
						<label for="Inok" class="on">동의함</label>
				</tr>
				</tbody>
			</table>
		</div>
<!--왼쪽 약관동의 끝-->
		</div>
		<!-- <div align="center" style="margin-top: -200px; margin-bottom: 50px;">
		<input class="button" href="radioCheck(this.form)"><img src="images/main-dacul.png"></a>
                                   <input class="btn ripple btn-3d btn-danger" onclick=radioCheck(this.form) value="대출상담 신청하기">
		</div> -->
		<!-- <div align="center" style="margin-top: -200px; margin-bottom: 50px;">
		<input class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" href="radioCheck(this.form)" value="대출상담 신청하기">
		</div> -->
		<div align="center" style="margin-top: -200px; margin-bottom: 50px;">
		<button type="submit" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" onclick="location.href='/loan.htm'">대출상담 신청하기</button>
		</div>
		<div align="center">
<img src="images/main-down.png" style="margin-bottom: 40px;">
</div>
</form>
<!-- Modal -->
<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel"><span class="fa fa-signing" style="margin-right: 15px;"></span>등록 되었습니다. 빠른 답변 드리도록 노력 하겠습니다.</h4>
      </div>
      <div class="modal-body" id="for">
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소한다</button>
        <button type="button" class="btn btn-primary" onclick="location.href='/main.jsp'">돌아가기</button>
      </div>
    </div>
  </div>
</div> -->
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