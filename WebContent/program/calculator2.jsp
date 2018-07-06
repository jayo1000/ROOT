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
<script language="JavaScript">
<!--
	var tmpNC="";
	function numberComma(obj)
	{
		if(tmpNC==obj.value) return;
		tmpNC=obj.value;
		// [2012-12-01]
		//obj.value=numberComma2(tmpNC);
		document.getElementById('l_money_view').innerHTML=numberComma2(tmpNC)+"원";
	}
	function numberComma2(s)
	{
		s=s.replace(/\D/g,"");
		l=s.length-3;
		while(l>0) {
			s=s.substr(0,l)+","+s.substr(l);
			l-=3;
		}
		return s;
	}

	function formSubmit()
	{
		var f = document.forms.form;

		if (f.l_money.value == "")
		{
			alert("대출금을 입력하세요.");
			f.l_money.focus();
			return false;
		}
		if (f.l_rate.value == "")
		{
			alert("대출금리를 입력하세요.");
			f.l_rate.focus();
			return false;
		}
		if (f.l_month.value == "")
		{
			alert("대출기간을 입력하세요.");
			f.l_month.focus();
			return false;
		}
		if (f.l_type.value == "")
		{
			alert("상환방법을 선택하세요.");
			f.l_type.focus();
			return false;
		}

		// [2012-12-01] 콤마 제거
		f.l_money.value = f.l_money.value.replace(/,/g, "");

		// [2012-12-09] SEO
		//f.submit();
		var url = '/loan/' + f.l_type.value + '/' + f.l_money.value + '/' + f.l_rate.value + '/' + f.l_month.value;

		if (f.l_type.value != 3 && f.l_term.value > 0)
			url = url + '/' + f.l_term.value;

		location.href = url;
		return false;
	}

	function formReset()
	{
		var f = document.forms.form;
		f.l_money.value = '';
		f.l_rate.value = '';
		f.l_month.value = '';
	}

	function moneyCalc(plus)
	{
		var mo = document.getElementById("money");
		var money = parseInt(mo.value, 10) || 0;
		mo.value = money + plus;

		numberComma(mo);
	}

	function l_type_change(val)
	{
		if (val == '3')
		{
			document.getElementById('l_term_use').style.display='none';
			document.getElementById('l_term_not_use').style.display='';
		} else
		{
			document.getElementById('l_term_use').style.display='';
			document.getElementById('l_term_not_use').style.display='none';
		}

	}
