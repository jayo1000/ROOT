<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
  <title>Greenb local System</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="/asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="/asset/css/plugins/datatables.bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="/asset/css/plugins/animate.min.css"/>
  <link href="/asset/css/style.css" rel="stylesheet">
  <!-- end: Css -->
  <link rel="shortcut icon" href="/asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
      <script type="text/javascript">
/*
Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
*/
window.onload = function() {
	
    $('#close').click(function() {
      $('#pop').hide();      
    });
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
setInterval("theDate()", 1000);
function theDate() {
var now = new Date();
var year = now.getFullYear();
var month = now.getMonth()+1;
var date = now.getDate(), day;

switch(now.getDay())
{
case 0 : day = "일요일"; break;
case 1 : day = "월요일"; break;
case 2 : day = "화요일"; break;
case 3 : day = "수요일"; break;
case 4 : day = "목요일"; break;
case 5 : day = "금요일"; break;
case 6 : day = "토요일"; break; }

document.getElementById("server_time").innerHTML ="<h4 style='margin-left:15px;'><B>" + year + "년 " + month + "월 " + date + "일 " + day + "</B></h4>"
+"<h2 style='margin-left:10px;'><B>" + now.getHours() + "시 " + now.getMinutes() +"분 " + now.getSeconds()+ "초</B></h2>";
}
</script>  
   
<style type="text/css">
#link:hover {
color: black;
font-weight: bolder;
background-color: white;
}
@media (min-width:768px){.container{width:750px}}
@media (min-width:1024px){
.container{width:980px; font-size: 11px;}
.form-control{font-size: 11px;}
}
@media (min-width:1281px){.container{width:1600px; font-size: 13px;}
.form-control{font-size: 13px;}}
#ch:hover {
background-color: #2196F3;
}
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

.panel-primary .panel-heading, .progress-bar.progress-bar-primary {
    background-color: #1c84c6 !important;
   /*  background-color: black !important; */
}

.navbar {
    height: 55px;
    background-color: #217EC6;
    color: #fff;
    border: none;
    /* height: 55px;
    background-color: black;
    color: #fff;
    border: none; */
}

    #pop{
  width:500px; height:270px; background:white; color:black; 
  position:absolute; top:60px; left:500px; text-align:center; 
  border:2px solid #000;
 /*  background-image: url("/images/renuwal/pop.png"); */
   }
   .setDiv {
            padding-top: 100px;
            text-align: center;
        }
        .mask {
            position:absolute;
            left:0;
            top:0;
            z-index:9999;
            background-color:#000;
            display:none;
        }
        .window {
            display: none;
            background-color: #ffffff;
            height: 200px;
            z-index:99999;
        }
/** left 마우스갈씨 빛남**/      
#left-menu .sub-left-menu a:hover{
 /* color: #918C8C; */
 font-size: 16px;
 font-weight: 400;
 line-height: 42px;
 color: white;
 background-color: black;
}

#left-menu .sub-left-menu .time p {
    margin-top: -20px;
    text-align: center;
    font-size: 15px;
    color: #918C8C;
}

 #write:hover {
 background-color: white;
 color: black;
 }
