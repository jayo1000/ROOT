<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>※GreenB※</title>
  <!-- start: Css -->
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/mainheader.css">
<link rel="stylesheet" href="css/button.css" />
<script type="text/javascript">
/*
Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
*/
window.onload = function() {
    $('.filterable .btn-filter').click(function(){
        var $panel = $(this).parents('.filterable'),
        $filters = $panel.find('.filters input'),
        $tbody = $panel.find('.table tbody');
        if ($filters.prop('disabled') == true) {
            $filters.prop('disabled', false);
            $filters.first().focus();
        } else {
            $filters.val('').prop('disabled', true);
            $tbody.find('.no-result').remove();
            $tbody.find('tr').show();
        }
    });

    $('.filterable .filters input').keyup(function(e){
        /* Ignore tab key */
        var code = e.keyCode || e.which;
        if (code == '9') return;
        /* Useful DOM data and selectors */
        var $input = $(this),
        inputContent = $input.val().toLowerCase(),
        $panel = $input.parents('.filterable'),
        column = $panel.find('.filters th').index($input.parents('th')),
        $table = $panel.find('.table'),
        $rows = $table.find('tbody tr');
        /* Dirtiest filter function ever ;) */
        var $filteredRows = $rows.filter(function(){
            var value = $(this).find('td').eq(column).text().toLowerCase();
            return value.indexOf(inputContent) === -1;
        });
        /* Clean previous no-result if exist */
        $table.find('tbody .no-result').remove();
        /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
        $rows.show();
        $filteredRows.hide();
        /* Prepend no-result row if all rows are filtered */
        if ($filteredRows.length === $rows.length) {
            $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="'+ $table.find('.filters th').length +'">No result found</td></tr>'));
        }
    });
}
</script>
</head>
<style type="text/css">
.filterable {
    margin-top: 15px;
}
.filterable .panel-heading .pull-right {
    margin-top: -20px;
}
.filterable .filters input[disabled] {
    background-color: transparent;
    border: none;
    cursor: auto;
    box-shadow: none;
    padding: 0;
    height: auto;
}
.filterable .filters input[disabled]::-webkit-input-placeholder {
    color: #333;
}
.filterable .filters input[disabled]::-moz-placeholder {
    color: #333;
}
.filterable .filters input[disabled]:-ms-input-placeholder {
    color: #333;
}

#first {
        background-color: #444;
         background-image: url("/images/logo/adminpage.png");
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
/********* SIDE NAV BAR ***********/
a {
color:#000;
}

li {
list-style:none;
} 

.panel-default>.panel-heading {
    color: #fff;
    background-color: #00436a;
    border-color: #ddd;
}

.panel-group .panel+.panel {
    margin-top: 0px;
}
.panel-group {
	margin-top: 35px;
}
.panel-collapse {
	background-color:rgba(220, 213, 172, 0.5);
}

.glyphicon { 
margin-right:10px; 
}


ul.list-group {
	margin:0px;
}

ul.bulletlist li {
	list-style:disc;
}


ul.list-group  li a {
 display:block;
 padding:5px 0px 5px 15px;
 text-decoration:none;
}

ul.list-group li {
	border-bottom: 1px dotted rgba(0,0,0,0.2);
}
	

ul.list-group  li a:hover, ul li a:focus {
 color:#fff;
 background-color: #00436a;
}

.panel-title a:hover,
.panel-title a:active,
.panel-title a:focus,
.panel-title .open a:hover,
.panel-title .open a:active,
.panel-title .open a:focus
 {
	text-decoration:none;
	color:#fff;
}

.panel-title>.small, .panel-title>.small>a, .panel-title>a, .panel-title>small, .panel-title>small>a {
        display: block;
}

@media (min-width: 768px){
.navbar-collapse.collapse 
	{
    display: block!important;
    height: auto!important;
    padding-bottom: 0;
    overflow: visible!important;
	padding-left:0px; 
}
}

@media (min-width: 992px){
.menu-hide {
    display: none;
}

}
.menu-hide .panel-default>.panel-heading {
    color: #fff;
    background-color: #8e8c8c;
    border-color: #ddd;
}

/********** END SIDEBAR *************/

/********** NAVBAR TOGGLE *************/

.navbar-toggle .icon-bar {
    background-color: #fff;
}
.navbar-toggle {
    padding: 11px 10px;
    margin-top: 8px;
    margin-right: 15px;
    margin-bottom: 8px;
    background-color: #a32638;
    border-radius: 0px;
}

/********** END NAVBAR TOGGLE *************/

