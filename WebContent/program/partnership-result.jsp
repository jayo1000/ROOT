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
 <script type="text/javascript">
      function lo() {
    	  alert("로그아웃 후에 사용가능한 작업입니다.");    	  
      }
      </script>
</head>
<body id="body">
        <div>
          <link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.6.3/font-awesome.min.css"
integrity="sha384-Wrgq82RsEean5tP3NK3zWAemiNEXofJsTwTyHmNb/iL3dP/sZJ4+7sOld1uqYJtE" crossorigin="anonymous">

<nav class="navbar navbar-inverse"  style="background-color: #0E1A35;">
  <div class="container">
    <div class="navbar-header">
     <a class="menu"><i class="fa fa-bars" id="menu_icon"></i></a>
      <a class="navbar-brand" href="javascript:history.go(-1)">
      <font color="white"> GREENB-LOAN</font>        
      </a>
    </div><!--navbar-header close-->
    <div class="collapse navbar-collapse drop_menu" id="content_details">
      <ul class="nav navbar-nav navbar-right">

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
      <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-search"></span> Search</a></li>
        

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
           <div class="container" style="margin-bottom: 50px;">
<div class="resume" style="margin-top: 30px;">
<div align="center" style="margin-bottom: 50px; margin-top: 100px; ">
    <h1 class="page-title"><i class="fa fa-spinner"></i>&nbsp;사원 코드부여가 완료 되었습니다.</h1>
    <small>&nbsp;&nbsp;&nbsp;
    <i class="fa fa-clock-o"></i> Last Updated on: <time>Friday, October 20, 2017</time></small>
    </div>
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
    <div class="panel panel-default">
      <div class="panel-heading resume-heading">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-xs-12 col-sm-4" style="margin-top: 45px;">
              <figure>
                <img class="img-circle img-responsive" alt="" src="images/exp/developer.png">
              </figure>
                        
            </div>
<jsp:useBean id="user" class="kr.or.greenb.partnership.domain.Partnership" scope="request" />
            <div class="col-xs-12 col-sm-8">
              <ul class="list-group" style="margin-top: 20px;">
                <li class="list-group-item"><h4><i class="	glyphicon glyphicon-eye-open" style="margin-right: 5px;"></i>사원코드 :: ${user.partnerid}</h4></li>
                <li class="list-group-item"><h4><i class="glyphicon glyphicon-barcode" style="margin-right: 5px;"></i>비밀번호 :: ${user.passwd}</h4></li>
                <li class="list-group-item"><h4><i class="glyphicon glyphicon-user" style="margin-right: 5px;"></i>이     름 :: ${user.name}</h4></li>              
                <c:choose>
                <c:when test="${user.area eq '1'}">
                <li class="list-group-item"><h4><i class="fa fa-phone" style="margin-right: 5px;"></i>담당지역 :: 인천</h4></li>
                </c:when>
                 <c:when test="${user.area eq '2'}">
                <li class="list-group-item"><h4><i class="fa fa-phone" style="margin-right: 5px;"></i>담당지역 :: 광주</h4></li>
                </c:when>
                 <c:when test="${user.area eq '3'}">
                <li class="list-group-item"><h4><i class="fa fa-phone" style="margin-right: 5px;"></i>담당지역 :: 전주</h4></li>
                </c:when>
                 <c:when test="${user.area eq '4'}">
                <li class="list-group-item"><h4><i class="fa fa-phone" style="margin-right: 5px;"></i>담당지역 :: 동탄</h4></li>
                </c:when>
                 <c:when test="${user.area eq '5'}">
                <li class="list-group-item"><h4><i class="fa fa-phone" style="margin-right: 5px;"></i>담당지역 :: 기타</h4></li>
                </c:when>                
                </c:choose>             
              </ul>
            </div>
            <button class="btn ripple btn-round btn-3d btn-default" onclick="lo()" style="width: 180px; height: 40px; margin-left: 240px; margin-bottom: 20px; font-family: fantasy; margin-top: 20px;">로그인</button>
            <button class="btn ripple btn-round btn-3d btn-default" onclick="location.href='/alllist.htm'" style="width: 180px; height: 40px; margin-left: 25px; margin-bottom: 20px; font-family: fantasy; margin-top: 20px;">홈페이지</button>
          </div>
        </div>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4 style="padding-left: 20px; padding-top: 20px; padding-bottom: 10px; font-weight: bold;">사원코드 란?</h4>
        <ul class="list-group">
          <li style="list-style: none;"><a class="list-group-item inactive-link" href="#">
            지역 장부를 처리할 수 있는 사원에게 부여하는 권한입니다.
            <p class="list-group-item-text">
                  </li>
                  <li style="list-style: none;">
지역 결정 후에는 그 지역을 확인 할 수 있는 권리가 생기니. 부여 시 착오 없으시기 바랍니다 
          </a>
          </li>
        </ul>
      </div>
    </div>

  </div>
</div>
    
</div>

</div>
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