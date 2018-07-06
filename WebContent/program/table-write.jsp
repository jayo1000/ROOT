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
	var mone = document.getElementsByName("depo").length;
	document.getElementById("count").innerHTML = mone +"개";
	
	var depo = document.getElementsByName("depo");
	var total = document.getElementsByName("total");
	var give = document.getElementsByName("give");
	var bal = document.getElementsByName("bal");
	var oneday = document.getElementsByName("oneday");
	 
	var sum1 = 0;
	var sum2 = 0;
	var sum3 = 0;
	var sum4 = 0;
	var sum5 = 0;
	var sum6 = 0;
	for(var i = 0; i < depo.length; i++){
		sum1 += parseInt(depo[i].value);
	}
	for(var i = 0; i < total.length; i++){
		sum2 += parseInt(total[i].value);
	}
	for(var i = 0; i < give.length; i++){
		sum3 += parseInt(give[i].value);
	}
	for(var i = 0; i < bal.length; i++){
		sum4 += parseInt(bal[i].value);
	}
	for(var i = 0; i < oneday.length; i++){
		sum4 += parseInt(bal[i].value);
	}
	
/* 	var str = String.format("$%,d", depo); */
		
 	document.getElementById("sum1").innerHTML = numberWithCommas(sum1);
	document.getElementById("sum2").innerHTML = numberWithCommas(sum2);
	document.getElementById("sum3").innerHTML = numberWithCommas(sum3);
	document.getElementById("sum4").innerHTML = numberWithCommas(sum4);
	document.getElementById("depo").innerHTML = numberWithCommas(depo);
	document.getElementById("oneday").innerHTML = numberWithCommas(oneday);
	document.getElementById("give").innerHTML = numberWithCommas(give);
	document.getElementById("total").innerHTML = numberWithCommas(total);
	document.getElementById("bal").innerHTML = numberWithCommas(bal);
	
	console.log(numberWithCommas(oneday));
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
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

document.getElementById("server_time").innerHTML ="<h4 style='margin-left:15px; color: white;'><B>" + year + "년 " + month + "월 " + date + "일 " + day + "</B></h4>"
+"<h2 style='margin-left:10px; color: white;'><B>" + now.getHours() + "시 " + now.getMinutes() +"분 " + now.getSeconds()+ "초</B></h2>";
}

/* jQuery(function(){
    // 숫자 제외하고 모든 문자 삭제.
    $.fn.removeText = function(_v){
        //console.log("removeText: 숫자 제거 합니다.");
        if (typeof(_v)==="undefined")
        {
            $(this).each(function(){
                this.value = this.value.replace(/[^0-9]/g,'');
            });
        }
        else
        {
            return _v.replace(/[^0-9]/g,'');
        }
    };
    // php의 number_format과 같은 효과.
    $.fn.numberFormat = function(_v){
        this.proc = function(_v){
            var tmp = '',
                number = '',
                cutlen = 3,
                comma = ','
                i = 0,
                len = _v.length,
                mod = (len % cutlen),
                k = cutlen - mod;
            for (i; i < len; i++)
            {
                number = number + _v.charAt(i);
                if (i < len - 1)
                {
                    k++;
                    if ((k % cutlen) == 0)
                    {
                        number = number + comma;
                        k = 0;
                    }
                }
            }
            return number;
        };
        var proc = this.proc;
        if (typeof(_v)==="undefined")
        {
            $(this).each(function(){
                this.value = proc($(this).removeText(this.value));
            });
        }
        else
        {
            return proc(_v);
        }
    };

    $.fn.onlyNumber = function (p) {
        $(this).each(function(i) {
            $(this).attr({'style':'text-align:left'});
  
            this.value = $(this).removeText(this.value);
            this.value = $(this).numberFormat(this.value);
            
            $(this).bind('keypress keyup',function(e){
                this.value = $(this).removeText(this.value);
                this.value = $(this).numberFormat(this.value);
            });
        });
    };
    $('.numberformat').onlyNumber();
});
 */

