<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=IE9" />
	<meta name="viewport" content="width=device-width" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>대출이자계산기 | 원리금균등상환 | 원금균등상환</title>
	<meta name="Keywords" content="대출계산기, 대출이자계산기, 원리금상환계산기, 원리금균등상환 계산기, 원금균등상환 계산기, 원금만기일시상환 계산기, 대출이자계산기 xls, 대출 이자 계산 엑셀, 대출 이자, 이자 계산기, 대출 금리, 원리금균등상환, 원금균등상환, 원금만기일시상환,   담보대출, 대출금리, 대출이자, 신용대출, 은행대출, 전세대출, 전세자금대출, 주택담보대출, 주택대출, 학자금대출,  대출계산기, 대출이자계산기, 이자계산기, 대출금리계산기, 다음 금융계산기, 적금계산기, 예금계산기, 대출이자 계산기, 적금금리계산기, 이자계산, 대출이자계산법, 이자계산법, 디딤돌 대출">
	<meta name="Description" content="대출 이자 계산기는 엑셀(xls)보다 편리하게 바로 계산해볼 수 있습니다. 원리금균등상환/원금균등상환/원금만기일시상환 방법을 지원합니다. (모바일 지원 금융계산기, 대출계산기, 대출상환계산기, 대출 이자 비교)">
	<style>
	body {margin:2px 2px 2px 2px; font-family: "Nanum Gothic", Gulim, Tahoma, sans-serif;}
	a { text-decoration:none; }
	.money {TEXT-ALIGN: right};


	.b_head { margin:10px; }
	.b_head A { line-height:2; font-size:larger; }
	.b_head A:visited { color: blue; }

	.b_head_sub { margin:0px 0px 5px 20px; }
	.b_head_sub A { line-height:1.4; }
	.b_head_sub A:visited { color: blue; }

			#b_main { float:left; width:600px;}
		.b_main { float:left; width:600px;}
	
	#b_right { float:left; margin-left: 25px; width: 260px; }
	.b_right { float:left; margin-left: 25px; width: 260px; }

	.b_tail { text-align: center; height: 40px; padding-top: 20px; font-size: smaller; line-height: 1.4;}

	.form_quick_input { cursor: pointer; font-size: smaller; padding: 5px; white-space:nowrap; border: 1px solid #e0e0e0; }

	.content_desc { font-size: smaller; line-height:1.4; }
</style>
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
		var money = parseInt(document.forms.form.l_money.value, 10) || 0;
		document.forms.form.l_money.value = money + plus;

		numberComma(document.forms.form.l_money);
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

	window.onload = function(){
		document.forms.form.l_money.focus();
	}
//-->
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  var pluginUrl = '//www.google-analytics.com/plugins/ga/inpage_linkid.js';
  _gaq.push(['_require', 'inpage_linkid', pluginUrl]);
  _gaq.push(['_setAccount', 'UA-28476644-2']);
  _gaq.push(['_setDomainName', 'best79.com']);
  _gaq.push(['_setCustomVar',1,'IP','211.226.245.70',2]);
  	  _gaq.push(['_setCustomVar',2,'Page','loan.html',3]);
	  _gaq.push(['_setCustomVar',2,'Service','loan',3]);
    _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>



<div class="b_head">
	<a href="/loan/"  style="font-weight:bold">대출이자 계산기</a>

	&nbsp; | &nbsp; <a href="/xe/loan" >대출 정보 공유</a>

	&nbsp; | &nbsp; <a href="/deposit/" >예금/적금 계산기</a>

	&nbsp; | &nbsp; <a href="/salary/" >연봉 계산기</a>

	&nbsp; | &nbsp; <a href="/bank/area_table.php" ><nobr>평형 계산기</a>

	<!--&nbsp; | &nbsp; <a href="http://post.php79.com/" target="_blank" ><nobr>도로명 주소</a>-->

	&nbsp; | &nbsp; <a href="/xe/free" >자유게시판</a>

</div>


<div id="b_main" class="b_main">

	<table width=100% cellpadding=0 cellspacing=3 bgcolor=#DBDBDB>
	  <tr>
		<td bgcolor=#FFFFFF>
			<table width=100% cellpadding=10 cellspacing=0 border=0>
			  <tr>
				<td>☞ 대출금의 상환금액과 이자를 계산합니다.</td>
			  </tr>
			</table>
		</td>
	  </tr>
	</table>

	<img width=0 height=10><br>

	<form name=form method=get action="/bank/loan_calc.php" style="margin:0px" onSubmit="JavaScript:return formSubmit();">
		<table width=100% cellspacing=1 cellpadding=3 bgcolor=#707070>
		<tr>
			<td width=25% bgcolor=#E7E7E7>대출금</td>
			<td bgcolor=#FFFFFF><input type=number name=l_money class=money min=1 size=12 maxlength=20 value="" onKeyUp="JavaScript:numberComma(this);">원<br>
			<div id=l_money_view>&nbsp;</div>
			<div style="padding:2px; line-height:2">
			<span class="form_quick_input" onClick="JavaScript:moneyCalc(100000);">십만원</span> <span class="form_quick_input" onClick="JavaScript:moneyCalc(1000000);">백만원</span> <span class="form_quick_input" onClick="JavaScript:moneyCalc(10000000);">천만원</span> <span class="form_quick_input" onClick="JavaScript:moneyCalc(100000000);">일억원</span> 			</div></td>
		</tr>
		<tr>
			<td bgcolor=#E7E7E7>대출금리</td>
			<td bgcolor=#FFFFFF>연<input type=text name=l_rate class=money size=4 maxlength=7 value="">%<br>
			<div style="padding:2px; line-height:2">
			<span class="form_quick_input" onClick="document.forms.form.l_rate.value='3'">3%</span> <span class="form_quick_input" onClick="document.forms.form.l_rate.value='4'">4%</span> <span class="form_quick_input" onClick="document.forms.form.l_rate.value='5'">5%</span> <span class="form_quick_input" onClick="document.forms.form.l_rate.value='6'">6%</span> <span class="form_quick_input" onClick="document.forms.form.l_rate.value='7'">7%</span> <span class="form_quick_input" onClick="document.forms.form.l_rate.value='10'">10%</span> <span class="form_quick_input" onClick="document.forms.form.l_rate.value='39'">39%</span> 			</div></td>
		</tr>
		<tr>
			<td bgcolor=#E7E7E7>대출기간</td>
			<td bgcolor=#FFFFFF><input type=number name=l_month class=money min=0 max=9999 size=4 maxlength=4 value="">개월<br>
			<div style="padding:2px; line-height:2">
			<span class="form_quick_input" onClick="document.forms.form.l_month.value='12'">1년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='24'">2년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='36'">3년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='48'">4년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='60'">5년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='120'">10년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='180'">15년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='240'">20년</span> <span class="form_quick_input" onClick="document.forms.form.l_month.value='360'">30년</span> 			</div></td>
		</tr>
		<tr>
			<td bgcolor=#E7E7E7>거치기간</td>
			<td bgcolor=#FFFFFF><div id="l_term_use"><input type=number name=l_term class=money min=0 max=9999 size=4 maxlength=4 value="0">개월
			<span style="padding:2px; line-height:2">
			<span class="form_quick_input" onClick="document.forms.form.l_term.value='0'">0년</span> <span class="form_quick_input" onClick="document.forms.form.l_term.value='12'">1년</span> <span class="form_quick_input" onClick="document.forms.form.l_term.value='24'">2년</span> <span class="form_quick_input" onClick="document.forms.form.l_term.value='36'">3년</span> 			</span>
			</div><div id="l_term_not_use" style="display: none;">없음</div></td>
		</tr>
		<tr>
			<td bgcolor=#E7E7E7 nowrap>상환방법</td>
			<td bgcolor=#FFFFFF>
				<select name=l_type onChange="JavaScript:l_type_change(this.value);">
					<option value="1">원리금균등상환</option>
					<option value="2">원금균등상환</option>
					<option value="3">원금만기일시상환</option>
				</select>

							</td>
		</tr>
		</table>

		<div style="margin:5px 0px 5px 0px">
			<div style="float: left;">
				<input type=submit value="계산하기">
				<input type=button value="다시작성" onClick="JavaScript:if (confirm('내용을 지우고 다시 작성하시겠습니까?')) { formReset(); }">
			</div>
			
<div style="float: right; margin:0px 2px 5px 5px;">
	<!--<span style="height:26px; vertical-align:top; margin-top:3px;">공유:</span>-->


    <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fbest79.com%2Floan%2F&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=21&amp;appId=676641839050591"
            scrolling="no" frameborder="0" style="border:none; overflow:hidden; width: 155px; height:21px;"
            allowTransparency="true"></iframe>
    <iframe allowtransparency="true" frameborder="0" scrolling="no"
            src="https://platform.twitter.com/widgets/tweet_button.html"
            style="width:84px; height:20px;"></iframe>
    	<img src="/sns/kakao.png" width="26" height="26" border="0" title="카카오톡 보내기" alt="카카오톡 보내기" style="cursor:pointer" onClick="JavaScript:_gaq.push(['_trackEvent', 'SNS', 'kakao_pc', 'loan.html']); alert('카카오톡 보내기는 스마트폰으로 접속하셔야 사용할 수 있습니다.');">
	
    



</div>
<div style="clear:both;"></div>


<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=676641839050591&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>		</div>

		<div style="text-align: center; margin: 10px 0px 10px 0px;"></div>

	</form>


	
		<table width=100% cellspacing=0 cellpadding=0>
		<tr>
			<td class="content_desc">
			※ 대출 상환 방법<br>
			&nbsp; <b>원리금균등상환</b> - 가장 일반적인 방법으로, 원금과 이자를 합한 상환금액이 매달 동일합니다.<br>
			&nbsp; <b>원금균등상환</b> - 매달 원금을 동일하게 상환하므로, 이자는 매달 줄어들게 됩니다.  단, 매달 이자가 다르므로 원금과 이자를 합한 상환금액도 매달 달라집니다.<br>
			&nbsp; <b>원금만기일시상환</b> - 대출기간동안 매달 이자만 상환하하고, 대출 만기일에 원금을 일시상환 합니다.<br>
			<br>
			※ 거치기간<br>
			&nbsp; 거치기간동안 이자만 납부하고, 거치기간이 끝나면 원금+이자를 납부하게 됩니다.  따라서 원리금/원금 균등상환에만 적용됩니다.<br>
			<br>
			※ 오차 가능성 안내<br>
			&nbsp; 본 대출금 상환 계산기는 월 단위로 계산 한 것이므로, 실제 대출 시작 일자에 일할 계산에 따른 약간의 차이는 있을 수 있습니다.<br>
			</td>
		</tr>
		</table>
	<br>

</div>

<div id="b_right" class="b_right">
		
	<br>

	<div>☞ <a href="/xe/free"><b>자유게시판</b></a></div>
	<table width=100% border=0 cellspacing=0 cellpadding=3 bgcolor=#707070>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/free/11570" >금융고수님들께 여쭙니다</a>[2]</td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/free/11552" style="font-weight: bold">새아파트 입주 대출 관련 상담</a></td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/free/11537" >예/적금 계산기 아지율 오류..</a>[1]</td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/free/11535" >대출받아 집을 사야하나 말아야하나</a>[2]</td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/free/11499" >예/적금 계산기 아지율 오류..</a>[1]</td>
		 </tr>
		</table>


	<br>

	<div>☞ <a href="/xe/loan"><b>대출 정보 공유</b></a></div>
	<table width=100% border=0 cellspacing=0 cellpadding=3 bgcolor=#707070>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/loan/4724">안심전환대출 출시 - 약 2.65%</a>[1]</td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/loan/4711">한국은행 기준금리 2% -&gt; 1.75...</a></td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/loan/4054">근로복지공단 생활안정자금 대출 ...</a>[1]</td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/loan/3977">한국은행 기준금리 2.5% -&gt; 2....</a>[2]</td>
		 </tr>
			  <tr bgcolor=#FFFFFF style="font-size:smaller;">
			<td>ㆍ<a href="/xe/loan/3794">주택기금포털 - 디딤돌 대출 (기...</a></td>
		 </tr>
		</table>

	<br>



	


<br>

<div>☞ 최근 계산</div>
<table width=100% border=0 cellspacing=0 cellpadding=3 bgcolor=#707070>
  <tr align=center bgcolor=#f2f2f2 style="font-size:smaller;">
	<td>대출금</td>
	<td>금리</td>
	<td>기간</td>
	<td>상환</td>
	<td>시간</td>
  </tr>
		  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/200000000/3/360">200,000,000</a></td>
			<td nowrap>3.00%</td>
			<td nowrap>360개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">1분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/2/220000000/3.5/360">220,000,000</a></td>
			<td nowrap>3.50%</td>
			<td nowrap>360개월</td>
			<td nowrap>원금균등</td>
			<td nowrap style="font-size: smaller">2분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/220000000/3.5/360">220,000,000</a></td>
			<td nowrap>3.50%</td>
			<td nowrap>360개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">2분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/2/200000000/2.6/240">200,000,000</a></td>
			<td nowrap>2.60%</td>
			<td nowrap>240개월</td>
			<td nowrap>원금균등</td>
			<td nowrap style="font-size: smaller">3분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/1100000/3/12">1,100,000</a></td>
			<td nowrap>3.00%</td>
			<td nowrap>12개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">3분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/2/90000000/3.12/144">90,000,000</a></td>
			<td nowrap>3.12%</td>
			<td nowrap>144개월</td>
			<td nowrap>원금균등</td>
			<td nowrap style="font-size: smaller">4분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/2/2500000/14.2/36">2,500,000</a></td>
			<td nowrap>14.20%</td>
			<td nowrap>36개월</td>
			<td nowrap>원금균등</td>
			<td nowrap style="font-size: smaller">7분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/171500000/2.1/360">171,500,000</a></td>
			<td nowrap>2.10%</td>
			<td nowrap>360개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">12분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/1800000/17/12">1,800,000</a></td>
			<td nowrap>17.00%</td>
			<td nowrap>12개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">12분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/2400000/26.4/12">2,400,000</a></td>
			<td nowrap>26.40%</td>
			<td nowrap>12개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">13분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/170000000/3.5/240">170,000,000</a></td>
			<td nowrap>3.50%</td>
			<td nowrap>240개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">17분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/20000000/6.9/30">20,000,000</a></td>
			<td nowrap>6.90%</td>
			<td nowrap>30개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">18분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/20000000/6.9/24">20,000,000</a></td>
			<td nowrap>6.90%</td>
			<td nowrap>24개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">18분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/2/70000000/2.4/24">70,000,000</a></td>
			<td nowrap>2.40%</td>
			<td nowrap>24개월</td>
			<td nowrap>원금균등</td>
			<td nowrap style="font-size: smaller">19분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/90000000/2.2/360">90,000,000</a></td>
			<td nowrap>2.20%</td>
			<td nowrap>360개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">19분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/70000000/2.4/24">70,000,000</a></td>
			<td nowrap>2.40%</td>
			<td nowrap>24개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">19분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/2/52000000/3/120">52,000,000</a></td>
			<td nowrap>3.00%</td>
			<td nowrap>120개월</td>
			<td nowrap>원금균등</td>
			<td nowrap style="font-size: smaller">22분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/52000000/3/120">52,000,000</a></td>
			<td nowrap>3.00%</td>
			<td nowrap>120개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">25분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/180000000/3/360">180,000,000</a></td>
			<td nowrap>3.00%</td>
			<td nowrap>360개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">29분 전</td>
		  </tr>
			  <tr align=right bgcolor=#FFFFFF style="font-size:smaller;">
			<td><a href="/loan/1/181000000/3/360">181,000,000</a></td>
			<td nowrap>3.00%</td>
			<td nowrap>360개월</td>
			<td nowrap>원리금균등</td>
			<td nowrap style="font-size: smaller">29분 전</td>
		  </tr>
	</table>
</div>

<div style="clear:both;"></div>
<div class="b_tail">
	계산기는 자유롭게 사용하실 수 있습니다.<br>
	<a href="http://blog.best79.com/" target="_blank">개발자 블로그</a> / 문의메일 : <a href="mailto:calc@best79.com">calc@best79.com</a><br>
	Make 2007 - 2017<br>
</div>


<script language="JavaScript">
<!--
	function setCookie(c_name,value,exdays)
	{
		var exdate=new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());
		document.cookie=c_name + "=" + c_value;
	}

		
//-->
</script>

</body>
</html>
