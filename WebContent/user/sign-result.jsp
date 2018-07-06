<%-- <%@ page import="kr.or.kosta.user.domain.Members"%> --%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	
	<meta charset="utf-8">
	<meta name="description" content="Miminium Admin Template v.1">
	<meta name="author" content="Isna Nur Azis">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Miminium</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/mediaelementplayer.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
  <link href="asset/css/style.css" rel="stylesheet">
  <link href="css/sign-result.css" rel="stylesheet">
  <!-- end: Css -->

  <link rel="shortcut icon" href="asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body id="mimin" class="dashboard topnav">
      <!-- start: Header -->
        <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
                <a href="index.html" class="navbar-brand"> 
                <b>L.Y.M 임영묵의 GoldBee-실습용 홈페이지</b>
                </a>

              <ul class="nav navbar-nav search-nav">
                  <li class="active"><a href="#">Menu Item(메뉴)</a></li>
                  <li class="dropdown menu-large">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 임시 사진함<b class="caret"></b> </a>
                    <ul class="dropdown-menu megamenu row">
                      <li>
                       
                        <div class="col-sm-6 col-md-3 sub-megamenu">
                          <div class="col-md-12" style="padding-top:10px;">
                              <h4 style="margin-left:10px;"><b>Adipisicing</b></h4>
                          </div>
                          <div class="col-sm-6">
                            <ul class="nav">
                              <li><a href="#"><span class="fa fa-angle-right"></span> Aliqua</a></li>
                              <li><a href="#"><span class="fa fa-angle-right"></span> Dolor</a></li>
                              <li><a href="#"><span class="fa fa-angle-right"></span> Eiusmod</a></li>
                              <li><a href="#"><span class="fa fa-angle-right"></span> Adipisicing</a></li>
                            </ul>
                          </div>
                          <div class="col-sm-6">
                            <ul class="nav">
                              <li><a href="#"><span class="fa fa-angle-right"></span> Aliqua</a></li>
                              <li><a href="#"><span class="fa fa-angle-right"></span> Dolor</a></li>
                              <li><a href="#"><span class="fa fa-angle-right"></span> Eiusmod</a></li>
                              <li><a href="#"><span class="fa fa-angle-right"></span> Adipisicing</a></li>
                            </ul>
                          </div>
                          <div class="col-md-12" style="padding:30px;">
                              <b>Get update via emails</b>
                              <input type="text" class="form-control"/>
                              <input type="button" class="btn btn-danger" value="Subscribe"/>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-9 sub-megamenu">
                          <div class="col-md-6">
                            
                                    <h4><b>New product</b></h4>
                                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                      <ol class="carousel-indicators">
                                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                      </ol>
                                      <div class="carousel-inner">
                                        <div class="item active">
                                          <img class="img-responsive" data-src="holder.js/900x500/auto/#777:#555/text:First slide" alt="First slide" src="asset/img/bg1.jpg">
                                        </div>
                                        <div class="item">
                                          <img class="img-responsive" data-src="holder.js/900x500/auto/#666:#444/text:Second slide" alt="Second slide" src="asset/img/bg1.jpg">
                                        </div>
                                        <div class="item">
                                          <img class="img-responsive" data-src="holder.js/900x500/auto/#555:#333/text:Third slide" alt="Third slide" src="asset/img/bg1.jpg">
                                        </div>
                                      </div>
                                      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                      </a>
                                      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                      </a>
                                    </div>
                                    <p style="padding-top:10px;">Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. </p>
                                    <div style="padding-top:5px;">
                                      <button class="btn btn-primary">Buy</button> 
                                      <button class="btn">Add to Wishlist</button>
                                    </div> 
                          </div>
                          <div class="col-md-6">
                            <div class="col-md-6 hidden-sm" style="padding:5px;">
                              <img src="holder.js/200x200" class="img-responsive" />
                            </div>
                            <div class="col-md-6 hidden-sm" style="padding:5px;">
                              <img src="holder.js/200x200" class="img-responsive" />
                            </div>
                            <div class="col-md-6 hidden-sm" style="padding:5px;">
                              <img src="holder.js/200x200" class="img-responsive" />
                            </div>
                            <div class="col-md-6 hidden-sm" style="padding:5px;">
                              <img src="holder.js/200x200" class="img-responsive" />
                            </div>
                          </div>
                        </div>
                      </li>
                    </ul>
                </li>
                <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">회원가입시 추가사항 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">:: 회원가입 약관</a></li>
                  <li><a href="#">:: 회원탈퇴 방법</a></li>
                  <li><a href="#">:: 사진 추가 방법</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">:: 기타 문의사항</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">:: 1:1 상담</a></li>
                </ul>
              </li>
              </ul>

              <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span>관리자페이지</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown">
                     <li><a href="#"><span class="fa fa-user"></span> My Profile</a></li>
                     <li><a href="#"><span class="fa fa-calendar"></span> My Calendar</a></li>
                     <li role="separator" class="divider"></li>
                     <li class="more">
                      <ul>
                        <li><a href=""><span class="fa fa-cogs"></span></a></li>
                        <li><a href=""><span class="fa fa-lock"></span></a></li>
                        <li><a href=""><span class="fa fa-power-off "></span></a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      <!-- end: Header -->

      <!-- start: Content -->
     <div class="container">