function play(){
/* 	var money = document.getElementById("depo").childNodes.item(i); */
/* 	var mon = document.getElementsByTagName("depo").textContent; */	
 	/* var money = document.getElementsByName("depo");
	var num = new Array(money);	
	console.log(num); */
/* 	var mo = document.getElementById("depo").innerHTML; */	
/* 	var cnt =0;
	$.each( $('.depo'), function(i, target){
		cnt += $(target).text();
	})
	 */		
	 /* 	var tol = 0;
	 	for (var i =0; i < money.length; i++){
	 		tol +=money[i] << 0;
	 	} */
	 	
/* 	console.log(money);
	var loan
	loan = (("%.2f%%%n", sum))

	var sum = 0;

	for(var i = 0; i < money.length; i++){

		sum += parseInt(money[i].value);

	} */
	
/* 	console.log(sum +":결과값");
	sum.value = parseInt(money);
	console.log(sum +":결과값2");
	var total = document.getElementById("total");
	total.style.display=""; */
	
/* 	console.log(money);
	var sum = document.getElementById("loan");
	var total = document.getElementById("total");
	total.style.display="";
	sum.value = parseInt(money);
 	
	sum.value = parseInt(loan); 
	console.log(sum.value);	 */
	
	var depo = document.getElementsByName("depo");
	var total = document.getElementsByName("total");
	var give = document.getElementsByName("give");
	var bal = document.getElementsByName("bal");
	
	var sum1 = 0;
	var sum2 = 0;
	var sum3 = 0;
	var sum4 = 0;
	for(var i = 0; i < depo.length; i++){
		sum1 += parseInt(depo[i].value);
	}
	for(var i = 0; i < total.length; i++){
		sum2 += parseInt(total[i].value);
	}
	for(var i = 0; i < give.length; i++){
		sum3 += parseInt(give[i].value);
	}
	for(var i = 0; i < bal.length; i++){
		sum4 += parseInt(bal[i].value);
	}
		
 	document.getElementById("sum1").innerHTML = sum1;
	document.getElementById("sum2").innerHTML = sum2;
	document.getElementById("sum3").innerHTML = sum3;
	document.getElementById("sum4").innerHTML = sum4; 
	
	console.log(sum1);
	console.log(sum2);
	console.log(sum3);
 } 

</script>  
   
<style type="text/css">
#link:hover {
color: black;
font-weight: bolder;
background-color: white;
}
@media (min-width:768px){.container{width:762px;}
#bal {
width: 50px;}
#depo {
width: 60px;}
#total {
width: 60px;}
#oneday {
width: 40px;}
#give {
width: 50px;}
#banknum {
width: 100px;
}
}
@media (min-width:1024px){
.container{width:992px; font-size: 11px;}
.form-control{font-size: 11px;}
#banknum {
width: 150px;
}
}
@media (min-width:1281px){.container{width:1632px; font-size: 13px;}
.form-control{font-size: 13px;}
#bal {
width: 100px;}
#depo {
width: 110px;}
#total {
width: 110px;}
#oneday {
width: 70px;}
#give {
width: 100px;}
}
#banknum {
width: 150px;
}
}
    
 #write:hover {
 background-color: white;
 color: black;
 }
 
 #one:hover {
 background-color: white;
 color: black;
 }
 
 #depo:hober {
 color: white;
   }
 }
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

/** 장부목록 **/
.panel-primary .panel-heading, .progress-bar.progress-bar-primary {
    /* background-color: #1c84c6 !important; */
    background-color: black !important;
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
  width:500px; height:285px; background:white; color:black; 
  position:absolute; top:60px; left:550px; text-align:center; 
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

#mimin {
        background-color: #444;
        background-image: url("/images/program/back-table.png");
        background-size: 100% 180%;
		 background-repeat: no-repeat; 
    }
    
#left-bc {
 border: 1px solid black;
}

