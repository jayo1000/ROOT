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
	document.getElementById("rowone").value = mone;
	
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
/* 	document.getElementById("sum3").innerHTML = numberWithCommas(sum3); */
	document.getElementById("sum4").innerHTML = numberWithCommas(sum4);
	document.getElementById("depo").innerHTML = numberWithCommas(depo);
/* 	document.getElementById("oneday").innerHTML = numberWithCommas(oneday);
	document.getElementById("give").innerHTML = numberWithCommas(give);
	document.getElementById("total").innerHTML = numberWithCommas(total); */
	document.getElementById("bal").innerHTML = numberWithCommas(bal);
	
	console.log(numberWithCommas(oneday));
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	var $setRows = $('#setRows');

	$setRows.submit(function (e) {
	    e.preventDefault();
	    var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

//	      console.log(typeof rowPerPage);

	    var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
	    if (!rowPerPage) {
	        alert(zeroWarning);
	        return;
	    }
	    $('#nav').remove();
	    var $products = $('#products');

	    $products.after('<div id="nav">');

	    var $tr = $($products).find('tbody tr');
	    var rowTotals = $tr.length;
	//  console.log(rowTotals);

	    var pageTotal = Math.ceil(rowTotals/ rowPerPage);
	    var i = 0;

	    for (; i < pageTotal; i++) {
	        $('<a href="#"></a>')
	                .attr('rel', i)
	                .html(i + 1)
	                .appendTo('#nav');
	    }

	    $tr.addClass('off-screen')
	            .slice(0, rowPerPage)
	            .removeClass('off-screen');

	    var $pagingLink = $('#nav a');
	    $pagingLink.on('click', function (evt) {
	        evt.preventDefault();
	        var $this = $(this);
	        if ($this.hasClass('active')) {
	            return;
	        }
	        $pagingLink.removeClass('active');
	        $this.addClass('active');

	        // 0 => 0(0*4), 4(0*4+4)
	        // 1 => 4(1*4), 8(1*4+4)
	        // 2 => 8(2*4), 12(2*4+4)
	        // 시작 행 = 페이지 번호 * 페이지당 행수
	        // 끝 행 = 시작 행 + 페이지당 행수

	        var currPage = $this.attr('rel');
	        var startItem = currPage * rowPerPage;
	        var endItem = startItem + rowPerPage;

	        $tr.css('opacity', '0.0')
	                .addClass('off-screen')
	                .slice(startItem, endItem)
	                .removeClass('off-screen')
	                .animate({opacity: 1}, 300);

	    });
	    $pagingLink.filter(':first').addClass('active');
	});


	$setRows.submit();
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

document.getElementById("server_time").innerHTML ="<h4 style='margin-left:15px; color:white;'><B>" + year + "년 " + month + "월 " + date + "일 " + day + "</B></h4>"
+"<h2 style='margin-left:10px; color:white;'><B>" + now.getHours() + "시 " + now.getMinutes() +"분 " + now.getSeconds()+ "초</B></h2>";
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

