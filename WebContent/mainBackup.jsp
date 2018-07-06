<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>※GreenB※</title>
  <!-- start: Css -->
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
</head>
<script type="text/javascript">
window.onload = function() {
	// 동의함 체크했나 확인
	radioCheck();
}

/* var checkYes = document.getElementsByName('SpeedLoan')[0].id;
if(!frm.mb_policy.checked) { 
alert('개인정보수집 및 이용에 동의 하셔야 합니다!!'); 
 return false; 
} */

function radioCheck(f){
	  if(f.agree[1].checked==true){
	   alert('개인정보수집 및 이용에 동의하셔야 합니다.');
	  }else{
		  SpeedForm.submit();
	  }
}
</script>
<body>
<label class="bg-alt" style="width: 100%; background-color: white; height: 70px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="images/logo/logos.png" style="margin-top: 5px;"></a>
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 65px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">로그인</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="sign.jsp" style="padding-left: 15px;">회원가입</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#" style="padding-left: 15px;">로그인</a></li>
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
					<li><a class="nav-link page-scroll" href="contact.jsp" style="padding-left: 15px;">이용문의</a></li>
					<li class="divider"></li>
				</ul>
			</li>					
        </ul>
<ul class="nav navbar-nav pull-xs-right" style="padding-right: 10px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">회사소개</a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="company.jsp" style="padding-left: 15px;">그린비 소개</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="company2.jsp" style="padding-left: 15px;">그린비통계</a></li>
					<!-- <li><a class="nav-link page-scroll" href="#two" style="padding-left: 10px;">[2]Flexbox의 종류.</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="#three" style="padding-left: 10px;">[3]Jsp_size 조절.</a></li>
					<li><a class="nav-link page-scroll" href="#four" style="padding-left: 10px;">[4]BUTTON,BAR.</a></li> -->
				</ul>
			</li>					
        </ul>
</label>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
<%-- <jsp:include page="/include/mainheader.jsp" /> --%>
<!-- header -->
<div align="center" style="margin-top: 50px;">
<ul>
<li style="list-style: none;">
<!-- <button class="btn" id="btn" style="padding-left: -100px; border: none; background-color: white; margin-right: -16px; margin-bottom: -7px;"><img class="btn-img" src="images/grb-button1.png" onclick="localhost.href='#'"></button> -->
<a href="#" class="btn btn-lg" style="background-color: green; color: white; border-radius: 7px; margin-right: 5px;">그린비 대출상품<span class="box"></span></a>
<a href="main1.jsp" class="btn btn-lg green" style="padding: 15px 40px; border-radius: 7px; margin-right: 5px;">보험설계사 대출<span class="box"></span></a>
<a href="main2.jsp" class="btn btn-lg green" style="padding: 15px 55px; border-radius: 7px; margin-right: 5px;">신용대출&nbsp;<span class="box"></span></a>
<a href="main3.jsp" class="btn btn-lg green" style="border-radius: 7px; margin-right: 5px;">사업자 대출<span class="box"></span></a>
<a href="main4.jsp" class="btn btn-lg green" style="border-radius: 7px; margin-right: 5px;">개인회생 대출<span class="box"></span></a>
<li style="list-style: none; margin-top: 10px;">
<a href="main5.jsp" class="btn btn-lg green" style="margin-left: -1px; border-radius: 7px; margin-right: 5px;">&nbsp;주부/여성 대출&nbsp;&nbsp;<span class="box"></span></a>
<a href="main6.jsp" class="btn btn-lg green" style="border-radius: 7px; margin-right: 5px;">&nbsp;&nbsp;&nbsp;직장인 대출&nbsp;&nbsp;&nbsp;&nbsp;<span class="box"></span></a>
<a href="main7.jsp" class="btn btn-lg green" style="border-radius: 7px; margin-right: 5px;">보증인 대출<span class="box"></span></a>
<a href="main8.jsp" class="btn btn-lg green" style="border-radius: 7px; margin-right: 5px;">&nbsp;&nbsp;소액 대출&nbsp;&nbsp;<span class="box"></span></a>
<a href="main9.jsp" class="btn btn-lg green" style="border-radius: 7px; margin-right: 5px;">프리랜서 대출<span class="box"></span></a>
</li>
</ul>
</div>
<div align="center" style="margin-top: 75px;">
<h2 style="font-size: 40px;">보험설계사 대출</h2>
<h6 style="margin-top: 20px; color:#8c8c8c; size: 1px;">보험설계사가 직접 관리해주는 안전한 대출</h6>

<!-- 서브 컨텐츠 내용 시작 -->
	<div class="sub_contents" align="center" style="margin-left: 30px; margin-top: 55px;">
	<label style="border: 1px solid #cccccc; width:500px; height: 150px;  margin-right: 20px; margin-bottom: 20px; ">
	<img src="images/exp/mo3.png" style="margin-top: 15px; margin-right: 30px;" align="right">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 50px;">대출대상</li>
	<li style="list-style: none; color: #808080">보험설계사들을 위한 간편 대출</li>       
	<li style="list-style: none; color: #808080">&nbsp;</li>	
	</ul>
	</label>
	<label style="border: 1px solid #cccccc; width:500px; height: 150px;  margin-right: 20px;">
	<img src="images/exp/mo2.png" style="margin-top: 15px; margin-right: 30px;" align="right">
	<ul style="text-align: left;" margin-top: 5px;>
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 50px;">대출한도</li>
	<li style="list-style: none; color: #808080">100만원 ~ 최대 <font color='red'>300만원</font></li>
	<li style="list-style: none; color: #808080; padding-bottom:">&nbsp;&nbsp;&nbsp;</li>	
	</ul>
	</label>
	</div>
	<div class="sub_contents" align="center" style="margin-left: 30px;">
	<label style="border: 1px solid #cccccc; width:500px; height: 150px;  margin-right: 20px; margin-bottom: 20px;">
	<img src="images/exp/mo3.png" style="margin-top: 15px; margin-right: 30px;" align="right">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 50px;">금리</li>
	<li style="list-style: none; color: #808080">최고 연 <font color='red'>27.9%</font>이내</li>       
	<li style="list-style: none; color: #808080">(연체금리 연 27.9%이내)</li>	
	</ul>
	</label>
	<label style="border: 1px solid #cccccc; width:500px; height: 150px;  margin-right: 20px; margin-bottom: 20px;">
	<img src="images/exp/mo4.png" style="margin-top: 15px; margin-right: 30px;" align="right">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 50px;">대출기간</li>
	<li style="list-style: none; color: #808080">1개월 ~ <font color='red' size="4px">60개월</font>까지</li>       
	<li style="list-style: none; color: #808080">&nbsp;</li>	
	</ul>
	</label>
	</div>
	<div class="sub_contents" align="center" style="margin-left: 30px;">
	<label style="border: 1px solid #cccccc; width:500px; height: 150px;  margin-right: 20px; margin-bottom: 20px;">
	<img src="images/exp/mo5.png" style="margin-top: 15px; margin-right: 30px;" align="right">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 50px;">상환방법</li>
	<li style="list-style: none; color: #808080">원리금균등분할상환, 원금자유상환</li>       
	<li style="list-style: none; color: #808080">&nbsp;</li>	
	</ul>
	</label>
	<label style="border: 1px solid #cccccc; width:500px; height: 150px;  margin-right: 20px; margin-bottom: 20px;">
	<img src="images/exp/mo6.png" style="margin-top: 15px; margin-right: 30px;" align="right">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 23px; margin-right: 50px;">취급수수료</li>
	<li style="list-style: none; color: #808080">취급수수료, 중도상환수수료 없음</li>       
	<li style="list-style: none; color: #808080">&nbsp;</li>	
	</ul>
	</label>
  </div>
