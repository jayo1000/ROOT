<%@ page import="kr.or.greenb.speedLoan.domain.SpeedLoan"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<title>자료를 등록중입니다...</title>
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   
<link rel="stylesheet" href="css/loading.css">
<link rel="stylesheet" href="css/styles.css" />
<meta http-equiv="refresh" content="2; /index.htm" />
</head>
<body>
<div style="margin-top: 200px;"></div>
<jsp:useBean id="loan" class="kr.or.greenb.speedLoan.domain.SpeedLoan" scope="request" />
<div style="text-align: center;">
    <img src="/images/logo/logo3.png" class="img-responsive center-block" style="margin-bottom: 20px;">
	<p class="text-center loadText">정보를 저장하고 있습니다.</p>
	<h3 style="color:#e6e6e6;"> 등록중입니다. 잠시만 기다려 주시기 바랍니다.</h3>
</div>
<div class="container">
	<div class="row">
		<div id="loader">
    		<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="lading"></div>
		</div>
	</div>
</div>
</body>
</html>