<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="kor">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9">
	<meta http-equiv="X-UA-Compatible" content="IE=8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="Miminium Admin Template v.1">
	<meta name="author" content="Isna Nur Azis">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>※GreenB※</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/mediaelementplayer.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
  <link href="asset/css/style.css" rel="stylesheet">
  <link href="css/sign.css" rel="stylesheet">
  <!-- end: Css -->

  <link rel="shortcut icon" href="asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<script type="text/javascript">
/* $(document).ready(function(){
	var email = $('email');
    var id = document.getElementById("id");
    var theForm = opener.document.getElementById("regist");
    var btSubmit = $('.btn btn-lg btn-primary btn-block signup-btn");
    console.log("id값"+id.value);
    
    btSubmit.on('click', function(){
    	var regEmail = var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    	
    	if(theForm.id.value==""||theForm.name.value==""||theForm.passwd.value==""||theForm.job.value==""||theForm.email.value==""||
    			theForm.phonenumber1.value==""||theForm.phonenumber2.value==""||theForm.phonenumber3.value==""||theForm.profile.value==""){
    		alert("필수 입력란이 비어있습니다. 확인해 주세요.");
    		console("들어는오냐3");
    })else{
    	console("들어는오냐4");
    	theForm.submit();
    	}
    }
}
fuction check_onclick(){
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
})(jQuery); */
</script>
<body id="mimin" class="dashboard topnav">
      <!-- start: Header -->
<!--         <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
                <a href="index.html" class="navbar-brand"> 
                <b>※GreenB※</b>
                </a>     

              <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span>로그인</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown">
                     <li><a href="sign.jsp"></span>회원가입</a></li>
                     <li><a href="#"></span>로그인</a></li> 
              </ul>
              </li>
              </ul>
            </div>
          </div>
        </nav> -->
        
 <label class="bg-alt" style="width: 100%; background-color: black; height: 80px;">
<a class="brand" href="/index.jsp" style="padding-left: 30px;"><img src="images/logo/logos.png" style="margin-top: 5px;"></a>
</label>
      <!-- end: Header -->

      <!-- start: Content -->
        <div class="container" id="wrap" style="margin-bottom: 70px;">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3" style="margin-top: 20px;">
            <form name="regist" id="regist" action="/sign.htm" method="post" accept-charset="utf-8" class="form-horizontal" role="form">
            <h3><i class="fa fa-user-plus"></i><div style="display: inline; margin-left: 10px;">회원가입 ( Sign Up )</div></h3>
                    <h4>It's free and always will be.</h4>
                    <label style="font-size: 20px;"> ID :</label>
                            <input type="text" name="id" class="form-control input-lg" placeholder="ID" required/>
                    <label style="font-size: 20px;"> NAME : </label>
                          	<input type="text" name="name" class="form-control input-lg" placeholder="NAME" required/>
                    <label style="font-size: 20px;"> PASSWORD : </label>                  
                    <input type="password" name="passwd" class="form-control input-lg" placeholder="Password" required/>
                    <!-- <input type="password" name="confirm_password" class="form-control input-lg" placeholder="Confirm Password" required/> -->
                    <label style="font-size: 20px;"> JOB : </label>
                    <input type="text" name="job" class="form-control input-lg" placeholder="Your job" required/>    
                    <label style="font-size: 20px;"> E-MAIL : </label>
                    <input type="text" name="email" class="form-control input-lg" placeholder="Your Email" required/>
                    <div class="col-xs-4 col-md-4">
                    <label style="font-size: 15px;"> PHONE NUM1 : </label>
                            <select name="phonenumber1" class = "form-control input-lg" required>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="012">012</option>
					<option value="016">016</option>
					<option value="018">018</option>
					<option value="019">019</option>
					</select>                        
					</div>
                        <div class="col-xs-4 col-md-4">
                        <label style="font-size: 15px;"> PHONE NUM2 : </label>
                           <input type="text" name="phonenumber2" class="form-control input-lg" placeholder="" required>
                        </div>
                        <div class="col-xs-4 col-md-4">
                        <label style="font-size: 15px;"> PHONE NUM3 : </label>
                            <input type="text" name="phonenumber3" class="form-control input-lg" placeholder="" required>                        
                        </div>
                        <label></label>
                        <div class="col-xs-10 col-md-10">
                     <label style="font-size: 25px; font-style: inherit;"> self-introduction ..</label>
                       <input type="text" name="profile" class="form-control input-lg" style="height: 100px; margin-bottom: 20px;" placeholder="간단한 자기소개 부탁드려요" required>
                       </div>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" id="regist" type="submit">
                        Create my Information</button>
            </form>          
          </div>
</div>
</div>
      <!-- end: content -->
<!-- start: Javascript -->
<script src="asset/js/jquery.min.js"></script>
<script src="asset/js/jquery.ui.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>

<!-- plugins -->
<script src="asset/js/plugins/holder.min.js"></script>
<script src="asset/js/plugins/moment.min.js"></script>
<script src="asset/js/plugins/jquery.nicescroll.js"></script>

<!-- custom -->
<script src="asset/js/main.js"></script>
<!-- end: Javascript -->
</body>
</html>