</div>
<!-- <img src="images/mainmenu/main-in1.png" style="margin-top: 40px;"> -->
<form name="SpeedForm" class="form-horizontal" method="post" id="panel" action="/loan.htm"> <!-- action은 아직 추가안함 -->
<div align="center" style="margin-bottom: 250px; margin-top: 60px;">
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
				<tr style="border-top:1px solid black;"><td></td><td></td></tr>
				<tr><td><div style="margin-top: 40px; border-top:3px solid black;"></div></td><td><div style="margin-top: 40px; border-top:3px solid black;"></div></td></tr>
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
						<textarea cols="50" rows="13" readonly style="width:1000px; height:200px; border:1px solid #d3d3d3; padding:15px; font-family:NanumGothic, 나눔고딕; font-size:14px; color:#666; line-height:26px;">
						1. (필수) 개인신용정보 조회 동의서

「신용정보의 이용 및 보호에 관한 법률」제32조 제2항 및 관계 법령에 따라 귀사가 아래와 같은 내용으로 신용조회회사로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.

(1) 조회할 신용정보
■ 식별정보 (성명,주소,주민등록번호,성별,국적,직업,직장,연락처 등)
■ 신용거래정보(대출,보증,현금서비스,조회,개설,기타신용거래정보)
■ 신용도 판단정보(연체,부도,공공정보,금융질서문란정보)
■ 신용능력정보 (신용등급,소득,기타신용능력정보)

(2) 조회 목적
■ 대부중개

(3) 조회동의 효력 기간
귀하가 상기 동의서를 제출한 시점부터 당해 대출계약의 효력이 종료하는 시점까지 상기 동의의 효력이 유지됩니다. 다만, 귀하가 신청한 대출이 본 그린비대부중개에 의해 거절된 경우에는 그 시점부터 동의의 효력은 소멸합니다.
※ 본 그린비가 신용조회회사를 통하여 귀하의 신용정보를 조회한 기록은 타 금융기관 등에 제공될 수 있으며, 귀하의 신용등급이 하락할 수 있음을 알려드립니다. 단, 2011년 10월 4일부터 귀하의 신용정보를 조회한 기록은 신용평가 목적으로 타 금융기관 등에 제공되지 않으며, 무등급자의 신용평가 목적 이외에는 신용등급 산정에 반영되고 있지 않습니다.
※ 상기내용이 변동하는 경우 인터넷 홈페이지에 게시 등을 통해 그 내용을 알릴 예정입니다.
※ 이에 대한 동의가 없을 경우 거래관계의 설정유지가 불가능할 수 있음을 알려드립니다.
2. (필수) 개인정보/개인신용정보 제공 동의서
본 계약과 관련하여 귀사가 본인으로부터 취득한 개인정보 내지 개인신용정보는 「신용정보의 이용 및 보호에 관한 법률」 제32조, 제33조 및 제34조, 「개인정보 보호법」제17조 및 제22조에 따라 타인에게 제공할 경우에는 본인의 사전 동의를 얻어야 하는 정보입니다. 이에 본인은 귀사가 본인의 개인정보/개인신용정보를 아래와 같이 제3자에게 제공하는 것에 대해 동의합니다.

(1) 신용조회회사에 개인신용정보 제공
■ 제공 대상 기관 : NICE신용평가정보㈜,코리아크레딧뷰로(주), (주) 리치앤리치대부중개
■ 이용 목적 : 대출중개를 위한 귀사와 동일한 목적 또는 본인의 신용을 판단하기 위한 자료로 활용하거나 공공기관에서 정책자료로 활용, 기타 법령에서 정한 목적으로 이용
■ 제공하는 개인신용정보 내용
① 개인식별정보 (성명, 주민등록번호, 주소, 직업, 국적, 연락처 등) 
② 신용거래정보(본 계약 이전 및 이후의 실적을 포함한 거래내용)
③ 채무보증현황 (본 계약 이전 및 이후의 보증 현황 포함) 
④ 대출사와 관련한 신용거래현황
⑤ 기타 대출신청 등과 관련하여 본인이 입력한 신청정보
※ 채무불이행정보(연체, 대위변제, 대지급, 부도 등)는 신용정보법 제32조제1항, 신용정보법 시행령 제28조 제1항 단서에 따라 동의 없이 신용조회회사에게 제공될 수 있습니다. 