</style>
</head>
<body id="mimin" class="dashboard">
      <!-- start: Header -->
        <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              <div class="opener-left-menu is-open">
                <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
              </div>
                <a href="/program/table.jsp" class="navbar-brand"> 
                 <b><img src="/images/program/mainlogo.png" style=" height: 40px; margin-top: -7px; margin-left: -7px;">&nbsp;Greenb Local System</b>
                </a>

              <!-- <ul class="nav navbar-nav search-nav">
                <li>
                   <div class="search">
                    <span class="fa fa-search icon-search" style="font-size:23px;"></span>
                    <div class="form-group form-animate-text">
                      <input type="text" class="form-text" required>
                      <span class="bar"></span>
                      <label class="label-search">Type anywhere to <b>Search</b> </label>
                    </div>
                  </div>
                </li>
              </ul> -->

              <ul class="nav navbar-nav navbar-right user-nav" style="margin-right: 10px;" >
                <li class="user-name"><span>내 정보페이지(MYPAGE)</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="/asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown" style="background-color: black;">
                     <li style="color: blue;"><a href="#" id="ch"><span class="fa fa-user"></span> 내정보(My Profile)</a></li>
                    <li><a href="/partnerlogout.htm" id="ch"><span class="fa fa-power-off "></span> 로그아웃(Logout)</a></li>
                     <li role="separator" class="divider"></li>
                  <!--    <li class="more" style="background-color: black;">
					<ul>
                        <li><a href=""><span class="fa fa-cogs"></span></a></li>
                        <li><a href=""><span class="fa fa-lock"></span></a></li>
                        <li><a href=""><span class="fa fa-power-off "></span></a></li>
                      </ul>
                    </li> -->
                  </ul>
                </li>
<!-- <li><a href="#" class="opener-right-menu"><span class="fa fa-coffee"></span></a></li> -->
              </ul>
            </div>
          </div>
        </nav>
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
            <div id="left-menu">
              <div class="sub-left-menu scroll">
              <!-- <div class="sub-left-menu scroll"  style="background-color: black;"> -->
                <ul class="nav nav-list">
                    <li><div class="left-bg"></div></li>
                    <li id="server_time">
                      <!-- <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">토요일, 팔월 1일 2029년</p> -->
                    </li>
                    <li class="active ripple">
                      <a class="tree-toggle nav-header"><span class="fa-home fa"></span>기본 메뉴 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a href="employee.html"><span class="glyphicon glyphicon-user"></span>사원 목록</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>인천 지역(Inchen)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/program/table.jsp"><span class="fa fa-table"></span>전체 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                      <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>광주 지역(Gwangju)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="chartjs.html"><span class="fa fa-table"></span>전체 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>전주 지역(Jeonju)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="chartjs.html"><span class="fa fa-table"></span>전체 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>동탄 지역(Dongtan)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="chartjs.html"><span class="fa fa-table"></span>전체 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                     <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>기타 정리(the others)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="chartjs.html"><span class="fa fa-table"></span>전체 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                     <li class="ripple"><a class="tree-toggle nav-header"><span class="glyphicon glyphicon-piggy-bank"></span>은행 링크<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a href="https://www.kbstar.com/" target="_black" id="link">국민은행</a></li>
                        <li><a href="https://www.shinhan.com/index.jsp" target="_black" id="link">신한은행</a></li>
                        <li><a href="http://www.nonghyup.com/Main/main.aspx" target="_black" id="link">농협</a></li>
                        <li><a href="http://www.cu.co.kr/CPSI020000.do" target="_black" id="link">신협</a></li>
                        <li><a href="https://www.wooribank.com/" target="_black" id="link">우리은행</a></li>
                      </ul>
                    </li>
                    <li class="ripple"><a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span>만든 이<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a href="handsontable.html"><span class="glyphicon glyphicon-phone"></span>문의사항 / 건의사항</a></li>
                      </ul>
                    </li>
              
                  </ul>
                </div>
            </div>
          <!-- end: Left Menu -->

          <!-- start: Content -->
            <div id="content">
               <div class="panel box-shadow-none content-header">
                  <div class="panel-body">
                    <div class="col-md-12">
                        <h3 class="animated fadeInLeft">등록 장부 목록</h3>
                        <p class="animated fadeInDown">
                          Table <span class="fa-angle-right fa"></span> Data Tables
                        </p>
                        <!-- data-toggle="modal" data-target="#writeModal" -->