.panel-primary .panel-heading, .progress-bar.progress-bar-primary {
    background-color: #0E1A35 !important;
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
  width:500px; height:285px; background:white; color:black; 
  position:absolute; top:60px; left:470px; text-align:center; 
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
        background-size: 100% 150%;
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

.off-screen {
    display: none;
}
#nav {
    text-align: center;
}
#nav a {
    display: inline-block;
    padding: 10px 15px;
    margin-right: 10px;
    font-family:Tahoma;
    background: #ccc;
    color: #000;
    text-decoration: none;
}
#nav a.active {
    background: #333;
    color: #fff;
    margin-top: 30px;
    margin-bottom: 20px;
    
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
background-color: white;
color: black;
}
</style>
</head>
<body class="dashboard">
      <div class="container-fluid mimin-wrapper">
          <!-- start:Left Menu -->
            <div id="left-menu">
              <div class="sub-left-menu scroll" id="left-bc" style="background-color: #0E1A35;">
              <!-- <div class="sub-left-menu scroll"  style="background-color: black;"> -->
                <ul class="nav nav-list">
                    <c:choose>
    <c:when test="${empty cookie.loginId }">        
                        </c:when>  
                        <c:when test="${cookie.loginId.value eq 'admin'}" >   
                    <li><img src="/images/butt/glogo.png"></li>
                    <li id="server_time">
                      <!-- <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">토요일, 팔월 1일 2029년</p> -->
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header"><span class="fa-home fa"></span>기본 메뉴 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a href="/program/partnership.jsp"><span class="glyphicon glyphicon-user"></span>사원 코드</a></li>
                          <li><a href="/alllist.htm"><span class="glyphicon glyphicon-user"></span>전체 장부</a></li>
                      </ul>
                    </li>
                    <li class="ripple" style="background-color: ">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>지역별 명부
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                     <li><a href="/memberlist.htm?greenb_id=1"><span class="fa fa-table"></span>인천(Inchen)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=2"><span class="fa fa-table"></span>광주(Gwangju)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=3"><span class="fa fa-table"></span>전주(Jeonju)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=4"><span class="fa fa-table"></span>동탄(Dongtan)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=5"><span class="fa fa-table"></span>기타(the others)</a></li>                        
                      </ul>
                    </li>
                      <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>플랜별 내역
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/planlist.htm?plan=0"><span class="fa fa-table"></span>플랜 : 없음</a></li>
                        <li><a href="/planlist.htm?plan=1"><span class="fa fa-table"></span>플랜 : 출</a></li>
                        <li><a href="/planlist.htm?plan=2"><span class="fa fa-table"></span>플랜 : 매일</a></li>
                        <li><a href="/planlist.htm?plan=3"><span class="fa fa-table"></span>플랜 : 정예</a></li>
<!--                         <li><a href="/planlist.htm?plan=4"><span class="fa fa-table"></span>G4플랜</a></li>
                        <li><a href="/planlist.htm?plan=5"><span class="fa fa-table"></span>G5플랜</a></li> -->
                      </ul>
                    </li>
                     <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>이율 계산기
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                       <li><a href="/program/calculator.jsp"><span class="fa fa-table"></span>대출이자 계산기</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                    <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span>만든 이<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a data-toggle="modal" data-target="#writeModal"><span class="glyphicon glyphicon-phone"></span>문의사항 / 건의사항</a></li>
                      </ul>
                    </li>                      
                          </c:when>
                          <c:when test="${cookie.loginId.value eq 'coolmonster'}" >   
                    <li><img src="/images/butt/glogo.png"></li>
                    <li id="server_time">
                      <!-- <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">토요일, 팔월 1일 2029년</p> -->
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header"><span class="fa-home fa"></span>기본 메뉴 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a data-toggle="modal" data-target="#emploModal"><span class="glyphicon glyphicon-user"></span>사원 코드확인</a></li>
                          <li><a href="/alllist.htm"><span class="glyphicon glyphicon-user"></span>전체 장부</a></li>
                      </ul>
                    </li>
                    <li class="ripple" style="background-color: ">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>지역별 명부
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                     <li><a href="/memberlist.htm?greenb_id=1"><span class="fa fa-table"></span>인천(Inchen)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=2"><span class="fa fa-table"></span>광주(Gwangju)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=3"><span class="fa fa-table"></span>전주(Jeonju)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=4"><span class="fa fa-table"></span>동탄(Dongtan)</a></li>
                        <li><a href="/memberlist.htm?greenb_id=5"><span class="fa fa-table"></span>기타(the others)</a></li>                        
                      </ul>
                    </li>
                      <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>플랜별 내역
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                       <li><a href="/planlist.htm?plan=0"><span class="fa fa-table"></span>플랜 : 없음</a></li>
                        <li><a href="/planlist.htm?plan=1"><span class="fa fa-table"></span>플랜 : 출</a></li>
                        <li><a href="/planlist.htm?plan=2"><span class="fa fa-table"></span>플랜 : 매일</a></li>
                        <li><a href="/planlist.htm?plan=3"><span class="fa fa-table"></span>플랜 : 정예</a></li>
                        <!-- <li><a href="/planlist.htm?plan=4"><span class="fa fa-table"></span>G4플랜</a></li>
                        <li><a href="/planlist.htm?plan=5"><span class="fa fa-table"></span>G5플랜</a></li> -->
                      </ul>
                    </li>
                     <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>이율 계산기
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/program/calculator.jsp"><span class="fa fa-table"></span>대출이자 계산기</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                    <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span>만든 이<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a data-toggle="modal" data-target="#writeModal"><span class="glyphicon glyphicon-phone"></span>문의사항 / 건의사항</a></li>
                      </ul>
                    </li>                      
                          </c:when>  
                       <c:otherwise>                  
                    <li><img src="/images/butt/glogo.png"></li>
                    <li id="server_time">
                      <!-- <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">토요일, 팔월 1일 2029년</p> -->
                    </li>
                    <li class="ripple">
                      <a class="tree-toggle nav-header"><span class="fa-home fa"></span>기본 메뉴 
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                          <li><a data-toggle="modal" data-target="#emploModal"><span class="glyphicon glyphicon-user"></span>사원 코드확인</a></li>
                      </ul>
                    </li>
                    <li class="ripple" style="background-color: ">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>인천 명부
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                     <li><a href="/memberlist.htm?greenb_id=1"><span class="fa fa-table"></span>인천 전체명부(I)</a></li>                     
                      </ul>
                    </li>
                     <li class="ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-area-chart fa"></span>이율 계산기
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                      </a>
                      <ul class="nav nav-list tree">
                        <li><a href="/program/calculator.jsp"><span class="fa fa-table"></span>대출이자 계산기</a></li>