(2) 제휴회사에 개인신용정보 제공
■ 제공 대상 기관
① ㈜바로크레디트대부, (주)그린비, ㈜태강대부, 에이앤피파이낸셜대부㈜, 산와대부주식회사등 각 지방자치단체에 등록된 대부업체
② 한국대부금융협회
③ ㈜ 리치앤리치대부중개
④ 본 대부중개를 위하여 대부중개업자를 거친 경우 그 대부중개업자
■ 이용 목적 : 대부중개
■ 제공하는 개인신용정보 내용 : 상기(1) 신용조회회사에 제공의 제공정보와 동일
■ 정보 보유 이용기간
귀하가 상기 동의서를 제출한 시점부터 당해 대출계약의 효력이 종료하는 시점까지 상기 동의의 효력이 유지됩니다. 다만, 귀하가 신청한 대출이 본 그린비대부중개에 의해 거절된 경우에는 그 시점부터 동의의 효력은 소멸합니다.

※ 이 동의서는 계약의 갱신 등으로 변경되는 경우에도 유효합니다.
※ 상기내용이 변동하는 경우 인터넷 홈페이지에 게시 등을 통해 그 내용을 알릴 예정입니다.
※ 상기내용에 대한 동의 여부는 아래와 같습니다. 상기내용에 대해 동의하지 아니하는 경우 단순 상담은 가능하나 당사와 금융거래를 할 수 없음을 양해하여 주시기 바랍니다.
3. (필수) 개인정보/개인신용정보 수집 및 이용 동의서

귀사와 ㈜리치앤리치대부중개가 본인 및 신용조회회사로부터 취득한 개인정보 내지 개인신용정보는 「정보통신망 이용촉진 및 정보보호등에 관한 법률」제 22조 및「신용정보의 이용 및 보호에 관한 법률」 제32조, 제33조 및 제34조, 「개인정보 보호법」제15조 및 제22조에 따라 귀사가 수집ㆍ이용하거나, 본인이 신청한 상거래관계의 설정 및 유지여부 등을 판단하기 위한 목적 외의 다른 목적으로 이용할 경우에는 본인의 사전 동의를 얻어야 하는 정보입니다. 이에 본인은 귀사와 ㈜ 리치앤리치대부중개가 본인의 개인정보/개인신용정보를 아래와 같이 수집ㆍ이용하는데 동의합니다.
■ 수집 및 이용 대상 신용 정보 : 개인식별정보(성명, 연락처 등), 고객의 소득, 재산, 주거, 직장정보 등, 개인신용정보(대출, 보증정보 등), 신용인증송부로 제출하는 신용정보
■ 수집 및 이용 목적 : 금융거래 설정 및 유지여부 등 판단, 기타 관련 법률에서 요구한 경우, 당사 내부의 시장조사 및 상품 개발 연구
■ 보유 및 이용기간 : 귀하가 본 동의를 철회하지 아니하는 한, 대출계약이 해지 기타 사유로 종료되더라도 향후 1년간 위 목적으로 이용하는 것에 대하여 동의합니다.

※ 상기내용이 변동하는 경우 인터넷 홈페이지에 게시 등을 통해 그 내용을 알릴 예정입니다.
※ 상기내용에 대한 동의 여부는 아래와 같습니다. 상기내용에 대해 동의하지 아니하는 경우 단순 상담은 가능하나 당사와 금융거래를 할 수 없음을 양해하여 주시기 바랍니다.


4. (필수) 고유식별정보 처리에 대한 동의서

■ 귀사가 「개인정보 보호법」제24조에 따라 본인의 개인정보/개인신용정보를 수집 이용, 제공, 조회 시 동의한 목적에 의거 본인의 고유식별정보를 처리하는 것에 동의합니다.

※ 고유식별정보 : 주민등록번호, 운전면허번호, 여권번호, 외국인등록번호

※ 귀하는 동의를 거부할 권리가 있으나, 이에 대한 동의가 없을 경우 대출계약의 체결-유지-이행-관리 등이 불가능할 수 있음을 알려드립니다.
5. (선택) 마케팅 목적의 개인정보 수집 및 이용동의서

■ 이용 대상 정보 : 성명, 생년월일, 성별, 휴대폰 번호
■ 이용 목적 : 고객에 대한 사은행사 및 판촉 행사, 당사의 상품-서비스 소개 및 판매
■ 보유 및 이용기간 :
귀하가 본 동의를 철회하지 아니하는 한, 귀하는 귀하와의 대출계약이 체결된 경우에는 해지 기타 사유로 종료된 날로부터, 대출계약이 체결되지 아니한 경우에는 해당 사실을 귀하에게 통지한 날로부터, 당사가 각 1년간 당사의 대출상품 소개 및 판매의 목적으로 귀하의 성명 및 핸드폰 번호를 이용합니다.

※ SMS 및 전화를 통한 금리인하 등 사은행사 및 당사 대출상품 소개에 동의합니다.

※ 상기내용이 변동하는 경우 인터넷 홈페이지에 게시 등을 통해 그 내용을 알릴 예정이며, 본 동의를 철회하고자 하는 경우 당사 고객센터로 연락해 주시기 바랍니다.

※ 특히 상기내용 중 당사의 서비스를 홍보하거나 판매를 권유하기 위하여 대출계약의 종료일 또는 대출계약의 체결 거절 통지일로부터 1년간 당사와 ㈜리치앤리치대부중개가 귀하의 위 개인정보를 활용할 수 있다는 점에 관하여 유의하시기 바랍니다.

※ 상기내용에 대한 동의 여부는 아래와 같습니다. 상기내용에 대해 동의하지 않더라도 당사 금융거래과정에서 어떠한 불이익도 발생하지 않습니다.


6. (필수)개인정보보호를 위한 이용자 동의사항
개인정보취급(처리)방침
그린비와 (주)리치앤리치대부중개는 신용정보의 이용 및 보호에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법, 통신비밀보호법 등 관련 법령에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 취급(처리)방침(이하 “방침”)을 두고 있습니다. 그린비대부중개와 ㈜리치앤리치대부중개는 본 방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

○ 본 방침은 2014년 4월 1일부터 시행됩니다.
1). 개인정보의 처리 목적
그린비대부중개와 ㈜리치앤리치대부중개는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.

가. 홈페이지 관리 서비스 부정이용 방지, 각종 고지-통지, 고충처리 등을 목적으로 개인정보를 처리합니다. 

나. 민원사무 처리 민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락-통지, 처리결과 통보 등을 목적으로 개인정보를 처리합니다.