.m1 {
border: 2px solid black !important;
}
.m2 {
border: 1px solid white !important;
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
}
</style>
</head>
<body class="dashboard">
      <!-- start: Header -->
    
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
            <div id="left-menu">
              <div class="sub-left-menu scroll" id="left-bc" style="background-color: #0E1A35;">
              <!-- <div class="sub-left-menu scroll"  style="background-color: black;"> -->
                <ul class="nav nav-list">
                    <li><img src="/images/butt/glogo.png" style="height"></li>
                    <li id="server_time">
                      <!-- <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">토요일, 팔월 1일 2029년</p> -->
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                    <!--   <img src="/images/butt/I-1.png" style="margin-left: -10px;"> -->
                     <span class="fa-area-chart fa"></span>인천 지역(Inchen)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a href="employee.html"><span class="glyphicon glyphicon-user"></span>사원 목록</a></li>
                      </ul>
                    </li>
                    <li class="ripple" style="background-color: ">
                    <a class="tree-toggle nav-header">
                     <!--  <img src="/images/butt/J-1.png" style="margin-left: -10px;"> -->
                      <span class="fa-area-chart fa"></span>광주 지역(Gwangju)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/memberlist.htm?greenb_id=1"><span class="fa fa-table"></span>전체 명부</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-file"></span>지급완료 구 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                      <li class="ripple">
                      <a class="tree-toggle nav-header">
                      <!--  <img src="/images/butt/G-1.png" style="margin-left: -10px;"> -->
                      <span class="fa-area-chart fa"></span>전주 지역(Jeonju)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/memberlist.htm?greenb_id=2"><span class="fa fa-table"></span>전체 명부</a></li>
                          <li><a href="#"><span class="glyphicon glyphicon-file"></span>지급완료 구 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                       <!--  <img src="/images/butt/D-1.png" style="margin-left: -10px;"> -->
                       <span class="fa-area-chart fa"></span>동탄 지역(Dongtan)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/memberlist.htm?greenb_id=3"><span class="fa fa-table"></span>전체 명부</a></li>
 						<li><a href="#"><span class="glyphicon glyphicon-file"></span>지급완료 구 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header">
                       <!--  <img src="/images/butt/A-1.png" style="margin-left: -10px;"> -->
                       <span class="fa-area-chart fa"></span>기타 정리(the others)
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/memberlist.htm?greenb_id=4"><span class="fa fa-table"></span>전체 명부</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-file"></span>지급완료 구 명부</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                     <li class="ripple"><a class="tree-toggle nav-header"><span class="glyphicon glyphicon-piggy-bank"></span>은행 링크<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a href="https://www.kbstar.com/" target="_black" id="link"><span class="glyphicon glyphicon-modal-window"></span>국민은행</a></li>
                        <li><a href="https://www.shinhan.com/index.jsp" target="_black" id="link"><span class="glyphicon glyphicon-modal-window"></span>신한은행</a></li>
                        <li><a href="http://www.nhbank.com/nhmn/KO_NHMN_01.do" target="_black" id="link"><span class="glyphicon glyphicon-modal-window"></span>농협</a></li>
                        <li><a href="https://openbank.cu.co.kr/" target="_black" id="link"><span class="glyphicon glyphicon-modal-window"></span>신협</a></li>
                        <li><a href="https://www.wooribank.com/" target="_black" id="link"><span class="glyphicon glyphicon-modal-window"></span>우리은행</a></li>
                      </ul>
                    </li>
                    <li class="ripple">
                    <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span>만든 이<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a data-toggle="modal" data-target="#writeModal"><span class="glyphicon glyphicon-phone"></span>문의사항 / 건의사항</a></li>
                      </ul>
                    </li>
              
                  </ul>
                </div>
            </div>
          <!-- end: Left Menu -->

          <!-- start: Content -->
          <div>
          <link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.6.3/font-awesome.min.css"
integrity="sha384-Wrgq82RsEean5tP3NK3zWAemiNEXofJsTwTyHmNb/iL3dP/sZJ4+7sOld1uqYJtE" crossorigin="anonymous">

<nav class="navbar navbar-inverse"  style="background-color: #0E1A35;">
  <div class="container">
    <div class="navbar-header">
     <a class="menu"><i class="fa fa-bars" id="menu_icon"></i></a>
      <a class="navbar-brand" href="#">
      GREENB-LOAN
      
      </a>
    </div><!--navbar-header close-->
    <div class="collapse navbar-collapse drop_menu" id="content_details">
      <ul class="nav navbar-nav navbar-right">

