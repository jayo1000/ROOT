<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=0.5, user-scalable=no,target-densitydpi=device-dpi,maximum-scale=1.0">
<title>▦ GreenB program ▦</title>
  <!-- start: Css -->
<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/view.css" />
<link rel="stylesheet" href="/css/mainheader.css">
<link rel="stylesheet" href="/css/button.css" />
<link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<style type="text/css">
@media only screen and (min-width: 768px) {
}
#first {
        background-color: #444;
         background-image: url("/images/logo/back-lo1.png");
          background-size: 100% 120%;
		 background-repeat: no-repeat; 
        /*background: url(http://cafefiles.naver.net/20110826_83/daedaios_1314370303640vmmF6_jpg/k3_daedaios.jpg);*/ 
        /*본래 위의 카페가. 기본값이다. size와 repeat은 추가사항. */
    }
      body{
    padding-top:50px;
  	}
      .login {
    background: white; /* For browsers that do not support gradients */
    background: -webkit-linear-gradient(bottom,rgba(50,50,50,0),rgba(50,50,50,1)); /*Safari 5.1-6*/
    background: -o-linear-gradient(top,rgba(50,50,50,0),rgba(50,50,50,1)); /*Opera 11.1-12*/
    background: -moz-linear-gradient(top,rgba(50,50,50,0),rgba(50,50,50,1)); /*Fx 3.6-15*/
    background: linear-gradient(to top, rgba(50,50,50,0), rgba(50,50,50,1)); /*Standard*/

     /*box-shadow: 0 8px 15px 0 rgba(0, 0, 10, 0.2), 0 6px 20px 0 rgba(0, 0, 10, 0.19);*/
     /* box-shadow:-5px 5px 5px grey;  */
    color: #B7E8F1;
    font-size: 18px;
  }
  
  #in:hover {
  color: white;
  }
  
  #lo{
  background-color: white;
  }
  
  #lo:hover {
  background-color: black;
  color: white;
  } 
  
  div.button
{
   margin: auto;
   width: 70%;
   margin-right: -5px;
}


div.button input
{
   padding: 5px;
   width: 100%;
   font-size: 18px;
}

    </style>
<body id="first">
<div class="container" id="lolo" style="margin: 250px auto; ">
	<div class="row">
	    <div class="col-md-4 col-md-offset-4 login">
	        <h1 class="text-center" style="margin-top: 10px;">Login</h1>
	        <hr>
    		<form class="form-signin" id="loginForm" name="loginForm" method="post" accept-charset="utf-8" role="form"action="/partnerlogin.htm">
              <div class="form-group">
                <label for="exampleInputEmail1">Login Id</label>
                <input type="text" class="form-control" id="id" name="partnerid" placeholder="아이디를 입력해주세요" required autofocus>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="passwd" name="passwd" placeholder="비밀번호를 입력해주세요" required>
              </div>
           <!-- <div class="btn-group btn-group-justified" role="group" aria-label="...">
                <div class="btn-group" role="group" style="margin-right: 200px;">
                  <a href="#" class="btn" id="in">회원가입</a>
                </div>
                <div class="btn-group" role="group">
                  <button type="submit" id="lo" class="btn btn-primary" style="padding-right: 85px; padding-left: 40px;" onclick="location.href='table.jsp'">Login</button>
                </div>
                </div> -->
                 <div class="btn-group btn-group-justified" role="group" aria-label="...">
                  <div class="button" role="group">
                    <input type="submit" id="lo" name="loginForm" class="btn btn-primary" value="Login" style="width: 50%; float: none;">
                  </div>
                </div>
            </form>
            <hr>
        </div>
	</div>
</div>
<!-- 스크립트 모음 -->
</body>
</html>