다. 재화 또는 서비스 제공 및 운영 금융 서비스 제공, 서비스 제공에 관한 계약 체결 및 이행, 유지여부 등 판단, 요금정산 콘텐츠 제공, 금융거래 본인의 신용 평가, 본인인증, 연령인증, 요금결제-정산, 연체관리, 채권추심, 채권양도 및 담보제공, 회계감사, 공공기관의 정책용 자료, 기타 법령에서 정한 목적 등으로 개인정보를 처리합니다.

라. 마케팅 및 광고에의 활용 서비스(제품) 소개 및 판매, 신규 서비스 개발, 맞춤 서비스 제공, 이벤트 및 

광고성 정보 제공 및 참여기회 제공, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 접속빈도 파악 또는 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.


2). 처리하는 개인정보의 항목 및 수집방법
대부계약의 상담서비스와 대부계약 체결과 그 이행을 하는 과정에서 아래와 같은 신용정보들이 수집될 수 있습니다.
- 식별정보 (성명,주소,주민등록번호,성별,국적,직업,직장,연락처 등)
- 신용거래정보 (대출, 보증, 담보제공, 현금서비스, 카드론, 신용카드 및 (가계)당좌예금 개설내역 등)
- 신용능력정보 (재산, 채무, 소득의 총액, 납세실적 등)
- 신용평가정보 (신용등급, 신용평점 등)
- 신용도판단정보 (연체, 부도, 대지급, 신용질서 문란행위 등 신용정보 일체)
- 공공기관정보 (개인회생, 파산, 면책, 채무불이행등재 등 법원의 판결/결정정보, 각종 체납정보, 주민등록 관련 정보, 사회보험/공공요금 관련 정보 등)
- 대부계약에 따라 대부금의 계좌이체 시 은행명, 계좌번호 등(대부계약에 따른 원리금의 계좌이체 시 은행명, 계좌번호 등도 포함)
- 기타 대출계약의 체결/유지/이행/관리 등과 관련하여 본인이 제공하는 정보
- 수집방법 : 서면양식, 홈페이지, 이메일, 전화/팩스, 경품행사, 제휴사로부터의 제공 


3). 개인정보의 처리 및 보유 기간
① 그린비와 ㈜리치앤리치대부중개는 법령에 따른 개인정보 보유-이용기간 또는 고객으로부터 개인정보를 수집 시에 동의 받은 개인정보 보유-이용기간 내에서 처리, 보유합니다.

② 법령에 따른 개인정보 보유-이용 기간은 다음과 같습니다.

- 계약 또는 청약철회 등에 관한 기록
보존근거 : 전자상거래 등에서의 소비자 보호에 관한 법률
보존기간 : 5년 

- 대금결제 및 재화 등의 공급에 관한 기록
보존근거 : 전자상거래 등에서의 소비자 보호에 관한 법률
보존기간 : 5년 

- 소비자의 불만 또는 분쟁처리에 관한 기록
보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률
보존기간 : 3년 


- 본인확인에 관한 기록 :
보존이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률
보존기간 : 6개월 

- 웹사이트 방문기록 :
보존이유 : 통신비밀보호법
보존기간 : 3개월 
- 대부계약 및 그 보증계약과 관련하여 대통령령으로 정하는 계약관계서류 :
보존기간 : 대부계약 또는 보증계약을 체결한 날부터 채무변제일 이후 2년 

- 표시, 광고에 관한 기록 :
보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률
보존기간 : 6개월 

- 신용정보의 수집, 이용 등에 관한 기록
보존근거 : 신용정보의 이용 및 보호에 관한 법률, 개인정보보호법
보존기간 : 3년 

- 기타 고객의 동의를 받은 경우 : 동의를 받은 보유-이용 기간까지


4). 개인정보의 제3자 제공에 관한 사항
그린비는 법령의 규정에 의한 경우 또는 아래 각 항에서 보는 바와 같이 고객으로부터 별도의 동의를 얻은 경우에만 개인정보를 제3자에게 제공합니다.

① 신용조회회사에 개인신용정보 제공
- 제공 기관명 : NICE신용평가정보㈜, 코리아크레딧뷰로(주) 
- 이용 목적 : 본인의 신용을 판단하기 위한 자료로 활용하거나 공공기관에서 정책자료로 활용, 기타 법령에서 정한 목적으로 이용 
- 제공하는 개인신용정보 내용 
- 개인식별정보 (성명, 주민등록번호, 주소, 직업, 국적, 연락처 등)
- 신용거래정보(본 계약 이전 및 이후의 실적을 포함한 거래내용) 
- 채무보증현황 (본 계약 이전 및 이후의 보증 현황 포함)
- 대출사와 관련한 신용거래현황 
- 기타 대출신청 등과 관련하여 본인이 입력한 신청정보 
※ 채무불이행정보(연체, 대위변제, 대지급, 부도, 관련인 발생사실 등)는 신용정보법 제32조제1항, 신용정보법 시행령 제28조 제1항 단서에 따라 동의 없이 신용조회회사에게 제공될 수 있습니다. 

※ 정보 보유-이용기간 
제공 동의일로부터 당해 대출계약의 효력이 종료하는 시점까지 상기 동의의 효력이 유지됩니다. 다만, 귀하가 신청한 대출이 그린비 대부중개에 의해 거절된 경우에는 그 시점부터 동의의 효력은 소멸합니다. 

② 제휴회사에 개인신용정보 제공
- 제공 기관명 :
① ㈜바로크레디트대부, 그린비 대부㈜ ㈜태강대부, 에이앤피파이낸셜대부㈜, 산와대부주식회사등 각 지방자치단체에 등록된 대부업체
② 한국대부금융협회
③ ㈜ 리치앤리치대부중개
④ 본 대부중개를 위하여 대부중개업자를 거친 경우 그 대부중개업자
- 이용 목적 : 대부중개 - 제공하는 개인신용정보 내용 : 상기 ① 기재 신용조회회사에 제공되는 정보와 동일 
※ 정보 보유-이용기간 
제공 동의일로부터 당해 대출계약의 효력이 종료하는 시점까지 상기 동의의 효력이 유지됩니다. 다만, 귀하가 신청한 대출이 그린비대부중개에 의해 거절된 경우에는 그 시점부터 동의의 효력은 소멸합니다. 
5). 개인정보처리 위탁
회사는 대부중개의 원활한 개인정보 업무처리를 위하여 아래 현황과 같이 개인정보 처리업무를 위탁하고 있습니다.

