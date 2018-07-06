<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <title>Let's Go Life Cruise!</title>
     <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
<meta name="description" content="그린비 정직한 금융. 쉽고 빠른 투자&대출과 최고25% 금리대출. 안전하고 실속있는 그린비입니다." />
<meta property="og:type" content="website">
<meta property="og:title" content="정직한 금융 그린비">
<meta property="og:description" content="정직한 금융 그린비. 그린비는 안전하고 실속있는 금융업체입니다.">
<meta property="og:image" content="/images/logo/logo5.png">
<meta property="og:url" content="http://www.greenbloan.com">
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<![endif]-->
<link rel="stylesheet" type="text/css" href="/asset/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/button.css" />
<style type="text/css">
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

</style>
<BODY>
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
                  <div class="panel-body" style="border: 1px solid black;">
                    <div class="col-md-12">
                        <h3 class="animated fadeInLeft">GREENBLOAN 장부-</h3>                        
                        <!-- data-toggle="modal" data-target="#writeModal" -->
                    </div>
                  </div>
              </div>
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3>&nbsp;<img src="/images/butt/gobest.png" style="margin-left: -40px;"> </h3></div>
                    <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
                    <img src="/images/butt/go.png">
                    <div align="center">
                    <table style="margin: auto; margin-top: 10px; border: 1px solid black;">
                    </table>                  
                   <table style="width: 100%;border: 1px solid black; margin-bottom: 30px;">
                     <tr style="border: 1px solid black; height: 50px;">
                     <th style="border: 1px solid black;  text-align: center; width: 80px;">성명</th>
                     <th style="border: 1px solid black; "><input type="text" style="margin-left: 50px;"></th>
                     <th style="border: 1px solid black; text-align: center; width: 80px;">생년월일</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 50px;"></th>
                     <th style="border: 1px solid black; text-align: center; width: 80px;">상호</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 50px;"></th>
                   </tr>
                   <tr>
                    <th style="border: 1px solid black; text-align: center; height: 50px;">연락처</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 50px;"></th>
                     <th style="border: 1px solid black; text-align: center;">주소 ①</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 50px;"></th>
                     <th style="border: 1px solid black; text-align: center;">주소 ②</th>
                     <th style="border: 1px solid black;"><input type="text" style="margin-left: 50px;"></th>
                   </tr>
                   <tr>
                    <th></th>
                     <th></th>
                     <th colspan="2" style="height: 50px;"><input type="text" style="width: 77%; margin-left: 80px;"></th>
                     <th colspan="2"><input type="text" style="width: 75.5%; margin-left: 80px;"></th>
                   </tr>
                   </table>
                   <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
                   <img src="/images/butt/sang.png" style="float: left; margin-bottom: 15px;">
                   
                   <table style="width: 100%; border: 1px solid black;">              
                   <tr style="border: 1px solid black;">
                   <th style="border: 1px solid black; height: 30px; text-align: center;">순번</th>                   
                   <th style="border: 1px solid black; text-align: center;">이름</th>
                   <th style="border: 1px solid black; text-align: center;">날짜</th>
                   <th style="border: 1px solid black; text-align: center;">입금액</th>
                   <th style="border: 1px solid black; text-align: center;">날짜</th>
                   <th style="border: 1px solid black; text-align: center;">출금액</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   </tr>
                    <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   </tr>
                   <tr>
                   <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   </tr>
                   <tr>
                    <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   </tr>
                   <tr>
                    <th style="border: 1px solid black; text-align: center;">J-00001</th>
                   <th style="border: 1px solid black; text-align: center;">임창정</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   <th style="border: 1px solid black; text-align: center;">2017-10-12</th>
                   <th style="border: 1px solid black; text-align: center;">100,000</th>
                   </tr>
                   </table>
                   </div>
                   
                   <div align="center" style="margin-top: 30px;">
                    <label class="bg-alt" style="width: 100%; background-color: #f2f2f2; height: 10px;"></label>
                   <button class="ripple-infinite btn-round btn-3d btn-default" style="width: 120px; height: 50px; margin-right: 15px;">초기화</button>
<button class="ripple-infinite btn-round btn-3d btn-default" style="width: 120px; height: 50px; margin-right: 15px;">등록</button>
                   </div>
                   </div>             
</div>
</div>
</div>
</BODY>
</HTML>