//-->
function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
function calculate() {
    var principal = document.getElementById("money").value;
    var interest = document.getElementById("rate").value / 100 / 12;
    var payments = document.getElementById("years").value * 12;

console.log(principal +":principal");
console.log(interest +":interest");
console.log(payments +":years");
    // Now compute the monthly payment figure, using esoteric math.
    var x = Math.pow(1 + interest, payments);
    var monthly = (principal*x*interest)/(x-1);
    // Check that the result is a finite number. If so, display the results
    if (!isNaN(monthly) && 
        (monthly != Number.POSITIVE_INFINITY) &&
        (monthly != Number.NEGATIVE_INFINITY)) {
        document.getElementById("allsum3").innerHTML = numberWithCommas(round(monthly)) +" 원";
        document.getElementById("allsum1").innerHTML = numberWithCommas(round(monthly * payments)) +" 원";
        document.getElementById("allsum2").innerHTML = 
            numberWithCommas(round((monthly * payments) - principal)) +" 원";
    }
    // Otherwise, the user's input was probably invalid, so don't
    // display anything.
    else {
        document.getElementById("allsum3").innerHTML = "";
        document.getElementById("allsum1").innerHTML = "";
        document.getElementById("allsum2").innerHTML = "";
    }
}
// This simple method rounds a number to two decimal places.
function round(x) {
  return Math.round(x*100)/100;
}
</script>
<script>//<![CDATA[
(function($){$.fn.toPrice=function(cipher){var strb,len,revslice;strb=$(this).val().toString();strb=strb.replace(/,/g,'');strb=$(this).getOnlyNumeric();strb=parseInt(strb,10);if(isNaN(strb))return $(this).val('');strb=strb.toString();len=strb.length;if(len<4)return $(this).val(strb);if(cipher==undefined||!isNumeric(cipher))cipher=3;count=len/cipher;slice=new Array();for(var i=0;i<count;++i){if(i*cipher>=len)break;slice[i]=strb.slice((i+1)*-cipher,len-(i*cipher));}revslice=slice.reverse();return $(this).val(revslice.join(','));}
$.fn.getOnlyNumeric=function(data){var chrTmp,strTmp;var len,str;if(data==undefined){str=$(this).val();}else{str=data;}len=str.length;strTmp='';for(var i=0;i<len;++i){chrTmp=str.charCodeAt(i);if((chrTmp>47||chrTmp<=31)&&chrTmp<58){strTmp=strTmp+String.fromCharCode(chrTmp);}}if(data==undefined)return strTmp;else
return $(this).val(strTmp);}
var isNumeric=function(data){var len,chrTmp;len=data.length;for(var i=0;i<len;++i){chrTmp=str.charCodeAt(i);
if((chrTmp<=47)||chrTmp>=58){return false;}}return true;}})(jQuery);
//]]></script>
<script>
$(document).ready(function(){$('.onlyNum,.tel,.money,.float').css('ime-mode','disabled');$('.onlyNum,.tel,.money').live('keypress',function(e){return(e.which!=8&&e.which!=0&&(e.which<48))?false:true;});$('.float').live('keypress',function(e){return(e.which!=8&&e.which!=0&&(e.which<48)&&e.which!=46)?false:true;});$('.money').bind('keyup',function(e){$(this).toPrice();});$('#rtype').live('change',function(e){if(parseInt($(this).val())>3){$('#term').css({'background-color':'#fff'}).removeAttr('disabled');}else{$('#term').css({'background-color':'#ddd'}).attr('disabled','disabled');}});});
function chkFrm(f){
if(f.rtype.value<4){$('#term').css({'background-color':'#ddd'})}
if(!f.document.getElementById("money").value){alert('대출원금을 입력하세요.');f.principal.focus();return false;}
if(!f.rate.value){alert('대출금리를 입력하세요.');f.rate.focus();return false;}
if(!f.month.value){alert('대출기간을 입력하세요.');f.month.focus();return false;}
if(f.rtype.value>3){if(!f.term.value){alert('거치기간을 입력하세요.');f.term.focus();return false;}
var term=f.term.value*12;
if(term>=f.month.value){alert('전체 대출기간이 거치기간보다 길어야합니다.');f.term.focus();return false;}}return true;}
function add_money(money){if(trim(document.frm.principal.value)=="")document.frm.principal.value=0;var mn=parseInt(num_only(document.frm.principal.value));mn+=money;document.frm.principal.value=get_comma_str(mn);}function set_mn2(val){document.frm.mn2.value=val;}function set_mn3(val){document.frm.month.value=parseInt(val)*12;}function set_mn4(val){document.frm.term.value=parseInt(val);}function set_mn5(val){document.frm.rate.value=parseInt(val);}function set_mn1(){document.getElementById("money").value=0;}function set_1(val){document.frm.principal.value=parseInt(val);}

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
@media (min-width:1281px){.container{width:1630px; font-size: 13px;}
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
 
 #one:hover {
 background-color: black;
 color: white;
 }
 
 td {
 border: 1px solid black;
 }
</style>
</head>
<body id="mimin" class="dashboard">
<body>
<center>
<style>.money,.onlyNum,.float{text-align:right}</style>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<!--[if lte IE 8]>
<script async src="./jscss/html5.js"></script>
<![endif]-->
<script async="">//<![CDATA[
!function(a){function f(a,b){if(!(a.originalEvent.touches.length>1)){a.preventDefault();var c=a.originalEvent.changedTouches[0],d=document.createEvent("MouseEvents");d.initMouseEvent(b,!0,!0,window,1,c.screenX,c.screenY,c.clientX,c.clientY,!1,!1,!1,!1,0,null),a.target.dispatchEvent(d)}}if(a.support.touch="ontouchend"in document,a.support.touch){var e,b=a.ui.mouse.prototype,c=b._mouseInit,d=b._mouseDestroy;b._touchStart=function(a){var b=this;!e&&b._mouseCapture(a.originalEvent.changedTouches[0])&&(e=!0,b._touchMoved=!1,f(a,"mouseover"),f(a,"mousemove"),f(a,"mousedown"))},b._touchMove=function(a){e&&(this._touchMoved=!0,f(a,"mousemove"))},b._touchEnd=function(a){e&&(f(a,"mouseup"),f(a,"mouseout"),this._touchMoved||f(a,"click"),e=!1)},b._mouseInit=function(){var b=this;b.element.bind({touchstart:a.proxy(b,"_touchStart"),touchmove:a.proxy(b,"_touchMove"),touchend:a.proxy(b,"_touchEnd")}),c.call(b)},b._mouseDestroy=function(){var b=this;b.element.unbind({touchstart:a.proxy(b,"_touchStart"),touchmove:a.proxy(b,"_touchMove"),touchend:a.proxy(b,"_touchEnd")}),d.call(b)}}}(jQuery);
//]]></script>
<!--[if lt IE 9]><script async src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script async src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script async src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<img src="/images/butt/soso.png" style="width: 300px;">
<h1 style="border-bottom: 1px solid black; margin-bottom: 20px; padding-bottom: 20px;">대출이자 계산기</h1>
<title>대출이자 계산기</title>

