<%@page import="kr.or.greenb.member.dao.MemberDao"%>
<%@page import="kr.or.greenb.member.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.greenb.member.dao.JdbcMemberDao"%>
<%@page import="kr.or.greenb.common.factory.DaoFactory"%>
<jsp:useBean id="member" class="kr.or.greenb.member.domain.Member"
	scope="request" />
<jsp:setProperty property="*" name="article" />
<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String loginId = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("loginId")) {
				loginId = cookie.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<head>
<meta charset="EUC-KR">
  <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
  <title>Greenb local System</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="/asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="/asset/css/plugins/datatables.bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="/asset/css/plugins/animate.min.css"/>
<!-- <link rel="stylesheet" type="text/css" href="/css/jquery-ui.css"/> -->
 <!-- 추가한 파일 --> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <!-- end: Css -->
  <link rel="shortcut icon" href="/asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
      <script type="text/javascript">     
      window.onload = function() {    	  
    	  var now = new Date();
    	  var year = now.getFullYear();
    	  var month = now.getMonth()+1;
    	  var date = now.getDate();
    	  
    	  var on = year+"-"+ month +"-"+date;
    	  document.getElementById("beginday").value = on; 
    	  console.log(on);
      }
      </script>
      
      <script type="text/javascript">
      function plans() {
    		alert("아직 만들어진 플랜이 존재하지않습니다.");
    		console.log("나오냐");
          }
      function solid() {
    	  var im = document.getElementById("deposit").value;
    	  var cul = document.getElementById("totalmoney").value;
    		var loan
    		loan = (("%.2f%%%n", im - cul))
    		var sum = document.getElementById("balance");
    	/* 	var total = document.getElementById("total");
    		total.style.display=""; */
    		
    		sum.value = parseInt(loan);
    		console.log(sum.value);	
      }
      
    function address() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('address1').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address3').focus();
            }
        }).open();
    }
    
    function address2() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('address2').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address2').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address4').focus();
            }
        }).open();
    }
      $(function() {
    	  $( "#testDatepicker" ).datepicker({
    	         changeMonth: true, 
    	         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
       	         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
       	         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
       	         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    	         changeYear: true,
    	         showButtonPanel: true,
    	         nextText: '다음 달',
    	         prevText: '이전 달' ,
   	        	 currentText: '오늘 날짜', 
   	             closeText: '닫기', 
   	             dateFormat: "yy-mm-dd",
   	          
    	  });
    	});
      
      $(function() {
    	  $( "#lastDatepicker" ).datepicker({
    	         changeMonth: true, 
    	         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
       	         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
       	      	 monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
    	         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    	         changeYear: true,
    	         showButtonPanel: true,
    	         nextText: '다음 달',
    	         prevText: '이전 달' ,
   	        	 currentText: '오늘 날짜', 
   	             closeText: '닫기', 
   	             dateFormat: "yy-mm-dd",       
    	  });
    	});
      
      </script>
<style type="text/css">
.ui-datepicker {
    width: auto;
    padding: .2em .2em 0;
    display: none;
}

#body {
 background-color: white;
}

#write:hover{
color: white;
background-color: black;
}

#back {
background-image: url("/images/butt/background.jpg");
background-repeat: no-repeat;
 background-size: 100% 100%;
}