/* .nav-side-menu {
  overflow: auto;
  font-family: verdana;
  font-size: 12px;
  font-weight: 200;
  background-color: #2e353d;
  position: fixed;
  top: 0px;
  width: 300px;
  height: 100%;
  color: #e1ffff;
}
.nav-side-menu .brand {
  background-color: #23282e;
  line-height: 50px;
  display: block;
  text-align: center;
  font-size: 14px;
}
.nav-side-menu .toggle-btn {
  display: none;
}
.nav-side-menu ul,
.nav-side-menu li {
  list-style: none;
  padding: 0px;
  margin: 0px;
  line-height: 35px;
  cursor: pointer;
  /*    
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
}
.nav-side-menu ul :not(collapsed) .arrow:before,
.nav-side-menu li :not(collapsed) .arrow:before {
  font-family: FontAwesome;
  content: "\f078";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
  float: right;
}
.nav-side-menu ul .active,
.nav-side-menu li .active {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
}
.nav-side-menu ul .sub-menu li.active,
.nav-side-menu li .sub-menu li.active {
  color: #d19b3d;
}
.nav-side-menu ul .sub-menu li.active a,
.nav-side-menu li .sub-menu li.active a {
  color: #d19b3d;
}
.nav-side-menu ul .sub-menu li,
.nav-side-menu li .sub-menu li {
  background-color: #181c20;
  border: none;
  line-height: 28px;
  border-bottom: 1px solid #23282e;
  margin-left: 0px;
}
.nav-side-menu ul .sub-menu li:hover,
.nav-side-menu li .sub-menu li:hover {
  background-color: #020203;
}
.nav-side-menu ul .sub-menu li:before,
.nav-side-menu li .sub-menu li:before {
  font-family: FontAwesome;
  content: "\f105";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
}
.nav-side-menu li {
  padding-left: 0px;
  border-left: 3px solid #2e353d;
  border-bottom: 1px solid #23282e;
}
.nav-side-menu li a {
  text-decoration: none;
  color: #e1ffff;
}
.nav-side-menu li a i {
  padding-left: 10px;
  width: 20px;
  padding-right: 20px;
}
.nav-side-menu li:hover {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
  -webkit-transition: all 1s ease;
  -moz-transition: all 1s ease;
  -o-transition: all 1s ease;
  -ms-transition: all 1s ease;
  transition: all 1s ease;
}
@media (max-width: 767px) {
  .nav-side-menu {
    position: relative;
    width: 100%;
    margin-bottom: 10px;
  }
  .nav-side-menu .toggle-btn {
    display: block;
    cursor: pointer;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 10 !important;
    padding: 3px;
    background-color: #ffffff;
    color: #000;
    width: 40px;
    text-align: center;
  }
  .brand {
    text-align: left !important;
    font-size: 22px;
    padding-left: 20px;
    line-height: 50px !important;
  }
}
@media (min-width: 767px) {
  .nav-side-menu .menu-list .menu-content {
    display: block;
  }
}
body {
  margin: 0px;
  padding: 0px;
}
</style>
<body>
<label class="bg-alt" style="width: 100%; background-color: white; height: 80px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="images/logo/logos.png" style="margin-top: 5px;"></a>
 <ul class="nav navbar-nav pull-xs-right" style="padding-right: 65px; padding-top: 10px;">
          <li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false" style="font-size: 15px; font-weight: bold;">총괄 관리자 <i class="glyphicon glyphicon-off"></i></a>
					<!-- <span class="caret"></span> -->
			<ul class="dropdown-menu" role="menu">
					<li><a class="nav-link page-scroll" href="/index.jsp" style="padding-left: 15px;">홈페이지로</a></li>
					<li><a class="nav-link page-scroll" href="/admin.jsp" style="padding-left: 15px;">관리자 페이지로</a></li>
					<li class="divider"></li>
					<li><a class="nav-link page-scroll" href="/logout.htm" style="padding-left: 15px;">로그아웃</a></li>
				</ul>
			</li>					
        </ul>
</label>
<label class="bg-alt" style="width: 100%; background-color: gray; height: 20px; margin-bottom: 30px;"></label>
<%-- <jsp:include page="/include/mainheader.jsp" /> --%>
<!-- header -->
<!-- <label id="first" style="width: 100%; height: 400px; margin-top: -10px;">
</label> -->
<div style="margin-top: -90px;">
<div id="first">
<div align="center" style="margin-top: 55px;">
  <!-- I was motivated to create this after seeing BhaumikPatel's http://bootsnipp.com/snippets/featured/accordion-menu; I adapted it to a list format rather than a table so that it would be easy to create a nav toggle button when viewed on mobile devices -->
  <div class="col-md-3" style="margin-top: -35px; margin-left: -15px;">
  <div id="sidenav1">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sideNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <div class="collapse navbar-collapse" id="sideNavbar">
      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="/index.jsp"><span class="glyphicon glyphicon-home"></span>홈으로</a> </h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-user"></span>회원 관리<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse  in">
            <ul class="list-group">
              <li class="navlink2"><a href="/table1.htm" class="navlink"><span class="glyphicon glyphicon-cog"></span>일반가입 고객목록</a></li>
              <li><a href="/table2.htm" class="navlink"><span class="glyphicon glyphicon-cog"></span>스피드론 신청고객</a></li>
              <li><a href="/table3.htm" class="navlink"><span class="glyphicon glyphicon-cog"></span>투자정보 신청고객</a></li>
              <!-- <li><a href="" class="navlink">Link 3</a></li -->
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-book"> </span>정보 관리<span class="caret"></span></a> </h4>
          </div>
          <!-- Note: By adding "in" after "collapse", it starts with that particular panel open by default; remove if you want them all collapsed by default --> 
          <div id="collapseTwo" class="panel-collapse collapse">
            <ul class="list-group">
              <li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>개발중</a></li>
              <!-- <li><a href="" class="navlink">Link 1</a></li>
              <li><a href="" class="navlink">Link 2</a></li>
              <li><a href="" class="navlink">Link 3</a></li>
              <li><a href="" class="navlink">Link 4</a></li> -->
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-calendar"> </span>테이블 관리<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse">
            <ul class="list-group">
              <li class="navlink2"><a href=""><span class="glyphicon glyphicon-calendar"></span>첫화면 누적대출액</a></li>
              <!-- <li><a href="" class="navlink"><span class="glyphicon glyphicon-calendar"></span>첫화면 누적대출액</a></li>
              <li><a href="" class="navlink">Link 2</a></li>
              <li><a href="" class="navlink">Link 3</a></li>
              <li><a href="" class="navlink">Link 4</a></li> -->
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-cog"> </span>설정<span class="caret"></span></a></h4>
          </div>
          <div id="collapseFour" class="panel-collapse collapse">
            <ul class="list-group">
              <li><a href="/game.jsp" class="navlink">점심 설정(사다리)</a></li>
              <!-- <li><a href="" class="navlink">야구 게임</a></li> -->
            <!--   <li><a href="" class="navlink">Link 3</a></li>
              <li><a href="" class="navlink">Link 4</a></li>
              <li><a href="" class="navlink">Link 5</a></li> -->
            </ul>
          </div>
        </div>
        <!-- This is in case you want to add additional links that will only show once the Nav button is engaged; delete if you don't need -->
        <div class="menu-hide">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a href=""><span class="glyphicon glyphicon-new-window"></span>External Link</a> </h4>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a href=""><span class="glyphicon glyphicon-new-window"></span>External Link</a> </h4>
            </div>
          </div>
        </div>
        <!-- end hidden Menu items --> 
      </div>
    </div>
  </div>
</div>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<div class="nav-side-menu" style="margin-left: 270px; padding-right: 50px; width: 1000px; height: 305px; color: #e1ffff; background-color: #2e353d;">
    <div class="brand">관리자</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="#" style="margin-left: -30px;">
                  <i class="fa fa-dashboard fa-lg"></i> 그린비 관리자 페이지 실행됨
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active" >
                  <a href="#" style="margin-left: -46px;"><i class="fa fa-gift fa-lg"></i> 관리자의 다양한 기능 설명 <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">CSS3 Animation</a></li>
                    <li><a href="#">General</a></li>
                    <li><a href="#">Buttons</a></li>
                    <li><a href="#">Tabs & Accordions</a></li>
                </ul>


                <li data-toggle="collapse" data-target="#service" class="collapsed">
                  <a href="#" style="margin-left: -46px;"><i class="fa fa-globe fa-lg"></i> 관리자의 서비스 설정 설명 <span class="arrow"></span></a>
                </li>  
                <ul class="sub-menu collapse" id="service">
                  <li>New Service 1</li>
                  <li>New Service 2</li>
                  <li>New Service 3</li>
                </ul>


                <li data-toggle="collapse" data-target="#new" class="collapsed">
                  <a href="#" style="margin-left: -32px;"><i class="fa fa-car fa-lg"></i> 관리자 새로운 진행상황 설명<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new">
                  <li>New New 1</li>
                  <li>New New 2</li>
                  <li>New New 3</li>
                </ul>


                 <li>
                  <a href="#" style="margin-left: -46px;">
                  <i class="fa fa-user fa-lg"></i> 관리자의 프로필 설정 설명
                  </a>
                  </li>

                 <li>
                  <a href="#" style="margin-left: -15px;">
                  <i class="fa fa-users fa-lg"></i> 관리자의 고객 테이블 관리 설명
                  </a>
                </li>
            </ul>
     </div>
</div>
</div>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 1px;"></label>
<div class="container">
    <h2 style="text-align: center; color: white; margin-top: 40px; font-weight: bold;">스피드론 신청 고객 테이블</h2>
    <hr>
    <div class="row" >
        <div class="panel panel-primary filterable" style="margin-bottom: 40px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center">스피드론 신청 고객목록</h3>
                <div class="pull-right">
                    <button class="btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span>검색</button>
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="번호" disabled></th>
                        <th><input type="text" class="form-control" placeholder="이름" disabled></th>
                        <th><input type="text" class="form-control" placeholder="연락처" disabled></th>
                        <th><input type="text" class="form-control" placeholder="신청금액" disabled></th>
                        <th><input type="text" class="form-control" placeholder="신청날짜" disabled></th>
                    </tr>
                </thead>
                <tbody>
              <c:forEach var="list" items="${list}" >							
                    <tr>
                        <td>${list.number}</td>
                        <td>${list.name }</td>
                        <td>${list.phonenumber1}-${list.phonenumber2}-${list.phonenumber3}</td>
                        <td>${list.requestmoney}</td>
                        <td>${list.regdate}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 1px;"></label>
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