<div class="row info" style="text-align:center;">
    <div class="col-xs-12 alert alert-info">
        The skills meter from <a class="alert-link" href="http://bootsnipp.com/snippets/featured/progress-bar-meter">here</a> is used in this design. 
        Feel free to remove this div from the design.
    </div>
</div>

<div class="resume">
    <header class="page-header">
    <h1 class="page-title"><i class="fa fa-spinner" style="margin-right: 10px;"></i>회원가입을 축하드립니다!</h1>
    <small> <i class="fa fa-clock-o"></i> Last Updated on: <time>munday, July 03, 2017</time></small>
  </header>
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
    <div class="panel panel-default">
      <div class="panel-heading resume-heading">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-xs-12 col-sm-4">
              <figure>
                <img class="img-circle img-responsive" alt="" src="user/developer2.png">
              </figure>
              
              <div class="row">
                <div class="col-xs-12 social-btns">
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-google">
                        <i class="fa fa-google"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-facebook">
                        <i class="fa fa-facebook"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-twitter">
                        <i class="fa fa-twitter"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-linkedin">
                        <i class="fa fa-linkedin"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-github">
                        <i class="fa fa-github"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-stackoverflow">
                        <i class="fa fa-stack-overflow"></i> </a>
                    </div>
                  
                </div>
              </div>
              
            </div>
<%-- <jsp:useBean id="member" class="kr.or.kosta.user.domain.Members" scope="request" />                [ 임시로 잠궈놓음. ]--%>
            <div class="col-xs-12 col-sm-8">
              <ul class="list-group">
                <li class="list-group-item">ID :: ${member.id}</li>
                <li class="list-group-item">NAME :: ${member.name}</li>
                <li class="list-group-item">Software Engineer </li>
                <li class="list-group-item"><i class="fa fa-phone"></i> ${member.phonenumber1}-${member.phonenumber2}-${member.phonenumber3} </li>
                <li class="list-group-item"><i class="fa fa-envelope"></i> ${member.email}</li>
              </ul>
            </div>
            <button class="btn ripple btn-round btn-3d btn-default" style="width: 150px; height: 30px; margin-left: 15px; margin-bottom: 20px; font-family: fantasy;">내 정보 수정</button>
            <button class="btn ripple btn-round btn-3d btn-default" onclick="location.href='index.html'" style="width: 180px; height: 30px; margin-left: 20px; margin-bottom: 20px; font-family: fantasy;"> 홈페이지로 돌아가기 </button>
          </div>
        </div>
      </div>
<!--       <div class="bs-callout bs-callout-danger">
        <h4>Summary</h4>
        <p>
         Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur. Quis verear mel ne. Munere vituperata vis cu, 
         te pri duis timeam scaevola, nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.
        </p>
        <p>
            Odio recteque expetenda eum ea, cu atqui maiestatis cum. Te eum nibh laoreet, case nostrud nusquam an vis. 
            Clita debitis apeirian et sit, integre iudicabit elaboraret duo ex. Nihil causae adipisci id eos.

        </p>
      </div> -->
      <div class="bs-callout bs-callout-danger">
        <h4>연구 논문</h4>
        <p>
          	소프트웨어 엔지니어링, 머신 학습, 이미지 처리, 컴퓨터 비전, 인공 신경망, 데이터 과학, 진화론적 알고리즘.
        </p>
      </div>

      <div class="bs-callout bs-callout-danger">
        <h4>프로젝트 및 개발 경험</h4>
        <ul class="list-group">
          <a class="list-group-item inactive-link" href="#">
            <h4 class="list-group-item-heading">Software Engineer at LinkedIn</h4>
            <p class="list-group-item-text">
              Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur. 
              Quis verear mel ne. Munere vituperata vis cu, te pri duis timeam scaevola, 
              nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.
                </p><ul>
                  <li>
                 Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur. 
              Quis verear mel ne. Munere vituperata vis cu, te pri duis timeam scaevola, 
              nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.
                  </li>
                  <li>
                 Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur. 
              Quis verear mel ne. Munere vituperata vis cu, te pri duis timeam scaevola, 
              nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.
                  </li>
                </ul>
            <p></p>
          </a>
        </ul>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4>키포인트 전문지식</h4>
        <ul class="list-group">
          <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc </li>
          <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