<button class="btn ripple btn-outline btn-primary" id="write" style="width: 100px; float: right;" onclick="location.href='/program/write.jsp'" ><span class="glyphicon glyphicon-pencil" style="margin-right: 5px;"></span>글쓰기</button>
                    </div>
                  </div>
              </div>
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3>광주 등록 장부(Gwangju)</h3></div>
                    <div class="panel-body">
                      <div class="responsive-table">
                      <div class="container">
    <div class="row" >
        <div class="panel panel-primary filterable" style="margin-bottom: 40px;">
            <div class="panel-heading" style="height: 50px;">
                <h3 class="panel-title" style="text-align: center; color: white; font-size: 25px; margin-top: 5px;">장부 목록</h3>
                <div class="pull-right" style="margin-top: -26px;">
                    <button class="btn-default btn-xs btn-filter" style="height: 30px; width: 80px; margin-right: 20px;"><span class="glyphicon glyphicon-filter"></span>검색</button>
                </div>
            </div>
            <table class="table" style="margin: auto;">
                <thead>
                    <tr class="filters" id="pix">
                        <th><input type="text" class="form-control" placeholder="이름" id="1" disabled></th>
                        <th id="2"><input type="text" class="form-control" placeholder="시작일" disabled></th>
                        <th id="3"><input type="text" class="form-control" placeholder="금액" disabled></th>
                        <th id="4"><input type="text" class="form-control" placeholder="은행" disabled></th>
                        <th id="5"><input type="text" class="form-control" placeholder="계좌번호" disabled></th>
                        <th id="6"><input type="text" class="form-control" placeholder="예금주" disabled></th>
                        <th id="7"><input type="text" class="form-control" placeholder="기타" disabled></th>
                        <th id="8"><input type="text" class="form-control" placeholder="소개자" disabled></th>
                        <th><input type="text" class="form-control" placeholder="플랜명" disabled></th>
                        <th id="9"><input type="text" class="form-control" placeholder="마감날짜" disabled></th>
                        <th><input type="text" class="form-control" placeholder="총 나갈금액" disabled></th>
                        <th><input type="text" class="form-control" placeholder="총 횟수" disabled></th>
                        <th><input type="text" class="form-control" placeholder="지급 수" disabled></th>
                        <th><input type="text" class="form-control" placeholder="지급금액" disabled></th>
                        <th><input type="text" class="form-control" placeholder="총 지급금" disabled></th>
                        <th><input type="text" class="form-control" placeholder="남은 금액" disabled></th>                  
                    </tr> 
                    <!-- <tr class="filters" id="pix">
                        <th id="1"><input type="text" class="form-control" placeholder="이름" style="font-size: 10px;" disabled></th>
                        <th id="2"><input type="text" class="form-control" placeholder="시작일" disabled></th>
                        <th id="3"><input type="text" class="form-control" placeholder="금액" disabled></th>
                        <th id="4"><input type="text" class="form-control" placeholder="은행" disabled></th>
                        <th id="5" style="width:120px;"><input type="text" class="form-control" placeholder="계좌번호" disabled></th>
                        <th id="6"><input type="text" class="form-control" placeholder="예금주" disabled></th>
                        <th id="7"style="width:120px;"><input type="text" class="form-control" placeholder="기타사항" disabled></th>
                        <th id="8"><input type="text" class="form-control" placeholder="소개자" disabled></th>
                        <th id="9" style="width:120px;"><input type="text" class="form-control" placeholder="마감날짜" disabled></th>
                        <th style="width:120px;"><input type="text" class="form-control" placeholder="총 나갈금액" disabled></th>
                        <th><input type="text" class="form-control" placeholder="총 횟수" disabled></th>
                        <th style="width:100px;"><input type="text" class="form-control" placeholder="지급횟수" disabled></th>
                        <th style="width:160px;"><input type="text" class="form-control" placeholder="기본 지급금액" disabled></th>
                        <th style="width:120px;"><input type="text" class="form-control" placeholder="지급 금액" disabled></th>
                        <th style="width:120px;"><input type="text" class="form-control" placeholder="남은 금액" disabled></th>                  
                    </tr> -->
                </thead>
                <tbody>						
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/29</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/29</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/29</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/29</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/29</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                        
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>
                    <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>
                          <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>       <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>       <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>       <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>       <tr>
                        <td>임영묵</td>
                        <td>2017/08/27</td>
                        <td>30,000,000</td>
                        <td>국민</td>
                        <td>998489-01-121657</td>
                        <td>임영묵</td>
                        <td>휴일제외</td>                    
                        <td>임화순</td>
                        <td>40플랜</td>
                        <td>2017/10/25</td>
                        <td>39,000,000</td>
                        <td>40</td>
                        <td>1</td>                        
                        <td>925,000</td>                        
                        <td>925,000</td>                       
                        <td>38,075,000</td>                      
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
                      </div>
                  </div>
                </div>
              </div>  
              </div>
            </div>
          <!-- end: content -->
          
        <!----  모달 창 ----->  