<!--                         <li><a href="flot.html"><span class="fa fa-pencil-square"></span>입금자 명단</a></li>
                        <li><a href="sparkline.html"><span class="fa fa-pencil-square"></span>출금자 명단</a></li> -->
                      </ul>
                    </li>
                    <li class="ripple">
                    <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span>만든 이<span class="fa-angle-right fa right-arrow text-right"></span> </a>
                      <ul class="nav nav-list tree">
                        <li><a data-toggle="modal" data-target="#writeModal"><span class="glyphicon glyphicon-phone"></span>문의사항 / 건의사항</a></li>
                      </ul>
                    </li> 
                    </c:otherwise>
                    </c:choose>              
                  </ul>
                </div>
            </div>
          <!-- end: Left Menu -->
          
          <!-- start: Content -->
                    <div>
          <link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.6.3/font-awesome.min.css"
integrity="sha384-Wrgq82RsEean5tP3NK3zWAemiNEXofJsTwTyHmNb/iL3dP/sZJ4+7sOld1uqYJtE" crossorigin="anonymous">

<nav class="navbar navbar-inverse"  style="background-color: #0E1A35;">

    <div class="navbar-header">
     <a class="menu"><i class="fa fa-bars" id="menu_icon"></i></a>
      <a class="navbar-brand" href="/memberlist.htm?greenb_id=1">
      GREENB-LOAN
      
      </a>
    </div><!--navbar-header close-->
    <div class="collapse navbar-collapse drop_menu" id="content_details">
      <ul class="nav navbar-nav navbar-right">

<!-- <li><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li> -->
<!-- <li><a href="#"><span class="glyphicon glyphicon-font"></span> About Us</a></li> -->
       <!--<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-font"></span> About us<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Company</a></li>
            <li><a href="#">Work</a></li>
            <li><a href="#">Timing</a></li>
          </ul>
        </li>-->
        <!-- <li><a data-toggle="modal" data-target="#writeModal"><span class="glyphicon glyphicon-phone"></span> What We Do</a></li>  -->
        <li><a data-toggle="modal" data-target="#emploModal"><span class="glyphicon glyphicon-user"></span> Contact Us</a></li>     