① 수탁업체
그린비대부중개와 계약을 맺은 업체, ㈜리치앤리치대부중개, nice신용평가정보㈜, 코리아크레딧뷰로(주)

② 위탁업무 내용
대부중개(개인대출모집, 고객특성분석, 신용관련통계분석모형개발, 시장환경분석, 대출정보 복원 등)
6). 정보주체의 권리, 의무 및 그 행사방법
① 정보주체는 개인정보보호법에 따라 그린비대부중개에 대해 다음과 같은 개인정보 관련 권리를 행사할 수 있습니다.
 1) 개인정보 열람요구
 2) 오류 등이 있을 경우 정정 요구
 3) 삭제요구
 4) 처리정지 요구

② 제1항에 따른 권리 행사는 그린비대부중개에 대해 관련 법령에 규정된 절차에 따라 서면, 모사전송(FAX) 등을 통하여 하실 수 있으며 그린비대부중개는 이에 대해 지체 없이 조치하겠습니다. 

③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 그린비대부중개는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.

④ 제1항에 따른 권리 행사는 다음과 같이 진행됩니다.

1) 개인정보에 대한 열람 청구권 
정보주체는 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체가 처리하는 정보주체의 개인정보에 대한 열람을 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체에 요구할 수 있습니다. 이 경우 정보주체는 행정안전부령으로 정하는 바에 따라 다음 각 호의 사항 중 열람하려는 사항을 표시한 개인정보요구서를 회사에 제출하여야 하며 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체는 개인정보요구서를 수령한 날로부터 10일 이내에 정보주체에게 개인정보를 열람할 수 있도록 조치하겠습니다. 단, 법률에 따라 열람이 금지되거나 다른 사람의 생명, 신체를 해할 우려가 있는 경우 등의 사유로 열람이 제한, 연기 및 거절될 수 있습니다.

2) 개인정보의 정정ㆍ삭제 요구권 
개인정보를 열람한 정보주체는 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체에 그 개인정보의 정정 또는 삭제를 요구할 수 있습니다. (단, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없음).이 경우 정보주체는 행정안전부령으로 정하는 개인정보 정정ㆍ삭제 요구서를 회사에 제출하여야 하며 개인정보 정정ㆍ삭제요구서를 수령한 날로부터 10일 이내에 해당 개인정보를 정정ㆍ삭제하겠습니다.
3) 신용정보 처리정지 요구권 
정보주체는 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체에 대하여 개인정보 처리의 정지를 요구할 수 있습니다. 이 경우 정보주체는 행정안전부령으로 정하는 개인정보 처리정지 요구서를 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체에 제출하여야 하며 개인정보 처리정지 요구서를 수령한 날로부터 10일 이내에 해당 개인정보 처리를 정지하겠습니다. 단, 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체와 거래 중이며 해당 거래를 유지하고자 하는 정보주체는 개인정보 처리정지 시 거래관계를 유지할 수 없으므로 개인정보보호법 제37조 2항 4조에 따라 그린비대부중개 또는 대출중개를 위하여 계약을 맺은 업체는 개인정보 처리정지 요구를 거절할 수 있습니다.

⑤ 개인정보 요구서(열람/정정,삭제/처리정지) 및 이의제기 양식은 그린비.com사이트의 메인 페이지 에 있는 [고객의 권리] 메뉴에서 다운받으실 수 있으며 아래와 같은 방식으로 발송해주십시오.
1) 팩스 : 032-421-0884
2) 우편 : 인천광역시 동구 송화로 48(송현동)

⑥ 고객께서 개인정보와 관련한 요구(열람/정정,삭제/처리정지)가 납득할 수 없는 이유로 연기 혹은 거절되었다고 판단되실 경우 아래에 기재된 당사의 개인정보 관리(보호)책임자 또는 개인정보 관리(보호) 담당부서로 우편 또는 팩스로 이의제기 신청서를 보내주시면 그 날로부터 10일 이내에 해당 사항에 대해 다시 통지 해드리겠습니다. 단, 고객님 본인이 아닌 대리인일 경우 관계증명 및 대리인임을 증명할 수 있는 확인서류를 제출하셔야 합니다.

▶ 개인정보 관리(보호)책임자
성명 : 최윤희
직책 : 개인정보 관리(보호)책임자
직급 : 대표
연락처 : 1855-1991
주소: 인천광역시 동구 송화로 48(송현동)
이메일: jypark@loannloan.net
7). 개인정보의 파기
그린비대부중개는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

-파기절차 
이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법령의 규정에 의한 경우를 제외하고는 다른 목적으로 이용되지 않습니다.

-파기기한 
이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다. 

-파기방법 

전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
8). 개인정보의 안전성 확보 조치
그린비대부중개는 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적-관리적 및 물리적 대책을 강구하고 있습니다.

① 개인정보 취급 직원의 최소화 및 교육
개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다. 

② 정기적인 자체 감사 실시 
개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다. 

③ 내부관리계획의 수립 및 시행 
개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다. 

④ 개인정보의 암호화
이용자의 개인정보와 비밀번호는 암호화 되어 저장 및 관리되고 있어, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능하며, 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다. 

⑤ 해킹 등에 대비한 기술적 대책
그린비대부중개는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신-점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다. 

⑥ 개인정보에 대한 접근 제한 
개인정보를 처리하는 데이터베이스시스템에 대한 제한적 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다. 

⑦ 접속기록의 보관 및 위변조 방지
개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다. 

⑧ 문서보안을 위한 잠금장치 사용
개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다. 

⑨ 비인가자에 대한 출입 통제
개인정보를 보관하는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다. 
9). 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항 
그린비대부중개는 귀하의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)' 등을 운용합니다. 쿠키란 어떤 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사는 다음과 같은 목적을 위해 쿠키를 사용합니다. 

① 쿠키 등 사용 목적 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공 귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 