<div class="row">
<form name="frm" method="post" action="" onsubmit="return chkFrm(this);" class="form">
<input type="hidden" name="mode" value="calculate">
<div class="col-md-4">
<table class="table table-condensed" style="width: 90%; box-shadow:-5px 5px 5px grey; box-shadow: 0 8px 15px 0 rgba(0, 0, 10, 0.2), 0 6px 20px 0 rgba(0, 0, 10, 0.19); border: 1px solid black; background-color: white; border-collapse: inherit;">
<tbody><tr><td ><img src="/images/butt/opop1.png"></td><td><select name="rtype" id="rtype" class="sel" style="height: 40px;">
<option value="1" selected="">원리금 균등상환</option>
<option value="2">원금 균등상환</option>
<option value="3">만기일시상환</option>
<option value="4">거치후 원리금 균등상환</option>
<option value="5">거치후 원금 균등상환</option>
</select></td></tr>
<tr><td><img src="/images/butt/opop2.png"></td>
<td><input type=number name=l_money  id="money" class=money min=1 size=12 maxlength=20 onKeyUp="JavaScript:numberComma(this);" required="required" name="principal" onchange="calculate();">원<br>
<div id=l_money_view>&nbsp;</div>
<!-- <span><input type="button" value="십만원" onclick="set_1(100000)"></span> -->
<!-- <span><input type="button" value="백만원" onclick="add_money(1000000)"></span> -->
<span><input type="button" value="십만원" onClick="JavaScript:moneyCalc(100000);"></span>
<span><input type="button" value="백만원" onClick="JavaScript:moneyCalc(1000000);"></span>
<span><input type="button" value="천만원" onClick="JavaScript:moneyCalc(10000000);"></span>
<span><input type="button" value="일억원" onClick="JavaScript:moneyCalc(100000000);"></span>
<!-- <span><input type="button" value="초기화" onclick="set_mn1()"></span> -->
<span><input type="button" value="초기화" onclick="reset();"></span>
</td></tr>
<tr><td><img src="/images/butt/opop3.png"></td>
<td><input type="text" name="month" maxlength="3" value="" class="inp1 onlyNum" style="width:110px; height: 30px; margin-bottom: 10px;" required="required" id="years" onchange="calculate();"> 개월<br>
<span><input type="button" value="1년" onclick="set_mn3(1)"></span>
<span><input type="button" value="3년" onclick="set_mn3(3)"></span>
<span><input type="button" value="5년" onclick="set_mn3(5)"></span>
<span><input type="button" value="10년" onclick="set_mn3(10)"></span>
<span><input type="button" value="15년" onclick="set_mn3(15)"></span>
<span><input type="button" value="20년" onclick="set_mn3(20)"></span>
<span><input type="button" value="30년" onclick="set_mn3(30)"></span>
</td></tr>
<tr><td><img src="/images/butt/opop4.png"></td>
<td><input type="text" name="term" id="term" maxlength="3" value="" disabled="" style="background-color:#ddd;width:110px; height: 30px; margin-bottom: 10px;" class="inp1 onlyNum"> 년<br>
<span><input type="button" value="1년" onclick="set_mn4(1)"></span>
<span><input type="button" value="2년" onclick="set_mn4(2)"></span>
<span><input type="button" value="3년" onclick="set_mn4(3)"></span>
<span><input type="button" value="5년" onclick="set_mn4(5)"></span>
</td></tr>
<tr><td><img src="/images/butt/opop5.png"></td>
<td><input type="text" name="rate" maxlength="7" value="" class="inp1 float" required="required" id="rate" onchange="calculate();" style="height: 30px; margin-bottom: 10px;"> %<br>
<span><input type="button" value="3%" onclick="set_mn5(3)"></span>
<span><input type="button" value="4%" onclick="set_mn5(4)"></span>
<span><input type="button" value="5%" onclick="set_mn5(5)"></span>
<span><input type="button" value="7%" onclick="set_mn5(7)"></span>
<span><input type="button" value="8%" onclick="set_mn5(8)"></span>
<span><input type="button" value="9%" onclick="set_mn5(9)"></span>
<span><input type="button" value="12%" onclick="set_mn5(12)"></span>
<span><input type="button" value="15%" onclick="set_mn5(15)"></span>
<span><input type="button" value="18%" onclick="set_mn5(18)"></span>
<span><input type="button" value="21%" onclick="set_mn5(21)"></span>
<span><input type="button" value="24%" onclick="set_mn5(24)"></span>
<span><input type="button" value="28%" onclick="set_mn5(28)"></span>
</td></tr>
</tbody></table>
</div>
<div class="col-md-4">
<input class="btn btn-default btn-lg" type="button" value="계산하기" alt="계산하기" onclick="calculate();">
<input class="btn btn-default btn-lg" type="reset" value="초기화" alt="초기화">
<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#loanHelp">도움말</button>
<!-- Modal -->
<div id="loanHelp" class="modal fade" role="dialog">
<div class="modal-dialog">
<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">×</button>
<h4 class="modal-title">상환방법</h4>
</div>
<div class="modal-body">
<p><b>원금균등분할상환</b> : 상환하고 남은 금액을 기준으로 매번 이자가 새로 계산되므로 시간이 갈수록 이자 부담이 줄어드는 상환방식</p>
<p><b>원리금균등분할상환</b> : 이자와 상환금을 합산한 금액을 매회 동일하게 상환하는 방식</p>
<p><b>만기일시상환</b> : 이자만 내다가 마지막에 상환하는 방식</p>
<p><b>거치후 원금균등분할상환</b> : 거치기간동안은 대출원금에 대한 이자만 납부하고, 잔여 대출기간에는 매월 동일한 원금을 납부하되 이자는 매달 원금이 공제된 잔금에 대하여 납부하는 방식</p>
<p><b>거치후 원리금균등분할상환</b> : 거치기간동안은 원금에 대한 이자만을 납부하고, 잔여 대출기간에는 매월 약정된 원금과 이자가 정액으로 나가는 방식</p>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<table class="table table-bordered" style="width:95%; box-shadow:-5px 5px 5px grey; box-shadow: 0 8px 15px 0 rgba(0, 0, 10, 0.2), 0 6px 20px 0 rgba(0, 0, 10, 0.19); border: 1px solid black; background-color: white; border-collapse: inherit; margin-right: 10px;">
<tbody><tr><td colspan="2" style="text-align:center;font-size:1.3em;font-weight:700;">원금 및 총 이자액 합계</td></tr>
<tr><td colspan="2" style="text-align:center;font-size:1.3em;font-weight:700;color:#ff0000;" id="allsum1" name="total">0 원</td></tr>
<tr><td>총이자액</td>
<td id="allsum2" name="totalinterest">0 원</td></tr>
<tr><td>월 상환금</td>
<td id="allsum3" name="payment">0 원</td></tr>
<tr><td colspan="2">월상환금 = 원금 + 이자</td></tr>
</tbody></table>
</div>
</form>
</div>
<br><br><br>
<div align="center">
                   <button class="ripple-infinite btn-round btn-3d btn-default" style="width: 250px; height: 50px; margin-top: -50px; margin-bottom: 20px;" onclick="location.href='javascript:history.go(-1)';">돌아가기</button>                   
                   </div>
<br><br>
<br><br>
<p style="width:100%;height:50px;line-height:50px;background:#DDD;">
각종 계산서식  Greenbloan.com
</p></center></body>
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