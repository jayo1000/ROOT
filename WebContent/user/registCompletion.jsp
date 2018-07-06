<%@page import="kr.or.greenb.user.domain.Users"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../js/registcomplete.js"></script>
<script type="text/javascript" src="../js/registbeck.js"></script>
<style>
body {
        background-color: #444;
        background: url(http://s18.postimg.org/l7yq0ir3t/pick8_1.jpg);
        
    }
#panel {
    /* margin-bottom: 20px; */
    background-color: rgba(255, 255, 255, 0.75);
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    }
.user-row {
    margin-bottom: 14px;
}

.user-row:last-child {
    margin-bottom: 0;
}

.dropdown-user {
    margin: 13px 0;
    padding: 5px;
    height: 100%;
}

.dropdown-user:hover {
    cursor: pointer;
}

.table-user-information > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information > tbody > tr:first-child {
    border-top: 0;
}


.table-user-information > tbody > tr > td {
    border-top: 0;
}
.toppad
{margin-top:20px;
}
#top{
    margin-bottom: 20px;
    background-color: rgba(255, 255, 255, 0.75);
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}
/* #top1{
padding-left:  auto;
} */

 class="jumbotron"
</style>
<body>
<div class="container" id="panel">
<jsp:useBean id="user" class="kr.or.greenb.user.domain.Users" scope="request"/>
      <div class="form-group">
       <div class="control-label col-sm-3"> <img alt="User Pic" src="http://mblogthumb4.phinf.naver.net/20140801_259/jabakorea1_1406818911239qIFIs_GIF/welcome006_dongdj7.gif?type=w2" class="img-circle img-responsive" width="500px" > </div>
       <div class="control-label col-sm-3">
        <h3><A data-toggle="tooltip" data-placement="top" title="회원정보를 수정합니다.">Edit Profile(정보 수정)</A></h3>
       <button class="btn btn-default" id="cheak" type="button" onclick="location.href='/index.htm'">
		<span class="glyphicon glyphicon-search"></span>&nbsp;Edit Profile(정보 수정)</button>
		</div>
		 <div class="control-label col-sm-3">
		 
        <h3><A data-toggle="tooltip" data-placement="top" title="로그아웃하여 메인으로 돌아갑니다.">Logout(로그아웃)</A></h3>
        <button class="btn btn-default" id="cheak" type="button" onclick="location.href='/index.htm'">
		<span class="glyphicon glyphicon-search"></span>&nbsp;Logout(로그아웃)</button>
		</div>
       <br>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" id="top" align="center" class="jumbotron" >
            <h3>Membership has been completed!</h3>
             <div align="center">
         <h3>회원가입이 완료되었습니다!</h3>
         </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>UserID(아이디):</td>
                        <td>${user.id }</td>
                      </tr>
                      <tr>
                        <td>UserName(이름):</td>
                        <td>${user.name }</td>
                      </tr>
                      <tr>
                        <td>Job(직업)</td>
                        <td>${user.job }</td>
                      </tr>
                       <tr>
                        <tr>
                        <td>Gender(성별)</td>
                        <td>Mail</td>
                      </tr>          
                         <tr>
                        <tr>
                        <td>Home Address(주소)</td>
                        <td>Metro Manila,Philippines</td>
                      </tr>
                      <tr>
                        <td>Email(이메일)</td>
                        <td><a href="mailto:info@support.com">${user.email }</a></td>
                      </tr>
                        <td>Phone Number(전화번호)</td>
                        <td>${user.email }-<jsp:getProperty property="phonenumber2" name="user"/>-<jsp:getProperty property="phonenumber3" name="user"/>(Mobile)</td>                 
                      </tr>    
                    </tbody>
                  </table>          
                  <a href="/index.htm" class="btn btn-primary">Back Home(홈으로)</a>
                  <a href="/article/list.htm?page=1" class="btn btn-primary">To go to the board(게시판)</a>
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>