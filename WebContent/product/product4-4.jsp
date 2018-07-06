<%@ page contentType="text/html; charset=utf-8" %>
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
<link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/mainheader.css">
<link rel="stylesheet" href="/css/button.css" />
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
<style type="text/css">
#first {
         background-color: #444;
         background-image: url("/images/logo/back-invest5.png");
         background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }
</style>
<body>
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="/images/logo/logos.png" style="margin-top: 5px;"></a>
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
<%-- <jsp:include page="/include/mainheader.jsp" /> --%>
<!-- header -->
<div align="center">
<label class="bg-alt" id="first" style="width: 100%; background-color: white; height: 300px;">
 <h1 style="padding-top: 140px; color: #f2f2f2;"> 그린비 투자상품</h1>
</label>
</div>
<div align="center">
<!--  위 상품 전체를 잡는녀석 -->
<label style="border: 1px solid #cccccc; width: 920px; height: 720px; margin-bottom: 20px;">
<table style="margin-top: 20px;">
<tr>
<td colspan="4" align="center" style="padding-bottom: 40px;">

<!-- 맨위와 밑 사이. center 정렬 -->
<div align="center" style="margin-top: 15px;">
<label style="border: 1px solid #cccccc; width: 460px; height: 420px; margin-bottom: 20px;">
<table>
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="3"><img src="/images/index/main-4.png"></td>
</tr>
<!-- 상품 메인이름 -->
<tr>
<td colspan="3" style="padding-top: 10px; padding-bottom: 10px; padding-left: 8px;">
<font style="font-weight: bold;" size="4px;">골든빌 준비중</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr>
<td style="padding-left: 10px; color: gray;">투자모집기간</td>
<td colspan="2" style="padding-left: 150px; color: gray;"> 2017-07-15 ~ 2017-07-15</td>
</tr>
<tr>
<td style="padding-left: 10px; color: gray;">대출금액</td>
<td colspan="2" style="padding-left: 240px; color: #3399ff;"><h5>1,500만원</h5></td>
</tr>
<tr>
<td style="padding-left: 10px; color: gray;">금리(만기)</td>
<td colspan="2" style="padding-left: 230px; color: gray;"><font color="#ff4d4d" size="5px;">13%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top:3px solid black;">
</tr>
<tr><td colspan="3">
<div style="margin-top: 10px; border-top:10px solid #3399ff;"></div></td>
</tr>
<tr>
<td style="padding-top: 10px;"><h5 style="color: #3399ff; padding-left: 10px;">100%</h5></td>
<td colspan="2" style="padding-top: 10px;"><h5 style="margin-left: 205px;">금액 1500만원</h5></td>
</tr>
</table>
</label>

</div></td>
</tr>

<tr>
<td>
<label style="border: 1px solid #cccccc; width:150px; height: 100px;  margin-right: 10px; margin-bottom: 20px;">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:25px; font-size: 18px; margin-right: 30px;">수익률</li>
	<li style="list-style: none; color: #808080">12.00%</li>       	
	</ul>
	</label></td>
	
	<td>
	<label style="border: 1px solid #cccccc; width:150px; height: 100px;  margin-right: 10px; margin-bottom: 20px;">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:25px; font-size: 18px; margin-right: 30px;">상환기간</li>
	<li style="list-style: none; color: #808080; margin-left: 10px;">13개월</li>       	
	</ul>
	</label>
	</td>
	
	<td>
	<label style="border: 1px solid #cccccc; width:150px; height: 100px;  margin-right: 10px; margin-bottom: 20px;">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:25px; font-size: 18px; margin-right: 30px;">모집금액</li>
	<li style="list-style: none; color: #808080">1500 만원</li>       	
	</ul>
	</label>
	</td>
	<td>
	<!-- <label style="width:230px; height: 120px;  margin-right: 10px; background-color: #EA1F3C; color: white; padding-top: 60px; text-align: center; font-size: 20px;"> -->
	<a data-toggle="modal" data-target="#alertModal" href="#alertModal"><img src="/images/button/imsi-3.png" style="margin-bottom: 20px;"></a>
	</td>
</tr>
<tr><td colspan="4">
<div style="margin-top: 10px; border-top:3px solid black;"></div></td>
</tr>
<tr>
<td></td><td></td>
<td></td><td><h5 style="font-weight: bold; margin-top: 20px;">1500만원 / 1500만원</h5></td>
</tr>
</table>
</label>
<div style="margin-top: 50px;"></div>
<!-- <h3 style="font-weight: bold;">투자 상품개요</h3> 상품 개요를 적을때 넣자. -->
<!-- 맨위부터 사이. center 정렬 -->

