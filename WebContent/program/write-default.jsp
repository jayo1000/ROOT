<%@ page contentType="text/html; charset=utf-8" %>
<jsp:setProperty property="*" name="user" />
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
<style type="text/css">
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

/*         @media (min-width: 992px)
bootstrap.min.css:5
.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
} */
</style>
</head>
<body id="mimin" class="dashboard" style="background-color: white;">
      <!-- start: Header -->
        <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              <div class="opener-left-menu is-closed">
               <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
              </div>
                <a href="/program/table.jsp" class="navbar-brand"> 
                 <b>Greenb Local System</b>
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
                    <li><a href="#" id="ch"><span class="fa fa-power-off "></span> 로그아웃(Logout)</a></li>
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
  	<!-- 메인 추가창 -->
  <div style="margin-top: 70px;">
  <div style="margin-left: 40px;">
  <img src="/images/program/write1.png">
  <img src="/images/program/write2.png" style="margin-left: 5px; height: 33px;">
 <!--  <label style="color: #217EC6; font-size: 20px; margin-left: 10px; font-weight: bolder; font-family: monospace;">장부 정보 등록</label> -->
  </div>
  <label style="background-color: #217EC6; width: 800px; height: 10px; margin-left: 30px;"></label>
  <table style="margin-left: 50px;">
 <tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 1. 성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명 ( 입금자 이름 ) : </label>
  </td>
  <td><input type="text" id="name">
  </td>
 </tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 2. 시작날짜 ( 첫 입금 / 대여시작 날짜 ) : </label>
  </td>
  <td><input type="text" id="beginday" name="beginday">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 3. 입금 금액   : </label>
  </td>
  <td><input type="text" id="deposit" name="deposit">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 4. 은행 이름   : </label>
  </td>
  <td><input type="text" id="bank" name="bank">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 5. 계좌 번호   : </label>
  </td>
  <td><input type="text" id="banknumber" name="banknumber">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 6. 예금주 ( 통장주인 / 수당받을분 )   : </label>
  </td>
  <td><input type="text" id="accountname" name="accountname">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 7. 기타사항   : </label>
  </td>
  <td><input type="text" id="other" name="other">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 8. 적용 플랜 ( 적용 서비스 )   : </label>
  </td>
  <td><input type="text" id="plan" name="plan">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 9. 소개자   : </label>
  </td>
  <td><input type="text" id="introduce" name="introduce">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 10. 마감 날짜 ( 계약 만기일 )   : </label>
  </td>
  <td><input type="text" name="endday">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 11. 총 지급금액 ( 총 지급금액 )  : </label>
  </td>
  <td><input type="text" id="totalmoney" name="totalmoney">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 12. 총 지급횟수 ( 총 횟수 )  : </label>
  </td>
  <td><input type="text" id="totalnumber" name="totalnumber">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 13. 지급 횟수  : </label>
  </td>
  <td><input type="text" id="givenumber" name="givenumber">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 14. 기본 지급금액 ( 일일 / 주급 ) : </label>
  </td>
  <td><input type="text" id="totalnumber" name="totalnumber">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 15. 지급된 금액 : </label>
  </td>
  <td><input type="text" id="onedaymoney" name="onedaymoney">
  </td>
</tr>
<tr>
  <td>
  <label style="font-weight: bolder; font-size: 15px;"> 16. 남은 상환 금액  : </label>
  </td>
  <td><input type="text" id="balance" name="balance">
  </td>
</tr>
<tr>
  <td style="margin">
  <button>등록</button>
  </td>
  <td><button>취소</button>
  </td>
</tr>
  </table>
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

   <div style="margin-left: 30px; margin-top: 50px; margin-bottom: 20px;">
   <div><label style="background-color: #B5B0AD; width: 800px; height: 2px;"></label>
  <div style="height:200px;">
   <font style="font-weight: bold;">프로그램 공지사항</font><br>
   <font color="#007FFF">그린비 내부 프로그램 입니다. 궁금한점은 개발자에게 말씀해주세요.</font>
   <br>
   <br>
   <font style="font-weight: bolder;">[ ※ 잊지마세요※  ]</font>
   <br>
   <font> 성명과 예금주는 다른 입력란입니다. 통장주인이라고 표시된것을 확인하셔서 전산상 실수 없으시길 바랍니다. </font>
    <br>
   <font> 성명과 예금주는 다른 입력란입니다. 통장주인이라고 표시된것을 확인하셔서 전산상 실수 없으시길 바랍니다. </font>
   <br>
   <br>
   <font style="font-weight: bolder;">[기본 사용방법]</font>
   <br>
   <font> 현재는 배포하는 아이디를 이용하여 관리가능하며</font>
   <br>
   <font> 글쓰기를 이용해 관리가능한 지역의 장부를 갱신 가능합니다.</font>
   <br>
   <br>
    <a href="/contact.jsp" style="color:#007FFF; padding-right:1px;"><b>이용문의 바로가기</b></a>
  </div>
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