② 쿠키 설정 거부 방법 : 쿠키 설정을 거부하는 방법으로는 귀하께서 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 

- 설정방법 예(인터넷 익스플로러의 경우) : 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다. 
10). 개인정보 관리(보호)책임자 
① 그린비대부중개는 개인정보 처리에 관한 업무를 총괄해서 책임지고 개인정보 처리와 관련한 고객의 불만처리 및 피해구제 업무 등을 수행하기 위하여 아래와 같이 개인정보 관리(보호)책임자를 지정하고 있습니다."

▶ 개인정보 관리(보호)책임자

성명 : 최윤희
직책 : 개인정보 관리(보호)책임자
직급 : 대표
연락처 : 1855-1991
주소: 인천광역시 동구 송화로 48(송현동)
이메일: jypark@loannloan.net

※ 개인정보 관리(보호) 담당부서로 연결됩니다.

② 고객께서는 그린비대부중개의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 
그린비대부중개는 고객의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다. 개인정보에 관한 권익을 침해 당한 경우 개인정보 침해신고센터, 대검찰청, 사이버경찰청 등으로 문의하실 수 있습니다. 

1) 개인정보침해신고센터 ▶ 전화번호 : 02-405-5118  / 홈페이지 : http://privacy.kisa.or.kr 
2) 대검찰청 컴퓨터 등 첨단범죄신고 ▶ 전화번호:02-3480-2114론 / 홈페이지: http://www.spo.go.kr 
3) 사이버경찰청 ▶ 전화번호 : 1566-0112 / 홈페이지 : http://www.police.go.kr 
11). 만 14세 미만 아동의 개인정보보호 
그린비대부중개는 법정대리인의 동의가 필요한 만14세 미만 아동의 가입은 받고 있지 않습니다.
12). 개인정보 취급(처리)방침 변경 
본 방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다. 단, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 고지합니다. 

7. (필수)전자거래 기본약관

제 1 장 총칙
제1조(목적)
본 약관은 그린비대부중개 (이하 ‘회사’라고 칭함)가 운영하는 웹사이트(이하 ‘사이트’라고 한다)에서 제공하는 인터넷 관련 서비스를 이용함에 있어, 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.

제2조 (약관의 적용)
이 약관은 회사가 사이트상에서 제공하는 모든 서비스의 이용절차 및 기타 필요한 사항에 적용됩니다.

제3조(용어의 정의)

본 약관에 사용하는 용어의 정의는 다음과 같습니다.
1. ‘서비스’라 함은 회사가 사이트에서 제공하는 인터넷상의 모든 서비스를 말합니다.
2. ‘이용자’라 함은 사이트에 접속하여 이 약관에 따라 회사가 제공하는 서비스를 이용하는 자를 말합니다.

제4조(약관의 명시와 변경 등)
(1) 회사는 사이트에 본 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소, 전화번호, Fax번호, 사업자등록번호, 대부업등록번호 등을 이용자가 쉽게 알 수 있도록 사이트 초기 화면에 게시합니다.
(2) 회사가 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 사이트의 초기화면에 그 적용일자 7일전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 회사는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
(3) 회사가 본 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만, 이미 이용계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제2항에 의한 개정약관의 공지 기간 내에 회사에 직접 송신하거나 사이트를 통해 송신하여 회사의 동의를 받는 경우에는 개정약관조항이 적용됩니다. 이용자는 변경된 약관조항에 동의하지 않는 경우 서비스 이용 계약을 해지할 수 있습니다. 

제 2 장 서비스 이용
제5조(서비스의 종류)
회사가 이용자에게 제공하는 서비스의 종류는 다음 각호와 같습니다.
1. 사이트를 통한 대출신청
2. 계약내용 확인 및 출력
3. 온라인 상담 서비스
4. 지점조회 및 대출상품안내
5. 이용에 관련된 제공 서비스 

제6조(서비스 이용계약의 성립과 체결)
서비스 이용계약은 이용자가 되고자 하는 자가 본 약관에 동의하고 정해진 양식에 이용자정보(이름, 주민등록번호, 전화번호, 기타 회사가 필요하다고 인정하는 사항 등)를 기입하면 회사가 이에 대해 승낙함으로써 성립됩니다. 
(2) 서비스를 이용하고자 하는 희망자는 회사에서 요청하는 개인 신상정보를 허위 없이 제공하여야 합니다.
(3) 회사는 다음 각 호의 1에 해당하는 대출신청자에 대하여는 이를 응낙하지 아니하거나 서비스 이용을 제한할 수 있습니다.
1. 다른 사람의 명의를 사용하여 신청하였을 경우
2. 대출신청서의 내용을 허위기재 하였거나 허위서류를 첨부하여 신청하였을 경우
3. 기타 이용자의 귀책사유로 서비스이용에 대한 승낙이 곤란한 경우

(4) 회사는 제3항의 규정에 의하여 대출이 불승낙되거나 승낙을 제한하는 경우에는 이를 전자우편, 전화, 서면, SMS 등으로 대출 이용자에게 통지해야 합니다. 다만, 이용자의 책임 있는 사유에 의하여 통지할 수 없을 때에는 그러하지 아니합니다. 

제7조(서비스 이용 및 제한)
(1) 서비스 이용은 회사의 업무상 또는 기술상에 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다. 다만, 서비스의 종류 및 내용에 따라 일부 서비스는 이용안내에 규정함으로써 해당 시간에만 서비스 이용이 가능합니다.
(2) 회사는 다음 각 호에 해당할 경우에는 서비스 제공을 중지할 수 있습니다. 이러한 경우 회사는 사전 또는 사후에 이를 공지합니다.
1. 컴퓨터 등 정보통신설비의 보수점검-교체 및 고장이 발생하거나 전기통신사업법에 규정된 기간통신사업자가 전기통신서비스를 중지했을 경우
2. 정기점검, 서비스개발 등 불가피한 사유가 발생했을 경우
3. 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있을 경우
4. 대부업의 등록 및 금융이용자보호에 관한 법률(이하 ‘대부업법’이라고 칭함)의 관계 법령에 위배되었을 경우
5. 기타 관계 법령에 위배되었을 경우 