<!--       <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-search"></span> Search</a></li> -->
      <c:choose>
      <c:when test="${cookie.loginId.value eq 'admin'}">
      <ul class="nav navbar-nav navbar-right user-nav" style="margin-right: 40px;" >
                <li class="user-name"><span>관리자 페이지(MYPAGE)</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="/asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown" style="background-color: black;">
<!--                      <li style="color: blue;"><a href="#" id="ch"><span class="fa fa-user"></span> 내정보(My Profile)</a></li> -->
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
      </c:when>
      <c:when test="${cookie.loginId.value eq 'coolmonster'}">
      <ul class="nav navbar-nav navbar-right user-nav" style="margin-right: 40px;">
                <li class="user-name"><span>본부장님 페이지(MYPAGE)</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="/asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown" style="background-color: black;">
<!--                      <li style="color: blue;"><a href="#" id="ch"><span class="fa fa-user"></span> 내정보(My Profile)</a></li> -->
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
      </c:when>
      <c:otherwise>
      <ul class="nav navbar-nav navbar-right user-nav" style="margin-right: 40px;" >
                <li class="user-name"><span>인천사원 페이지(MYPAGE)</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="/asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown" style="background-color: black;">
                   <!--   <li style="color: blue;"><a href="#" id="ch"><span class="fa fa-user"></span> 내정보(My Profile)</a></li> -->
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
      </c:otherwise>
      </c:choose>
      </ul><!--navbar-right close-->
    </div><!--collapse navbar-collapse drop_menu close-->
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
                        <h3 class="animated fadeInLeft"><img src="/images/butt/main-jang.png" style="margin-left: -25px;"></h3>
                        
                        <img src="/images/butt/I-1.png" style="margin-left: -2px; margin-top: -5px; margin-bottom: 5px;">
                        <p class="animated fadeInDown">
                         
                          User <span class="fa-angle-right fa"></span> User Data Tables
                        </p>
                         <div class="span12">
            <form id="custom-search-form" class="form-search form-horizontal pull-right" action="/areasearch.htm" >
                <div class="input-append span12">
                <input type="hidden" name="greenb_id" value="1">
                <select name="type" style="height: 38px;">
                <option value="name">이름 검색</option>
                <option value="endday">날짜 검색</option>
                <option value="introduce">사원 코드</option>
                </select>
                    <input type="text" class="search-query mac-style" placeholder="Search" name="value" style="height: 38px;">
                    <button type="submit" class="btn" id="custom-search-form"style="height: 38px;"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </form>
        </div>
                        <!-- data-toggle="modal" data-target="#writeModal" -->
 <button class="btn ripple btn-outline btn-primary" id="write" style="width: 100px; float: left;" onclick="location.href='/program/write1.jsp'" ><span class="glyphicon glyphicon-pencil" style="margin-right: 5px;"></span>글 쓰기</button>                      
                    </div>
                  </div>
              </div>              
              
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3><span class="glyphicon glyphicon-th-list"></span>&nbsp; 장부 관리 [<font id="count"></font>]</h3></div>
                    <table style="margin: auto; margin-top: 10px; border: 1px solid black;">
                    <tr>
                  <!--   <td>
<button class="btn btn-outline btn-default" style="padding: 20px 30px; font-weight: bold;" onclick="play()">실시간 총 금액</button>
</td> -->
 <table style="width: 100%">
 <tr>
