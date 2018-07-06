<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="description" content="Miminium Admin Template v.1">
<meta name="author" content="Isna Nur Azis">
<meta name="keyword" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>※GreenB※</title>
  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
  <link href="css/sign.css" rel="stylesheet">
  <style type="text/css">
  .btn-primary, .label-primary, .alert-primary, .badge-primary {
    color: #fff !important;
    border: none !important;
    background-color: #1c84c6 !important;
  </style>
<script type="text/javascript">
$(document).ready(function(){
	var email = $('email');
    var id = document.getElementById("id");
    var theForm = opener.document.getElementById("regist");
    var btSubmit = $('.btn btn-lg btn-primary btn-block signup-btn');
    
    btSubmit.on('click', function(){
    	var regEmail = regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;   	
    	if(theForm.id.value==""||theForm.name.value==""||theForm.passwd.value==""||theForm.job.value==""||theForm.email.value==""||
    			theForm.phonenumber1.value==""||theForm.phonenumber2.value==""||theForm.phonenumber3.value==""||theForm.profile.value==""){
    		alert("필수 입력란이 비어있습니다. 확인해 주세요.");
    		console("들어는오냐3");
    }else{
    	console("들어는오냐4");
    	theForm.submit();
    	}
    })
});
function check_onclick(){
	console("들어는오냐1");
	var theForm = opener.document.getElementById("regist");	
	console("들어는오냐2");
	if(theForm.id.value==""||theForm.name.value==""||theForm.passwd.value==""||theForm.job.value==""||theForm.email.value==""||
			theForm.phonenumber1.value==""||theForm.phonenumber2.value==""||theForm.phonenumber3.value==""||theForm.profile.value==""){
		alert("필수 입력란이 비어있습니다. 확인해 주세요.");
		console("들어는오냐3");
	}else{
		console("들어는오냐4");
	theForm.submit();
	}
}
(function($) {
    $.fn.extend( {
        limiter: function(limit, elem) {
            $(this).on("keyup focus", function() {
                setCount(this, elem);
            });
            function setCount(src, elem) {
                var chars = src.value.length;
                if (chars > limit) {
                    src.value = src.value.substr(0, limit);
                    chars = limit;
                }
                elem.html( limit - chars );
            }
            setCount($(this)[0], elem);
        }
    });
})(jQuery);
</script>
</head>
   <style type="text/css">
   @media (max-width:300px;){
   .myclass {
   	width: 200px;
   	height: 200px;
   		}
	} 
	#first {
        background-color: #444;
         background-image: url("/images/logo/back.png");
          background-size: 100% 110%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }
    .placeholder { color:#252525; }
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
input:focus::-webkit-input-placeholder,
textarea:focus::-webkit-input-placeholder { 
  color:transparent;
}
input:focus:-moz-placeholder,
textarea:focus:-moz-placeholder { 
  color:transparent;
}
input:focus::-moz-placeholder,
textarea:focus::-moz-placeholder {
  color:transparent;
}
input:focus:-ms-input-placeholder,
textarea:focus:-ms-input-placeholder {
  color:transparent;
}
   </style> 
<body id="mimin" class="dashboard topnav">
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
        <div class="container" id="wrap" style="margin-bottom: 120px;">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3" style="margin-top: 50px;">
            <form name="regist" id="regist" action="/sign.htm" method="post" accept-charset="utf-8" class="form-horizontal" role="form">
            <h3 align="center"><i class="fa fa-user-plus"></i><div style="display: inline; margin-left: 10px; margin-right: 20px;">회원가입</div></h3>
                    <h6 align="center" style="margin-bottom: 20px; margin-top: 30px; color: #bfbfbf;">로그인 시 아이디로 사용됩니다.</h6>
                            <input type="text" name="id" class="form-control input-lg" placeholder="아이디" style="margin-bottom: 20px;" required/>
                          	<input type="text" name="name" class="form-control input-lg" placeholder="이름" style="margin-bottom: 20px;" required/>                
                    <input type="password" name="passwd" class="form-control input-lg" placeholder="비밀번호" style="margin-bottom: 20px;" required/>
                    <!-- <input type="password" name="confirm_password" class="form-control input-lg" placeholder="Confirm Password" required/> -->
                    <input type="text" name="job" class="form-control input-lg" placeholder="직업" style="margin-bottom: 20px;" required/>    
                    <input type="text" name="email" class="form-control input-lg" placeholder="이메일" required/>
                    <div class="col-xs-4 col-md-4">
                    <label style="font-size: 15px;"> </label>
                            <select name="phonenumber1" class = "form-control input-lg" style="margin-bottom: 20px;" required>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="012">012</option>
					<option value="016">016</option>
					<option value="018">018</option>
					<option value="019">019</option>
					</select>                        
					</div>
                        <div class="col-xs-4 col-md-4">
                        <label style="font-size: 15px;">   </label>
                           <input type="text" name="phonenumber2" class="form-control input-lg" maxlength="4" placeholder="" style="margin-bottom: 20px;" required>
                        </div>
                        <div class="col-xs-4 col-md-4">
                        <label style="font-size: 15px;"> </label>
                            <input type="text" name="phonenumber3" class="form-control input-lg" maxlength="4" placeholder="" style="margin-bottom: 20px;" required>                        
                        </div>
                        <label></label>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" id="regist" type="submit" style="font-weight: bold;">
                        가입하기</button>
                       <!--  <input class="btn btn-primary-outline btn-xl page-scroll wow fadeInUp" href="radioCheck(this.form)" value="대출상담 신청하기"> -->
            </form>          
          </div>
</div>
</div>
</footer>
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
    <!-- 빈칸 나오게하기위한 js -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/js/placeholder_ie2.js"></script>
	<script src="/js/script_ie9.js"></script>
</body>
</html>