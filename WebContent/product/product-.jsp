<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
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
         background-image: url("/images/index/index-main.png");
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
<div align="center" style="margin-top: -10px;">
<label class="bg-alt" id="first" style="width: 100%; background-color: white; height: 300px;">
 <h1 style="padding-top: 180px; color: white;"> 상품 투자하기</h1>
</label>
</div>
<div align="center" style="margin-top: 30px; ">
<h6>안전하면서 연 10% 이상의 수익 창출이 가능한 그린비 에서 투자를 시작하세요.</h6>
<a href="/invest.jsp" class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 20px; margin-top: 30px; margin-bottom: 15px;">
           <span class="icon mdi mdi-basket"></span>그린비 투자 알아보기</a>
</div>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 5px;"></label>
<div align="center" style="margin-bottom: 100px; margin-top: 30px;">
<!--  위 상품 전체를 잡는녀석 -->


<!-- 맨위와 밑 사이. center 정렬 -->
<div align="center" style="margin-top: 15px;">
              <div class="range range-xs-center">
              <table style="height: 330px; width: 310px;" border="0">
               <tr>
               <td>
               <div align="center">
<label style="width: 310px; height: 320px;">
<table style="width: 310px; height: 330px; border: 1px solid #CBCBCB;">
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="5" width="309" height="119"><img src="/images/index/main-1-1.png" style=""></td>
</tr>
<!-- 상품 메인이름 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" style="padding-left: 8px;" height="50">
<!-- <font style="font-weight: bold;" size="4px;">경남 의창 무동리 창원STX칸 1차</font> -->
<font style="font-weight: bold; font-size: 13px;">OOO 주식회사</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;" height="50">투자모집기간</td>
<td colspan="3" style="color: gray; font-size: 13px; padding-left: 35px;" height="50">&nbsp;&nbsp;&nbsp;&nbsp;2017-07-18 ~ 2017-07-18</td>
</tr>
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;"  height="50">대출금액/금리</td>
<td colspan="3" style="padding-left: 45px; color: #3399ff; font-size:13px;"  height="50">&nbsp;&nbsp;2,700만원 / <font color="#ff4d4d" style="font-size:13px;">12%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" align="center">
<a href="/product/product1.jsp" class="btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 13px; padding: 10px 15px;">
           <!-- <span class="icon mdi mdi-basket"></span> -->자세히보기</a>
</tr>
</table>
</label>
</div>
                </td>
              <td style="padding-left: 50px;">
                             <div align="center">
<label style="width: 310px; height: 320px;">
<table style="width: 310px; height: 330px; border: 1px solid #CBCBCB;">
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="5" width="309" height="119"><img src="/images/index/main-2-2.png" style=""></td>
</tr>
<!-- 상품 메인이름 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" style="padding-left: 8px;" height="50">
<!-- <font style="font-weight: bold;" size="4px;">경남 의창 무동리 창원STX칸 1차</font> -->
<font style="font-weight: bold; font-size: 13px;">마리에드 준비중</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;" height="50">투자모집기간</td>
<td colspan="3" style="color: gray; font-size: 13px; padding-left: 35px;" height="50">&nbsp;&nbsp;&nbsp;&nbsp;2017-07-17 ~ 2017-07-17</td>
</tr>
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;"  height="50">대출금액/금리</td>
<td colspan="3" style="padding-left: 45px; color: #3399ff; font-size:13px;"  height="50">&nbsp;&nbsp;2,000만원 / <font color="#ff4d4d" style="font-size:13px;">12%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" align="center">
<a href="/product/product2.jsp" class="btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 13px; padding: 10px 15px;">
           <!-- <span class="icon mdi mdi-basket"></span> -->자세히보기</a>
</tr>
</table>
</label>
</div>
</td>
               </tr>
               </table>
            </div>
        </div>
        <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 5px; margin-top: 30px;"></label>
  <!-- 추가 사항들. -->      
        <div align="center" style="margin-top: 30px;">
              <div class="range range-xs-center">
              <table style="height: 330px; width: 317px;" border="0">
               <tr>
               <td>
               <div align="center">
<label style="width: 317px; height: 320px;">
<table style="width: 317px; height: 330px; border: 1px solid #CBCBCB;">
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="5" width="309" height="119"><img src="/images/index/main-3-3.png" style=""></td>
</tr>
<!-- 상품 메인이름 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" style="padding-left: 8px;" height="50">
<!-- <font style="font-weight: bold;" size="4px;">경남 의창 무동리 창원STX칸 1차</font> -->
<font style="font-weight: bold; font-size: 13px;">코오롱 준비중</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;" height="50">투자모집기간</td>
<td colspan="3" style="color: gray; font-size: 13px; padding-left: 35px;" height="50">&nbsp;&nbsp;&nbsp;&nbsp;2017-07-16 ~ 2017-07-16</td>
</tr>
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;"  height="50">대출금액/금리</td>
<td colspan="3" style="padding-left: 45px; color: #3399ff; font-size:13px;"  height="50">&nbsp;&nbsp;2,000만원 / <font color="#ff4d4d" style="font-size:13px;">13%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" align="center">
<a href="/product/product3.jsp" class="btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 13px; padding: 10px 15px;">
           <!-- <span class="icon mdi mdi-basket"></span> -->자세히보기</a>
</tr>
</table>
</label>
</div>
                </td>
              <td style="padding-left: 50px;">
                             <div align="center">
<label style="width: 317px; height: 320px;">
<table style="width: 317px; height: 330px; border: 1px solid #CBCBCB;">
<!-- 이미지는 맨위에 -->
<tr>
<td colspan="5" width="309" height="109"><img src="/images/index/main-4-4.png" style=""></td>
</tr>
<!-- 상품 메인이름 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" style="padding-left: 8px;" height="50">
<!-- <font style="font-weight: bold;" size="4px;">경남 의창 무동리 창원STX칸 1차</font> -->
<font style="font-weight: bold; font-size: 13px;">골든빌 준비중</font>
</td>
</tr>
<!-- 상품 메인설명 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;" height="50">투자모집기간</td>
<td colspan="3" style="color: gray; font-size: 13px; padding-left: 35px;" height="50">&nbsp;&nbsp;&nbsp;&nbsp;2017-07-15 ~ 2017-07-15</td>
</tr>
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="2" style="padding-left: 9px; color: gray; font-size: 13px;"  height="50">대출금액/금리</td>
<td colspan="3" style="padding-left: 45px; color: #3399ff; font-size:13px;"  height="50">&nbsp;&nbsp;1,500만원 / <font color="#ff4d4d" style="font-size:13px;">13%</font>(12개월)</td>
</tr>
<!-- 간이 테이블 -->
<tr style="border-top: 1px solid #CBCBCB;">
<td colspan="5" align="center">
<a href="/product/product4.jsp" class="btn-primary-outline btn-xl page-scroll wow fadeInUp" style="font-size: 13px; padding: 10px 15px;">
           <!-- <span class="icon mdi mdi-basket"></span> -->자세히보기</a>
</tr>
</table>
</label>
</div>
</td>
               </tr>
               </table>
            </div>
        </div>
</div>


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