<!-- line modal -->
<div class="modal fade" id="writeModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">글 쓰기</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form>
              <div class="form-group">
                <label for="exampleInputEmail1">글 제목</label>
                <input type="text" class="form-control" id="subject" name="subject" style="font: bold;" placeholder="Enter subject">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">글 쓴이</label>
                <input type="text" class="form-control" id="writer" name="writer" style="font: bold;"  placeholder="로그인 하세요" value="<%=loginId %>" disabled>
              <%-- <input type="hidden" name="writer" value="<%=loginId%>"> 값이 안넘어갈때 준비해놓자. --%>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">비밀번호</label>
                <input type="password" class="form-control" id="passwd" name="passwd" style="font: bold;" placeholder="Password">
                
                <%-- 값이 안넘어가는 ip는 따로 hidden으로 값을 넘겨야한다. --%>
                <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
              </div>
              <div class="form-group">
                <textarea class="form-control" cols="5" rows="8" name="content" style="resize: none;"></textarea>
              </div>
              <div class="form-group">
                <label for="exampleInputFile">첨부파일</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">Example block-level help text here.</p>
              </div>
              <div class="checkbox">
                <label>
                  <input type="checkbox"> Check me out
                </label>
              </div>
              <button type="submit" class="btn ripple-infinite btn-round btn-3d btn-warning">Submit</button>
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn ripple-infinite btn-round btn-3d btn-default" data-dismiss="modal"  role="button">Close</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn ripple-infinite btn-round btn-3d btn-default" data-dismiss="modal"  role="button">Delete</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="saveImage" class="btn ripple-infinite btn-round btn-3d btn-default" data-action="save" role="button">Save</button>
				</div>
			</div>
		</div>
	</div>
  </div>
