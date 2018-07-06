<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>L.Y.M의 로그인</title>
<link
	href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css'
	rel='stylesheet'>
<style>
body {
	background:
		url(http://cfs13.tistory.com/upload_control/download.blog?fhandle=YmxvZzMwMDUyNkBmczEzLnRpc3RvcnkuY29tOi9hdHRhY2gvMC8wNjAwMDAwMDAwNDguanBn)
		no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.panel-default {
	opacity: 0.9;
	margin-top: 30px;
}

.form-group.last {
	margin-bottom: 0px;
}
</style>
<script type='text/javascript'
	src='//code.jquery.com/jquery-1.10.2.min.js'></script>
<script type='text/javascript'
	src='//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js'></script>
<script type="text/javascript">

function closefunction() {
	var id = inputID.value;
	var passwd = inputPassword.value;

	var form = opener.document.getElementById("loginForm");
	form.id.value = id;
	form.passwd.value = passwd;

	window.self.close();
	
	form.submit();
}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-7">
				<div class="panel panel-default">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-lock"></span> Login
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form" action="/user/login.htm"
							id="loginForm" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">
									User ID</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="inputID" name="id"
										placeholder="아이디를 입력해주세요" required>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">
									Password</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="inputPassword"
										name="passwd" placeholder="비밀번호를 입력해주세요" required>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-9">
									<div class="checkbox">
										<label> <input type="checkbox" /> 아이디 저장하기
										</label>
									</div>
								</div>
							</div>
							<div class="form-group last" align="right">
								<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-success btn-sm"
										onclick="closefunction()">Sign in</button>
									<button type="reset" class="btn btn-default btn-sm">
										Reset</button>
								</div>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						Not Registred? <a href="http://www.jquery2dotnet.com">Register
							here</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>