<li><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
<li><a href="#"><span class="glyphicon glyphicon-font"></span> About Us</a></li>

       <!--<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-font"></span> About us<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Company</a></li>
            <li><a href="#">Work</a></li>
            <li><a href="#">Timing</a></li>
          </ul>
        </li>-->
        <li><a href="#"><span class="glyphicon glyphicon-heart-empty"></span> Why Choose us</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-phone"></span> What We Do</a></li> 
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
            <div id="content">
               <div class="panel box-shadow-none content-header">
                  <div class="panel-body" style="border: 2px solid white;">
                    <div class="col-md-12">
                        <h3 class="animated fadeInLeft">GREENBLOAN 장부-</h3>
                        <p class="animated fadeInDown">
                          User <span class="fa-angle-right fa"></span> User Data Tables
                        </p>
                         <div class="span12">
            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                <div class="input-append span12">
                    <input type="text" class="search-query mac-style" placeholder="Search">
                    <button type="submit" class="btn" style="height: 38px;"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </form>
        </div>
                        <!-- data-toggle="modal" data-target="#writeModal" -->
 <button class="btn ripple btn-outline btn-primary" id="write" style="width: 100px; float: left;" onclick="location.href='/program/write.jsp'" ><span class="glyphicon glyphicon-pencil" style="margin-right: 5px;"></span>글 쓰기</button>                     
                    </div>
                  </div>
              </div>
             <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3><span class="glyphicon glyphicon-th-list"></span>&nbsp; The registration account book Program </h3></div>
                    <div align="center" style="padding-bottom: 20px;">
                    <table style="margin: auto; margin-top: 10px; border: 1px solid black;">
                    </table>
                   <table style="width: 100%; border: 1px solid black;">
                     <tr style="border: 1px solid black; height: 40px;">
                     <th></th>
                   <th colspan="3" style="border-right: 1px solid white; border-left: 1px solid white; text-align: center; background-color: black; color: white;">입금액</th>
                   <th></th>
                   <th colspan="3" style="border-right: 1px solid white;  text-align: center; background-color: black; color: white;" >출금액</th>
                   <th style="text-align: center; background-color: black; color: white;" >담당자</th>
                   </tr>
                   <tr style="border: 1px solid black;">
                   <th style="border: 1px solid black; height: 30px; text-align: center;">순번</th>                   
                   <th style="border: 1px solid black; text-align: center;">이름</th>
                   <th style="border: 1px solid black; text-align: center;">날짜</th>
                   <th style="border: 1px solid black; text-align: center;">입금액</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">날짜</th>
                   <th style="border: 1px solid black; text-align: center;">출금액</th>
                   <th style="border: 1px solid black; text-align: center;">현재금액</th>
                   <th style="border: 1px solid black; text-align: center;">담당자</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                    <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th></th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">임영묵</th>
                   </tr>
                   </table>
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
			<h3 class="modal-title" id="lineModalLabel">개발자에게 문의사항</h3>
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
<button type="button" id="saveImage" class="btn ripple-infinite btn-round btn-3d btn-default" data-action="save" role="button" onclick="location.href='/program/loading.jsp'">Send</button>
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
 <!--   <div id="pop">
  <div style="height:240px;">
   <font style="font-weight: bold;">프로그램 공지사항</font><br>
   <font color="#007FFF">그린비 내부 프로그램 입니다. 궁금한점은 개발자에게 말씀해주세요.</font>
   <br>
   <br>
   <font style="font-weight: bolder;">[전체화면, 인쇄화면]</font>
   <br>
   <font> 좌측에. x표시를 누르면 좌측 메뉴가 사라지면서 장부만 화면에서 볼 수 있습니다. </font>
   <br>
   <font> <font color="red">Ctrl + 마우스가운데(휠)</font>로 크기를 조절하여 볼수 있습니다. </font>
   <br>
   <br>
   <font style="font-weight: bolder;">[기본 사용방법]</font>
   <br>
   <font><font color="red">기본화면은 전체화면입니다.1920x1080(권장)</font></font>
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
    <button id="close" style="width: 100px; margin:auto;">닫기</button>
  </div>
</div> -->
<!-- start: Javascript -->
<script type="text/javascript">
//canvas off js//
$(document).ready(function(e) {
$('#menu_icon').click(function(){
  	if($("#content_details").hasClass('drop_menu'))
		{
      $("#content_details").addClass('drop_menu1').removeClass('drop_menu');
  }
		else{
			$("#content_details").addClass('drop_menu').removeClass('drop_menu1');
			}
	
	
	});
});	

</script>
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