<label style="border: 3px solid black; width:1200px;"></label>
<div class="title left float_left" style="margin-top: 20px;"><h3>대출 신청 내역</h3></div>
<div class="contents left">
<div class="boardType1" style="margin-bottom: 100px; margin-top: 35px;">
			<table border="0" cellspacing="0" cellpadding="0">
			<colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
			<tbody>
				<tr style="border-top:1px solid black; height: 40px; background-color: #e6e6e6;">
					<td style="text-align: center;">상품</td>
					<td style="text-align: center;">대출금액</td>
					<td style="text-align: center;">금리(만기)</td>
					<td style="text-align: center;">대출기간</td>
				</tr>
				<tr style="border-top:1px solid black; height: 40px;">
					<td style="text-align: center;">부동산 담보대출</td>
					<td style="text-align: center;">15,000,000원</td>
					<td style="text-align: center;">13%</td>
					<td style="text-align: center;">12개월</td>
				</tr>
				<tr style="border-top:1px solid black; height: 40px; background-color: #e6e6e6;">
					<td style="text-align: center;">상환방식</td>
					<td style="text-align: center;">상환일</td>
					<td style="text-align: center;">월 상환 이자액</td>
					<td style="text-align: center;">그린비 등급</td>
				</tr>
				<tr style="border-top:1px solid black; height: 40px;">
					<td style="text-align: center;">만기일시상환</td>
					<td style="text-align: center;">매월 대출실행일의 응당일(월단위 후취)</td>
					<td style="text-align: center;">160,273원(30일)<p style="font-weight: bold; margin-bottom: -5px;">165,616원(31일)</td>
					<td style="text-align: center;">T1</td>
				</tr>
				<tr style="border-top:1px solid black;">
				<td colspan="4"></td>
				</tr>
				</tbody>
			</table>
		</div>
		
		<label style="border: 3px solid black; width:1200px;"></label>
<div class="title left float_left" style="margin-top: 20px;"><h3>담보정보 요약</h3></div>
<div class="contents left">
<div class="boardType1" style="margin-bottom: 100px; margin-top: 35px;">
			<table border="0" cellspacing="0" cellpadding="0">
			<colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
			<tbody>
				<tr style="border-top:1px solid black; height: 40px; background-color: #e6e6e6;">
					<td colspan="2" style="text-align: center;">매물유형</td>
					<td colspan="2" style="text-align: center;">건물면적/평형</td>
				</tr>
				<tr style="border-top:1px solid black; height: 40px;">
					<td colspan="2" style="text-align: center;">아파트(후)</td>
					<td colspan="2" style="text-align: center;">73.61/95.87m(29평)</td>
				</tr>
				<tr style="border-top:1px solid black; height: 40px; background-color: #e6e6e6;">
					<td colspan="2" style="text-align: center;">담보 감정가</td>
					<td colspan="2" style="text-align: center;">그린비 감정가</td>
				</tr>
				<tr style="border-top:1px solid black; height: 40px;">
					<td colspan="2" style="text-align: center;">150,500,000원</td>
					<td colspan="2" style="text-align: center;">125,000,000원</td>
				</tr>
				<tr style="border-top:1px solid black;">
				<td colspan="4"></td>
				</tr>
				</tbody>
			</table>
		</div>
  </div>
  
    <div class="boardType1" style="margin-bottom: 20px; margin-top: 10px;">
			<table border="0" cellspacing="0" cellpadding="0" style="table-layout: fixed;">
			<colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
			<tbody>
				<tr style="height: 80px;">
					<th colspan="4" style="text-align: center; font-size: 20px; width: 800px;">SAFETY ZONE RSS (Real estate Scoring System)</th>
					</tr>
					<tr>
					<td colspan="4" style="padding-left: 10px; width: 800px; font-size: 15px;">GREENBEE의 부동산 평가방법으로 KB시세, 국토교통부 실거래가, 인근 부동산 시세, 경매 사례 및 감정평가</td>
					</tr>
					<tr>
					<td colspan="4" style="padding-left: 10px; width: 800px; font-size: 15px;">법인의 평가액 을 바탕으로 감정가를 결정하고 물건 종류, 선순위, 담보인정비율 등을 감안하여 부동산의 잔존가</td>				
					</tr>
					<tr>
					<td colspan="4" style="padding-left: 10px; width: 800px; font-size: 15px;">치, 담보한도 대비 대출금액 등을 개별 물건별로 평가하여 최종 등급화하는 RSS(Real estate System)입니다.</td>
				</tr>
				</tbody>
				</table>