제8조(이용자에 대한 통지)
(1) 회사가 이용자에 대한 통지를 하는 경우, 이용자가 사이트를 통해 회사에 제출한 전자우편주소로 할 수 있습니다.
(2) 회사는 불특정다수의 이용자에 대한 통지의 경우 1주일 이상 사이트의 초기화면에 공지함으로써 개별 통지에 갈음할 수 있습니다.

제9조(서비스의 이용책임 및 의무)
(1) 이용자는 자기 책임 하에 서비스를 이용하며, 서비스 자료의 취사선택 또는 서비스 이용으로 불이익이 발생하더라도 이에 대한 책임은 이용자에게 있습니다.
(2) 이용자가 서비스를 이용하여 개시 또는 전송한 자료의 내용에 관하여 발생되는 책임은 이용자에게 있습니다.
(3) 이용자는 서비스 내용별로 회사가 서비스 공지사항에 게시하거나 별도로 공지한 이용제한사항을 준수하여야 합니다.

제 3 장 책임과 의무
제10조(회사의 책임과 의무)
(1) 회사는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다
(2) 회사는 본 약관에서 정한 바에 따라 계속적, 안정적인 서비스의 제공을 위하여 최선을 다하며, 설비에 장애가 생겼을 때에는 지체없이 이를 수리 또는 복구합니다. 다만, 천재지변, 비상사태 또는 그밖에 부득이한 사유가 있는 경우에는 그러하지 아니합니다.
(3) 회사는 이용자가 안전한 서비스를 이용할 수 있도록 이용자의 개인정보 보호를 위한 보안시스템을 갖추어야 합니다.
(4) 회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에 즉시 처리하여야 합니다.
(5) 회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용자와의 계약 관련절차 및 내용 등에 있어 이용자에게 편의를 제공하도록 노력합니다.
(6) 회사는 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않습니다. 

제11조(개인정보보호)
(1) 인터넷 대출 관련 서비스를 이용함에 있어 회사는 이용자의 정보수집 시 다음 사항을 필수 사항으로 합니다.
1. 성명
2. 주민등록번호
3. 주소
4. 전화번호
5. 기타, 서비스제공 등에 필요한 최소 정보
(2) 회사는 관련법령이 정하는 바에 따라서 이용자의 개인정보를 보호하기 위하여 노력합니다. 이용자의 개인정보 보호에 관해서는 관련법령 및 회사의 “개인정보보호정책”에 정한 바에 의합니다.
(3) 회사는 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 이용자의 동의를 받습니다.
(4) 제공된 개인 정보는 이용자의 동의 없이 목적 외의 이용자나 제3자에게 제공할 수 없으며, 다만 다음의 경우는 예외로 합니다.
1. 도용방지를 위하여 본인확인에 필요한 경우
2. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우
3. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 상태로 제공하는 경우
(5) 회사가 제3항과 제4항에 의하여 이용자의 동의를 받아야 하는 경우에는 정보의 수집목적 및 이용목적, 수집하는 개인정보의 항목, 개인정보의 보유기간, 제3자에 대한 정보제공 관련사항(제공 받은 자, 제공목적 및 제공할 정보의 내용, 제공받는 자의 개인정보의 보유-이용기간)을 미리 명시하거나 고지하여야 하며, 이용자는 언제든지 이 동의를 철회할 수 있습니다.
(6) 회사는 이용자의 개인정보의 분실, 도난, 유출 등으로 인한 이용자의 손해에 대하여 책임을 집니다.
제12조(이용자의 책임과 의무)
(1) 이용자는 인터넷 관련 서비스를 이용함에 있어 다음 각호의 행위를 하지 않아야 합니다.
1. 신청 또는 변경 시 허위내용의 등록
2. 타인의 정보도용
3. 사이트에 게시된 정보의 변경
4. 회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 개시
5. “회사” 기타 제3자의 저작권 등 지적재산권에 대한 침해
6. “회사” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 사이트에 공개 또는 개시하는 행위
8. 범죄와 결부된다고 객관적으로 인정되는 행위
9. 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염자료를 등록 또는 유포하는 행위
10. 서비스의 안정적 운영을 방해할 수 있는 정보를 전송하거나 수신자의 의사에 반하여 광고성 정보를 전송하는 행위
11. 기타 관계법령에 위배되는 행위
(2) 이용자는 본인의 신상관련 사항이 변경되었을 때는 인터넷을 통하여 수정하거나 유선으로 지체 없이 회사에 통보하여야 합니다.
(3) 이용자는 회사의 사전승낙 없이 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동으로 인한 결과에 대하여 회사는 책임을 지지 아니합니다.
(4) 이용자는 이 약관 및 관계법령에서 규정한 사항과 서비스 이용안내 또는 주의사항을 성실히 준수하여야 합니다.
(5) 이용자는 내용별로 회사가 서비스 공지사항에 게시하거나 별도로 공지한 이용제한사항을 준수하여야 합니다.
(6) 이용자는 회사의 사전동의 없이 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도, 증여할 수 없으며 이를 담보로 제공할 수 없습니다.
(7) 이용자는 반드시 본인의 실명으로 등록하여야 하며, 타인의 명의를 도용하는 경우 일체의 보호를 받을 수 없으며, 관계법령에 의하여 처벌 받을 수 있습니다.

제13조(계약사항의 변경)
이용자는 주소, 전화번호, 이용계약 내용을 변경하고자 하는 경우에는 회사의 공지 또는 서비스 이용안내에서 정한 바에 따라 서비스 또는 전화 등을 이용하여 변경할 수 있습니다. 