<td class="m1" id="m1" style="color:white; background-color: #0E1A35; text-align: center;">             
<h4 style="font-weight: bold; color:white;">입금액</td><td class="m1"><h4 style="font-weight: bold; text-align: center;">  <font id="sum1" color="black"></font>  <font style="font-size: 13px; color: gray;"> 원</font> </h4></td>
<td class="m1" id="m2" style="color:white; background-color: #0E1A35; text-align: center;"> <h4 style="font-weight: bold;"> 나간금액 </td><td class="m1"> <h4 style="font-weight: bold; text-align: center;"><font id="sum2" color="black"></font><font style="font-size: 13px; color: gray;"> 원</font>  </h4></td>
<td class="m1" id="m4" style="color:white; background-color: #0E1A35; text-align: center;"> <h4 style="font-weight: bold;"> 총 남은금액 </td><td class="m1"> <h4 style="font-weight: bold; text-align: center;"><font id="sum4" color="black"></font><font style="font-size: 13px; color: gray;"> 원</font> </h4></td>
     <!-- <button class="btn ripple btn-round btn-3d btn-default" onclick="play()" style="width: 245px; margin-bottom: 10px; height: 50px;">입금액 합계 구하기</button></div>
					<div id="total" style="font-size: 18px; display: none;">총 입금액 <input type="text" id="loan" style="width:150px; height: 30px; margin-left: 10px; text-align: right">
					               -->
					               </tr>
					                </table>
                    </tr>
                    </table>                   
                    <div class="panel-body" style="margin-left: -10px; margin-top: -20px;">
                      <div class="responsive-table">
                      <div class="container" style="width: 100%; padding-left: 10px; padding-right: 0px;">
    <div class="row" >
        <div class="panel panel-primary filterable" style="margin-bottom: 20px;">
            <div class="panel-heading" style="height: 50px;">
                <h3 class="panel-title" style="text-align: center; color: white; font-size: 25px; margin-top: 5px;">장부 목록</h3>
                <div class="pull-right" style="margin-top: -26px;">
                    <button class="btn-default btn-xs btn-filter" style="height: 30px; width: 80px; margin-right: 20px;"><span class="glyphicon glyphicon-filter"></span>검색</button>
                </div>
            </div>
            <form action="" id="setRows" style="margin-bottom: -10px;">
            <p style="font-size: 20px; font-weight: bold; text-align: right; height: 50px; padding-top: 10px; margin-right: 20px; "> <!-- background-color: #0E1A35; color:white; -->
               
                <input type="text" name="rowPerPage" id="rowone" style="color: black; width: 50px; height: 30px; ">
               <font> 줄 씩 표시합니다.</font>
            </p>
        </form> 
            <table class="table" style="margin: auto;" id="products" role="grid">
                <thead>
                    <tr class="filters" id="pix">
                        <th style="hegith:40px;"><input type="text" class="form-control" placeholder="순번" id="1" disabled></th>
                        <th id="2"><input type="text" class="form-control" placeholder="이름" disabled></th>
                        <th id="3"><input type="text" class="form-control" placeholder="날짜" disabled></th>
                        <th id="4"><input type="text" class="form-control" placeholder="대출액" disabled></th>
                        <th id="5"><input type="text" class="form-control" placeholder="입금액" disabled></th>
                        <th id="6"><input type="text" class="form-control" placeholder="플랜명" disabled></th>
                        <th id="7"><input type="text" class="form-control" placeholder="잔액" disabled></th>
                        <th id="8"><input type="text" class="form-control" placeholder="사원코드" disabled></th>             
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="list" items="${list}">					
                    <tr id="one" role="row" class="odd">
                    <c:choose>
							<c:when test="${list.greenb_id==1}">
								<td class="sorting_1">인천-000${list.member_num }</td>
							</c:when>
							<c:when test="${list.greenb_id==2}">
								<td>광주-000${list.member_num }</td>
							</c:when>
							<c:when test="${list.greenb_id==3}">
								<td>전주-000${list.member_num }</td>
							</c:when>
							<c:when test="${list.greenb_id==4}">
								<td>동탄-000${list.member_num }</td>
							</c:when>
							<c:when test="${list.greenb_id==5}">
								<td>기타-000${list.member_num }</td>
							</c:when>
						</c:choose>
                        <td><a href="<c:url value='/memberinfo.htm'>                        
                        <c:param name="member_num" value="${list.member_num }" /></c:url>">${list.name}</a></td>
                        <td>${list.endday}</td>  
                        <td><input name="total" id="total" value="${list.totalmoney}"></td>
                        <td><input name="depo" id="depo" value="${list.deposit}"></td>
                        <c:choose>
                        	<c:when test="${list.plan==0}">
								<td>플랜없음</td>
							</c:when>
							<c:when test="${list.plan==1}">
								<td>G1 플랜</td>
							</c:when>
							<c:when test="${list.plan==2}">
								<td>G2 플랜</td>
							</c:when>
							<c:when test="${list.plan==3}">
								<td>G3 플랜</td>
							</c:when>
							<c:when test="${list.plan==4}">
								<td>G4 플랜</td>
							</c:when>
							<c:when test="${list.plan==5}">
								<td>G5 플랜</td>
							</c:when>
						</c:choose>                                   
                        <td><input name="bal" id="bal" value="${list.balance}"></td>
                        <td>${list.introduce}</td>                        
                    </tr>
                    </c:forEach>                   
                </tbody>
            </table>
        </div>
    </div>