</div>

  
<div class="contents left"> 
<div class="boardType1" style="margin-bottom: 100px; margin-top: 35px;">
			<table border="1" cellspacing="0" cellpadding="0" style="table-layout: fixed;">
			<colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>	
			</colgroup>
			<tbody>
				<tr style="border-top:1px solid gray; height: 80px;">
					<th colspan="1" style="text-align: center; background-color: #EEF3F9; width: 200px;">물건종류</th>
					<td colspan="3" style="padding-left: 10px;  width: 600px; font-size: 15px;">&nbsp;담보로 취득하는 목적물의 분류 기준으로 아파트 선, 후순위, 주상복합, 오피스텔, 단독주택, 빌라, 다세대주택, 다가구주택, 근린주택, 근린생활시설, 오피스, 임대차보증금, 공장, 대지, 기타 등으로 분류하고 있습니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;">외부 감정가</td>
					<td colspan="3"  style="padding-left: 10px; font-size: 15px;">&nbsp;KB시세, 국토교통부 실거래가, 법원 감정가, 경-공매 낙찰가(매각가), 채권매입가, 감정평가법인의 추정가액 또는 감정 평가금액입니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;">GREENBEE 감정가</td>
					<td colspan="3"  style="padding-left: 10px; font-size: 15px;">&nbsp;외부 감정가 바탕으로 인근 부동산 시세, 급매물, 경매 사례 등을 조사하여 조정한 평가금액입니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;">선순위</td>
					<td colspan="3"  style="padding-left: 10px; font-size: 15px;">&nbsp;대출이 실행(모집 마감) 후에도 GREENBEE 보다 우선적으로 상환받는 채권입니다. 해당 금액이 0인 경우 GREENBEE 가 1순위 담보권을 취득하게 됩니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;">물건별 담보한도</td>
					<td colspan="3" style="padding-left: 10px; font-size: 15px;">&nbsp;내부 대출심사 기준에 의거 물건 종류별로 담보인정비율을 적용하여 산출된 최대 대출한도입니다.
개별 물건에 대한 담보한도 심사는 외부 감정과 GREENBEE 감정을 복수 평가합니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;">담보여력</td>
					<td colspan="3" style="padding-left: 10px; font-size: 15px;">&nbsp;개별 물건에 대한 외부 감정 및 GREENBEE 감정에서 선순위를 차감한 금액입니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;">LTV(부채비율)</td>
					<td colspan="3" style="padding-left: 10px; font-size: 15px;">&nbsp;외부 감정가(공정가치) 대비 대출금(부채) 비중으로, 이 비율은 낮을수록 담보 안정성이 높습니다.
▶계산식 : LTV = (GREENBEE 대출금 + 선순위) / 외부 감정가(공정가치) </td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;;">SAFETY ZONE</td>
					<td colspan="3" style="padding-left: 10px; font-size: 15px;">&nbsp;GREENBEE 감정가 대비 선순위 금액의 비중, 담보한도 대비 대출금 비중, 대출 실행(모집마감) 후 부동산의 잔존가치 등을 종합적으로 반영하여 평가한 SCORING입니다.</td>
				</tr>
				<tr style="border-top:1px solid black; height: 80px;">
					<td colspan="1" style="text-align: center; background-color: #EEF3F9;;">GRADE</td>
					<td colspan="3" style="padding-left: 10px; font-size: 15px;">&nbsp;물건 종류, 외부 감정, SAFETY ZONE 등 3개 부문의 SCORING을 종합하여 산출되는 등급으로 T1 ~ T4로 안내가 되며, 담보물의 안정성은 T1 ~ T4 순입니다.</td>
				</tr>
				</tbody>
			</table>
		</div>