제14조(해지 및 서비스의 이용제한 등)
(1) 이용자가 이용계약을 해지하고자 할 경우에는 회사의 홈페이지 또는 회사가 정한 별도의 방법을 이용하여 회사에 해지 신청을 하여야 합니다. 이 경우는 소정의 해지 절차를 거쳐 해지를 요청한 이용자의 정보를 삭제합니다.
(2) 회사는 서비스 이용 신청 이후 제12조에 해당하는 위배사항이 있을 경우에는 본 이용을 철회하거나 또는 이용을 제한할 수 있습니다.
(3) 회사는 이용자가 다음 각 호의 1에 해당하는 행위를 하였을 경우, 사전통지 후 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 제한하거나 중지시킬 수 있습니다.
1. 공공질서 및 미풍양속에 반하는 경우
2. 범죄 행위에 관련되는 경우
3. 이용자가 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우
4. 타인의 명예를 손상시키거나 불이익을 주는 경우
5. 같은 이용자가 다른 정보로 이중 등록을 하거나 이용계약 신청서에 허위의 사실을 기재한 경우
6. 회사, 다른 이용자 또는 제3자의 지적재산권을 침해하는 경우
7. 회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우
8. 영리를 추구할 목적으로 서비스 가입을 한 것으로 판단되는 경우
9. 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해하는 경우
10. 이용자가 이용제한규정을 위반하거나 그 이용제한 기간 내에 제한사유를 해소하지 않는 경우
11. 기타 관련법령이 회사가 정한 이용조건에 위배되거나 본 약관에서 규정한 이용자의 의무를 이행하지 아니하는 경우
(4) 본 조 제3항에 해당하는 행위를 한 이용자는 이로 인해 회사 또는 다른 이용자에게 발생한 손해를 배상할 책임이 있습니다.
제15조(정보의 제공)
회사는 이용자가 서비스 이용에 필요가 있다고 인정되는 다양한 정보에 대해서는 전자우편이나, 서신우편, 전화, SMS 등의 방법으로 이를 제공할 수 있습니다.

제16조(게시물 등의 관리)
(1) 회사는 이용자가 게시하거나 전달하는 서비스의 모든 내용물(이용가간 전달되는 내용 포함)이 다음의 경우 에 해당한다고 판단되는 경우 사전 통지 없이 삭제할 수 있습니다.
1. 다른 이용자 또는 제 3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
2. 게시물 목적에 맞지 않는 내용인 경우
3. 공공질서 및 미풍양속에 위반되는 내용인 경우
4. 범죄적 행위에 결부된다고 인정되는 내용인 경우
5. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
6. 기타 관계법령에 위반된다고 판단되는 경우
(2) 회사는 게시물에 관련된 세부이용지침을 별도로 정하여 시행할 수 있으며, 이용자는 그 지침에 따라 각종 게시물(이용자간 전달되는 내용 포함)을 등록-삭제 등을 하여야 합니다.
(3) 회사는 본조 제1항에 해당하는 게시물 등에 대해서는 수정-삭제하는 모든 권한을 가지며, 이용자에게 별도의 통지 없이 내용을 수정. 삭제할 수 있습니다.
(4) 이용자는 개인적인 이익을 위해 회사에 게시물의 추가적 게재 등의 요구를 할 수 없습니다. 

제 4 장 회사의 면책과 손해배상 등

제17조(면책)
(1) 회사는 천재지변 또는 이에 준하는 불가항력, 회사의 귀책사유에 의하지 않은 통신기기, 회선 및 컴퓨터의 장애나 거래의 폭주 등으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 일체의 책임이 면제됩니다.
(2) 회사는 이용자의 귀책사유로 인한 서비스 이용의 장애에 대하여는 일체의 책임을 지지 않습니다.
(3) 회사는 이용자가 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.
(4) 회사는 이용자가 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 일체의 책임을 지지 않습니다.
(5) 회사는 이용자간 또는 이용자와 제3자 상호간에 서비스를 매개로 하여 물품 거래 등을 한 경우에는 일체의 책임이 면제됩니다.

제18조(손해배상)
회사는 이용자가 본 약관 제14조에 규정한 이용자의 의무에 반하는 행위를 하여 회사에 손해가 발생할 경우, 이에 대하여 이용자에게 손해액 전부의 배상을 청구할 수 있습니다.

제19조(저작권의 귀속 및 이용제한)
(1) 회사가 작성한 저작물에 대한 저작권 기타 지적재산권은 회사에 귀속합니다.
(2) 이용자는 회사를 이용함으로써 얻은 정보 중 회사에게 저낙권, 기타 지적재산권이 귀속된 정보를 회사의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.
(3) 회사는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다. 

제20조(분쟁해결)
회사 및 이용자는 이용자정보에 관한 분쟁이 발생한 경우 신속하고 효과적인 분쟁해결을 위하여 정보통신망이용촉진 및 정보보호 등에 관한 법률의 규정에 의해 설치된 개인정보분쟁조정위원회에 분쟁의 조정을 신청할 수 있습니다.

제21조(재판권 및 준거법)
회사와 이용자간에 발생한 분쟁에 대해 소송이 제기될 경우 회사의 본점소재지 또는 이용자의 주소지(또는 거소지)의 법원을 관할법원으로 합니다.

부칙
본 약관은 2014년 3월 1일부터 시행합니다.
						</textarea>
						<!-- 개인정보취급방침 끝 -->
					</td>
				</tr>
				<tr>
					<td class="text_01">개인(신용)정보 수집·이용 동의 [필수]</td>
					<td class="alignR pd_r30">
						<input type="radio" checked="checked" class="agree_group_1" title="동의함" name="agree" id="chkAgree" value="Y">
						<label for="Inok" class="on">동의함</label>
						<input type="radio" title="동의안함" class="agree_group_1" name="agree" id="Inno" value="N">
						<label for="Inno">미동의</label>
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
		<div align="center" style="margin-top: -200px; margin-bottom: 50px;">
		<input class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" onclick="location.href='radioCheck(this.form)'" value="대출상담 신청하기">
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
                <h6 class="text-uppercase">(주) 그린비</h6>
                <ul class="list-unstyled">
                    <li><label style="color: gray">대표 : 박승영 | 사업자 등록번호 : 454-81-00787</label></li>
                    <li><label style="color: gray">주소 : 인천광역시 남구 석바위로 58-1, 505호(주안동,영빌딩)</label></li>
                    <li><label style="color: gray">이메일 : coolmonster@naver.com</label></li>
                    <li><label style="color: gray"></label></li>
                </ul>
            </div>
             <div class="col-xs-6 col-sm-6 col-md-6">
                <h6 class="text-uppercase">(주) 그린비 대부</h6>
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
        <span class="pull-left text-muted small"><a href="http://bootstrap4.guide">Made by program</a> ©2017 GreenB Company</span>
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