</div>      
      </div>

      <!-- start: Mobile -->
      <div id="mimin-mobile" class="reverse">
        <div class="mimin-mobile-menu-list">
            <div class="col-md-12 sub-mimin-mobile-menu-list animated fadeInLeft">
                <ul class="nav nav-list">
                    <li class="active ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-home fa"></span>Dashboard 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a href="dashboard-v1.html">Dashboard v.1</a></li>
                          <li><a href="dashboard-v2.html">Dashboard v.2</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-diamond fa"></span>Layout
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="topnav.html">Top Navigation</a></li>
                        <li><a href="boxed.html">Boxed</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>Charts
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="chartjs.html">ChartJs</a></li>
                        <li><a href="morris.html">Morris</a></li>
                        <li><a href="flot.html">Flot</a></li>
                        <li><a href="sparkline.html">SparkLine</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-pencil-square"></span>Ui Elements
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="color.html">Color</a></li>
                        <li><a href="weather.html">Weather</a></li>
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="icons.html">Icons</a></li>
                        <li><a href="buttons.html">Buttons</a></li>
                        <li><a href="media.html">Media</a></li>
                        <li><a href="panels.html">Panels & Tabs</a></li>
                        <li><a href="notifications.html">Notifications & Tooltip</a></li>
                        <li><a href="badges.html">Badges & Label</a></li>
                        <li><a href="progress.html">Progress</a></li>
                        <li><a href="sliders.html">Sliders</a></li>
                        <li><a href="timeline.html">Timeline</a></li>
                        <li><a href="modal.html">Modals</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                       <span class="fa fa-check-square-o"></span>Forms
                       <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="formelement.html">Form Element</a></li>
                        <li><a href="#">Wizard</a></li>
                        <li><a href="#">File Upload</a></li>
                        <li><a href="#">Text Editor</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-table"></span>Tables
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="datatables.html">Data Tables</a></li>
                        <li><a href="handsontable.html">handsontable</a></li>
                        <li><a href="tablestatic.html">Static</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a href="calendar.html">
                         <span class="fa fa-calendar-o"></span>Calendar
                      </a>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-envelope-o"></span>Mail
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="mail-box.html">Inbox</a></li>
                        <li><a href="compose-mail.html">Compose Mail</a></li>
                        <li><a href="view-mail.html">View Mail</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa fa-file-code-o"></span>Pages
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="forgotpass.html">Forgot Password</a></li>
                        <li><a href="login.html">SignIn</a></li>
                        <li><a href="reg.html">SignUp</a></li>
                        <li><a href="article-v1.html">Article v1</a></li>
                        <li><a href="search-v1.html">Search Result v1</a></li>
                        <li><a href="productgrid.html">Product Grid</a></li>
                        <li><a href="profile-v1.html">Profile v1</a></li>
                        <li><a href="invoice-v1.html">Invoice v1</a></li>
                      </ul>
                    </li>
                     <li class="ripple"><a class="tree-toggle nav-header"><span class="fa "></span> MultiLevel  <span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a href="view-mail.html">Level 1</a></li>
                        <li><a href="view-mail.html">Level 1</a></li>
                        <li class="ripple">
                          <a class="sub-tree-toggle nav-header">
                            <span class="fa fa-envelope-o"></span> Level 1
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                          </a>
                          <ul class="nav nav-list sub-tree">
                            <li><a href="mail-box.html">Level 2</a></li>
                            <li><a href="compose-mail.html">Level 2</a></li>
                            <li><a href="view-mail.html">Level 2</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li><a href="credits.html">Credits</a></li>
                  </ul>
            </div>
        </div>       
      </div>
      <button id="mimin-mobile-menu-opener" class="animated rubberBand btn btn-circle btn-danger">
        <span class="fa fa-bars"></span>
      </button>
       <!-- end: Mobile -->
   <div id="pop">
  <div style="height:225px;">
   <font style="font-weight: bold;">프로그램 공지사항</font><br>
   <font color="#007FFF">그린비 내부 프로그램 입니다. 궁금한점은 개발자에게 말씀해주세요.</font>
   <br>
   <br>
   <font style="font-weight: bolder;">[전체화면, 인쇄화면]</font>
   <br>
   <font> 좌측에. x표시를 누르면 좌측 메뉴가 사라지면서 장부만 화면에서 볼 수 있습니다. </font>
   <br>
   <br>
   <font style="font-weight: bolder;">[기본 사용방법]</font>
   <br>
   <font> <font color="red">기본화면은 전체화면입니다.</font> 전체화면으로 사용하시기 바랍니다. </font>
   <br>
   <font> 현재는 배포하는 아이디를 이용하여 관리 가능하며 </font>
   <br>
   <font> 글쓰기를 이용해 관리가능한 지역의 장부를 갱신 가능합니다.</font>
   <br>
   <br>
    <a href="/contact.jsp" style="color:#007FFF; padding-right:1px;"><b>이용문의 바로가기</b></a>
  </div>
 <div>
     <div style="width: 100px; margin: auto;">
             <button id="close" class=" ripple-infinite btn-gradient btn-info" style="padding: 5px 25px;">
              <div>
                <span>닫기</span>
              </div>
            </button>
        </div>
    <!-- <button id="close" style="width: 100px; margin:auto;">닫기</button> -->
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