</div>
<label style="border: 3px solid black; width:1200px;"></label>
<div class="title left float_left" style="margin-top: 20px;"><h3>투자시 유의사항</h3></div>
<div class="sub_contents" align="center" style="margin-top: 35px;">
	<label style="border: 1px solid #cccccc; width:980px; height: 350px;  margin-right: 20px; margin-bottom: 100px;">
	<ul style="text-align: left;">
	<li style="list-style: none; padding-top:30px; font-size: 18px; margin-right: 30px; padding-bottom: 20px;">◆ 온라인을 통한 금융투자상품의 투자는 회사의 권유없이 회원님은 독자적인 판단에 의해 이루어집니다.</li>
	<li style="list-style: none; font-size: 18px; margin-right: 30px; padding-bottom: 20px; ">◆  부동산 투자 자금의 특성상 상환예정일이 변경 또는 중도 상환 될 수 있습니다.</li>       
	<li style="list-style: none; font-size: 18px; margin-right: 30px; padding-bottom: 20px;">◆  만기 시 채무자의 상환에 따라 연체가 발생할 수 있고 채권 추심 등을 통해 투자금 회수에 상당기간이 소요될 수 있습니다.</li>
	<li style="list-style: none; font-size: 18px; margin-right: 30px; padding-bottom: 20px;">◆  부동산이 담보로 제공되나 채무 불이행 시 경,공매 등의 환가절차 과정에서 원금의 손실이 발생될 수 있습니다.</li>	
	<li style="list-style: none; font-size: 18px; margin-right: 30px;">◆<font color="#951015"> 당사는 원금 및 수익률을 보장하지 않으므로</font> 투자 시 신중한 결정을 하셔야 하며 원금 및 이자에 대한 신중한 검토 후 투자를 진행 하시기 바랍니다.</li>		
	</ul>
	</label>
</div>
	
<!-- 맨 밑  -->
</div>
<!-- 

상품 기본틀
<div align="center" style="margin-top: 75px; margin-bottom: 100px;">
<label style="border: 1px solid #cccccc; width: 460px; height: 550px; margin-bottom: 20px;">
<table>
이미지는 맨위에
<tr>
<td colspan="3"><img src="/images/index/main-1.png"></td>
</tr>
상품 메인이름
<tr>
<td colspan="3" style="padding-top: 10px; padding-bottom: 10px; padding-left: 8px;">
<font style="font-weight: bold;" size="5px;">경남 의창 무동리 창원STX칸 1차</font>
</td>
</tr>
상품 메인설명
<tr>
<td style="padding-left: 10px; color: gray;">투자모집기간</td>
<td colspan="2" style="padding-left: 150px; color: gray;"> 2017-07-18 ~ 2017-07-18</td>
</tr>
<tr>
<td style="padding-left: 10px; color: gray;">대출금액</td>
<td colspan="2" style="padding-left: 250px; color: #3399ff;"><h5>2,700만원</h5></td>
</tr>
<tr>
<td style="padding-left: 10px; color: gray;">금리(만기)</td>
<td colspan="2" style="padding-left: 230px; color: gray;"><font color="#ff4d4d" size="5px;">12%</font>(12개월)</td>
</tr>
간이 테이블
<tr style="border-top:3px solid black; height: 50px;">
<td style="padding-left: 30px;">상품</td>
<td style="padding-left: 120px;">등</td>
<td style="padding-left: 150px;">LTV</td>
</tr>
<tr style="border-top:1px solid black; height: 50px;"">
<td style="padding-left: 30px;">아파트(후)</td>
<td style="padding-left: 120px;">11</td>
<td style="padding-left: 150px;">68%</td>
</tr>
<tr><td colspan="3">
<div style="border-top:1px solid gray;"></div></td>
</tr>
<tr><td colspan="3">
<div style="margin-top: 10px; border-top:10px solid #3399ff;"></div></td>
</tr>
<tr>
<td style="padding-top: 10px;"><h5 style="color: #3399ff; padding-left: 10px;">100%</h5></td>
<td colspan="2" style="padding-top: 10px;"><h5 style="margin-left: 205px;">금액 2700만원</h5></td>
</tr>
</table>
</label>
</div> -->
<div id="alertModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body text-xs-center">
                <h2 class="text-xs-center">[상품투자  종료]</h2>
       			<p class="text-xs-center">본 상품은 투자가 종료되었습니다.다른 상품을 확인해주세요.</p>
                <p class="text-xs-center">( 좋은 상품으로 찾아가는 그린비가 되겠습니다. )</p>
                <br>
                <button class="btn btn-primary btn-lg" data-dismiss="modal" aria-hidden="true" onclick="location.href='/product/product2.htm'">OK</button>
            </div>
        </div>
    </div>
</div>
</div>
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
<!-- 스크립트 모음 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>