<!--      <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
          <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
          <li class="list-group-item">Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
          <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li> -->
        </ul>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4>사용가능 언어와 플래폼 스킬</h4>
        <ul class="list-group">
          <a class="list-group-item inactive-link" href="#">
            

            <div class="progress">
              <div data-placement="top" style="width: 80%;" 
              aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-success">
                <span class="sr-only">80%</span>
                <span class="progress-type">Java/ JavaEE/ Spring Framework </span>
              </div>
            </div>
            <div class="progress">
              <div data-placement="top" style="width: 70%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="1" role="progressbar" class="progress-bar progress-bar-success">
                <span class="sr-only">70%</span>
                <span class="progress-type">PHP/ Lamp Stack</span>
              </div>
            </div>
            <div class="progress">
              <div data-placement="top" style="width: 70%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="1" role="progressbar" class="progress-bar progress-bar-success">
                <span class="sr-only">70%</span>
                <span class="progress-type">JavaScript/ NodeJS/ MEAN stack </span>
              </div>
            </div>
            <div class="progress">
              <div data-placement="top" style="width: 65%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="1" role="progressbar" class="progress-bar progress-bar-warning">
                <span class="sr-only">65%</span>
                <span class="progress-type">Python/ Numpy/ Scipy</span>
              </div>
            </div>
            <div class="progress">
              <div data-placement="top" style="width: 60%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning">
                <span class="sr-only">60%</span>
                <span class="progress-type">C</span>
              </div>
            </div>
            <div class="progress">
              <div data-placement="top" style="width: 50%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar" class="progress-bar progress-bar-warning">
                <span class="sr-only">50%</span>
                <span class="progress-type">C++</span>
              </div>
            </div>
            <div class="progress">
              <div data-placement="top" style="width: 10%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar" class="progress-bar progress-bar-danger">
                <span class="sr-only">10%</span>
                <span class="progress-type">Go</span>
              </div>
            </div>

            <div class="progress-meter">
              <div style="width: 25%;" class="meter meter-left"><span class="meter-text">I suck</span></div>
              <div style="width: 25%;" class="meter meter-left"><span class="meter-text">I know little</span></div>
              <div style="width: 30%;" class="meter meter-right"><span class="meter-text">I'm a guru</span></div>
              <div style="width: 20%;" class="meter meter-right"><span class="meter-text">I''m good</span></div>
            </div>

          </a>

        </ul>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4>교육사항</h4>
        <table class="table table-striped table-responsive ">
          <thead>
            <tr><th>Degree</th>
            <th>Graduation Year</th>
            <th>CGPA</th>
          </tr></thead>
          <tbody>
            <tr>
              <td>한국소프트웨어 개발진흥협회(KOSTA)</td>
              <td>2016</td>
              <td> 12.30 </td>
            </tr>
            <tr>
              <td>골드비(GOLD BEE)</td>
              <td>2017</td>
              <td> 06.25 </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

  </div>
</div>
    
</div>

</div>
      <!-- end: content -->


      <!-- start: Mobile -->
      <div id="mimin-mobile" class="reverse">
        <div class="mimin-mobile-menu-list">
            <div class="col-md-12 sub-mimin-mobile-menu-list animated fadeInLeft">
                <ul class="nav nav-list">
                    <li class="active ripple">
                      <a class="tree-toggle nav-header">
                        <span class="fa-home fa"></span>주 메뉴
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
<script type="text/javascript">
  $(document).ready(function(){

  });
</script>
<!-- end: Javascript -->
</body>
</html>