</div>
                      </div>
                  </div>
                  <div align="center">
                   <button class="ripple-infinite btn-round btn-3d btn-default" style="width: 250px; height: 50px; margin-top: -50px; margin-bottom: 20px;" onclick="location.href='javascript:history.go(-1)';">돌아가기</button>                   
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
  <div class="modal-dialog" style="width: 600px !important; margin: 30px auto;">
	<div class="modal-content" style="background-color: #6AB5FF;">
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

<!-- line modal -->
<div class="modal fade" id="emploModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog" style="width: 500px !important; margin: 30px auto;">
	<div class="modal-content" style="background-color: #1B305F;">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel">사원코드확인</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form style="color: white;">
              <div class="form-group" style="margin-bottom: 20px;">
                <label for="exampleInputEmail1">
                	관리자코드 : admin(admin-1)
                </label>               
              </div>
              <div class="form-group" style="margin-bottom: 20px;">
                <label for="exampleInputEmail1">인천지역</label>
                <label for="exampleInputEmail1">inchen(I-1),inchen2(I-2),inchen3(I-3)</label>
               
              </div>
              <div class="form-group" style="margin-bottom: 20px;">
                <label for="exampleInputEmail1">광주지역</label>
                <label for="exampleInputEmail1">Gangju(G-1),Gangju2(G-2),Gangju3(G-3)</label>
              </div>
             <div class="form-group" style="margin-bottom: 20px;">
                <label for="exampleInputEmail1">전주지역</label>
                <label for="exampleInputEmail1">Junju(J-1),Junju2(J-2),Junju3(J-3)</label>
              </div>
              <div class="form-group" style="margin-bottom: 20px;">
                <label for="exampleInputEmail1">동탄지역</label>
                <label for="exampleInputEmail1">Dangtan(D-1),Dangtan2(D-2),Dangtan3(D-3)</label>
              </div>
             <div class="form-group" style="margin-bottom: 20px;">
                <label for="exampleInputEmail1">기타지역</label>
                <label for="exampleInputEmail1">Theother(A-1),Theother2(A-2),Theother3(A-3)</label>
              </div>
            </form>

		</div>
		<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn ripple-infinite btn-round btn-3d btn-default" data-dismiss="modal"  role="button">Close</button>
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
    <a data-toggle="modal" data-target="#writeModal" style="color:#007FFF; padding-right:1px; cursor: pointer;"><b>이용문의 바로가기</b></a>
  </div>
 <div>
     <div style="width: 100px; margin: auto;">
             <button id="close" class="btn ripple-infinite btn-round btn-3d btn-default" style="padding: 5px 25px;">
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