/** 임시로 퍼온 메인천장 **/
/*nav css*/
.navbar-inverse {background-color: #ffffff;border-radius: 0px;width:100%;position: fixed;z-index: 999;border: 0px solid;
-webkit-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);transition:all ease 0.8s;
-moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);}
.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus {
color:rgb(0, 4, 51) !important;background-color: #0e364c;}
.navbar-inverse .navbar-brand {color: rgb(0, 4, 51) !important}

.navbar-inverse .navbar-nav>li>a {color:rgb(255, 102, 0);font-family: 'Open Sans', sans-serif;font-weight: bold;}
.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus {color:write; !important;}
.menu { display:none;}
.search-box1 {padding: 20px 0px;z-index: 99999;width: 100%;}
.search {padding: 30px 0px;float: left;width: 100%;}
.serach-footer {left: 20px;position: absolute;top: 10px;}
.search-wrap {display: block;width: 100%;height: 40px;padding: 6px 12px;font-size: 14px;line-height: 1.42857143;color: #555;background-color: #fff;
background-image: none;border: 1px solid #e2e2e2;border-radius: 20px;
-webkit-box-shadow: inset 0 0px 0px rgba(0,0,0,.075);
box-shadow: inset 0 0px 0px rgba(0,0,0,.075);
-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
width: 100% !important;padding-left: 45px;}
.search-btn {background:rgb(0, 4, 51);
width: 100%;border-radius: 0px 20px 20px 0px;color: white; height: 40px;border: 0px solid;font-weight: 600;font-size: 14px;}
.search-btn:hover, .search-btn:focus {background:rgb(0, 4, 51);color: #fff !important;}
.modal-dialog {width: 90% !important;margin: 20% auto;}
.modal-content { background-color:rgb(255, 102, 0);}
.modal-title {color: #ffffff !important;}

/*nav css close*/
@media all and (max-width:768px){

.navbar-inverse .drop_menu {display: block;visibility: visible;width: 110px;height:1000px;padding:0px 20px;position: absolute;right:-100px;
transition:all ease 0.5s;border-top: 0px solid;cursor: pointer;}
a.menu { display:block !important;margin: 9px 2px;float: right;color: rgba(255, 102, 0, 0.98); border:0px solid; background:none; font-size:30px;width:27px;position: relative;
cursor:pointer;}
a.menu:hover, a.menu:focus { color:rgb(0, 4, 51);}

.drop_menu1 { display: block;visibility: visible;width:250px;height:1000px;padding:5px 30px;position: absolute;right:0 !important;
background-color:#ffffff !important; transition:all ease 0.5s;border-top: 0px solid;cursor: pointer;}

}

.btn-default, .label-default, .alert-default, .badge-default{
background-color: black;
color: white;
}
.ui-datepicker {
    width: auto;
    padding: .2em .2em 0;
    display: none;
}

/** 검색버튼 **/

.button-primary{
    color: #23849b;
    border-color: #23849b;
}
.button-primary:hover{
    color: #fff;
    background-color: #23849b;
}

</style>
</head>
<body id="body">
        <div>
          <link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.6.3/font-awesome.min.css"
integrity="sha384-Wrgq82RsEean5tP3NK3zWAemiNEXofJsTwTyHmNb/iL3dP/sZJ4+7sOld1uqYJtE" crossorigin="anonymous">

<nav class="navbar navbar-inverse"  style="background-color: #0E1A35;">
  <div class="container" style="width: 100%; margin-left: 50px;">
    <div class="navbar-header">
     <a class="menu"><i class="fa fa-bars" id="menu_icon"></i></a>
      <a class="navbar-brand" href="javascript:history.go(-1)">
      <font color="white"> GREENB-LOAN</font>        
      </a>
    </div><!--navbar-header close-->
    <div class="collapse navbar-collapse drop_menu" id="content_details">
      <ul class="nav navbar-nav navbar-right" style="margin-right: 80px;">


<!-- <li><a href="javascript:history.go(-1)"><span class="glyphicon glyphicon-home"></span> Home</a></li>
<li><a href="#"><span class="glyphicon glyphicon-font"></span> About Us</a></li> -->

       <!--<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-font"></span> About us<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Company</a></li>
            <li><a href="#">Work</a></li>
            <li><a href="#">Timing</a></li>
          </ul>
        </li>-->
       <!--  <li><a href="#"><span class="glyphicon glyphicon-heart-empty"></span> Why Choose us</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-phone"></span> What We Do</a></li>  -->
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Contact Us</a></li>        

      </ul><!--navbar-right close-->
    </div><!--collapse navbar-collapse drop_menu close-->
  </div><!--container-fluid close-->
</nav><!--navbar navbar-inverse close-->
<!--search box-->
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">Search Section [ 전체 검색 페이지 ]</h4>
        </div>
        <div class="modal-body">

 <section class="search-box1">
  <div class="container">
    <form class="form-inline" role="form">
      <div class="col-sm-8 col-xs-8 form-group top_search" style="padding-right:0px;">
        <div class="row">
          <label class="sr-only" for="search">검색내용을 적어주세요.</label>
          <span class="serach-footer"></span>
          <input type="text" class="form-control search-wrap" id="search" placeholder="검색내용을 적어주세요.">
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4 col-xs-4 form-group top_search" style="padding-left:40px;">
          <button type="submit" class="btn btn-default search-btn" id="sea">SEARCH [ 검색 ]</button>
        </div>
      </div>
    </form>
  </div>
</section>



        </div>
        
        </div>
      </div>
      
    </div>
  </div>
          </div>
           <form name="regist" id="regist" action="/sign.htm" method="post" accept-charset="utf-8" class="form-horizontal" role="form">
               <div class="panel box-shadow-none content-header">
                  <div class="panel-body" style="border: 1px solid black;">
                  </div>
              </div>
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3>&nbsp;<img src="/images/butt/gobest.png" style="margin-left: -40px;"> </h3></div>
                    <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
                    <img src="/images/butt/go.png">   
                     <select name="greenb_id" style="width: 100px; height: 50px; color: black; background-color: gray;" required disabled="disabled">
						<option value="1" >인천</option>
						<option value="2" selected="selected">광주</option>
						<option value="3">전주</option>
						<option value="4">동탄</option>
						<option value="5">기타</option>
				</select><label style="border-bottom: groove; margin-left: 15px;">담당자 계정 : <input type="text" value="<%=loginId%>" disabled="disabled" style="width: 100px;"> 님</label>
                    <input type="hidden" name="introduce" value="<%=loginId%>">
                    <input type="hidden" name="beginday" id="beginday">
                    <div align="center">
                    <table style="margin: auto; margin-top: 10px; border: 1px solid black;">
                    </table>                  
                   <table style="width: 100%;border: 1px solid black; margin-bottom: 30px;">
                     <tr style="border: 1px solid black; height: 50px;">
                     <th style="border: 1px solid black;  text-align: center; width: 80px;">성명</th>
                     <th style="border: 1px solid black; "><input type="text" style="margin-left: 50px; width: 70%; height: 30px;" name="name" placeholder="홍길동" required></th>
                     <th style="border: 1px solid black; text-align: center; width: 80px;">등록날짜</th>
                     <th style="border: 1px solid black;"><input type="text" name="endday" style="margin-left: 40px; width: 70%; height: 30px;" id="endday" placeholder="1999-01-01" required></th>
                     <th style="border: 1px solid black; text-align: center; width: 80px;">상호</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 40px; width: 70%; height: 30px;" placeholder="삼성전자(회사,사업이름)" name="bank"></th>
                   </tr>
                   <tr>
                    <th style="border: 1px solid black; text-align: center; height: 50px;">연락처</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 50px; width: 70%; height: 30px;" name="banknumber" placeholder="010-1234-1234"></th>
                     <th style="border: 1px solid black; text-align: center;">주소 ①</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 40px; width: 70%; height: 30px;" name="address1" id="address1"><input type="button" onclick="address()" class="button button-primary" style="height: 29.6px;" value="검색"></th>
                     <th style="border: 1px solid black; text-align: center;">주소 ②</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 40px; width: 70%; height: 30px;" name="address2" id="address2"></th>
                   </tr>
                   <tr>
                    <th></th>
                     <th></th>
                     <th colspan="2" style="height: 50px;"><input type="text" style="width: 67%; margin-left: 120px; height: 30px;" name="address3" id="address3"></th>
                     <th colspan="2"><input type="text" style="width: 65%; margin-left: 120px;height: 30px;" name="address4" id="address4"></th>
                   </tr>
                   </table>
                   <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
                   <img src="/images/butt/sang.png" style="float: left; margin-top: 10px;">
                   <select name="plan" style="width: 100px; height: 50px; color: black; float: left; margin-top: 10px;" required>
						<option value="0">플랜설정</option>
						<option value="1" id="g1">G1 플랜</option>
						<option value="2" id="g2">G2 플랜</option>
						<option value="3" id="g3">G3 플랜</option>
						<option value="4" id="g4">G4 플랜</option>
						<option value="5" id="g5">G5 플랜</option>
				</select>
				<button type="button" style="width: 100px; height: 50px; color: black; float: left; margin-top: 10px;" onclick="plans()"><i class="glyphicon glyphicon-step-forward"></i>플랜적용</button>
				<button type="button" style="width: 100px; height: 50px; color: black; float: left; margin-top: 10px;" onclick="solid()"><i class="glyphicon glyphicon-step-forward"></i>잔액계산</button>
                  <!-- <div class="col-md-12"> -->
                  <img src="/images/butt/sang2.png" style="float: left; margin-bottom: 10px; margin-top: 10px;">
                  
                   <table style="width: 100%; border: 1px solid black;">
                     <tr style="border: 1px solid black; height: 40px;">
                  
                   <th colspan="2" style="border-right: 1px solid white; border-left: 1px solid white; text-align: center; background-color: black; color: white;">입금액</th>
                   <th></th>
                   <th colspan="2" style="border-right: 1px solid white;  text-align: center; background-color: black; color: white;" >출금액</th>
                   <th style="text-align: center; background-color: black; color: white;" >잔금액</th>
                   <th style="text-align: center; background-color: black; color: white;" >담당자</th>
                   </tr>
                   <tr style="border: 1px solid black;">               
                   <th style="border: 1px solid black; height: 40px; text-align: center;">입금 날짜 [YYYY-MM-DD]</th>
                   <th style="border: 1px solid black; text-align: center;">입금액 ( 원 )</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">출금 날짜 [YYYY-MM-DD]</th>
                   <th style="border: 1px solid black; text-align: center;">출금액 ( 원 )</th>
                   
                   <th style="border: 1px solid black; text-align: center;">현재금액 ( 원 )</th>
                   <th style="border: 1px solid black; text-align: center;">담당자</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; height: 40px; text-align: center;"><input type="text" style="width: 80%" placeholder="YYYY-MM-DD" id="givenumber" name="givenumber"></th>
                   <th style="border: 1px solid black; text-align: center;"><input type="text" style="width: 80%" placeholder="숫자만 기입해주세요" id="deposit" name="deposit"></th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;"><input type="text" style="width: 80%" placeholder="YYYY-MM-DD" id="totalnumber" name="totalnumber"></th>
                   <th style="border: 1px solid black; text-align: center;"><input type="text" style="width: 80%" placeholder="숫자만 기입해주세요" id="totalmoney" name="totalmoney"></th>
                  
                   <th style="border: 1px solid black; text-align: center;"><input type="text" style="width: 80%" placeholder="숫자만 기입해주세요" id="balance" name="balance"></th>
                   <th style="border: 1px solid black; text-align: center;"><%=loginId%></th>
                   </tr>
                   </table>
                   </div>
                   
                   <div align="center" style="margin-top: 30px; margin-bottom: 30px;">
                    <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
                   <button class="ripple-infinite btn-round btn-3d btn-default" style="width: 120px; height: 50px; margin-right: 15px;" onclick="location.href='javascript:history.go(-1)';">돌아가기</button>
<button class="ripple-infinite btn-round btn-3d btn-default" type="submit" id="regist" style="width: 120px; height: 50px; margin-right: 15px;">등록</button>
                   </div>
                   </div>             
</div>
</div>
</form>
<!-- start: Javascript -->
<script src="/asset/js/jquery.min.js"></script>
<script src="/asset/js/jquery.ui.min.js"></script>
<script src="/asset/js/bootstrap.min.js"></script>


<!-- plugins -->
<script src="/asset/js/plugins/moment.min.js"></script>
<script src="/asset/js/plugins/jquery.datatables.min.js"></script>
<script src="/asset/js/plugins/datatables.bootstrap.min.js"></script>
<script src="/asset/js/plugins/jquery.nicescroll.js"></script>


<!-- custom -->
<script src="/asset/js/main.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script>
<!-- end: Javascript -->
</body>
</html>