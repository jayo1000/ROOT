<%-- <%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CGH's Blog</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" type="text/css" href="/css/login.css">
<style type="text/css">
</style>
</head>
<body>

  <!-- 헤더 부분 -->
  <%@ include file="/include/header.jsp"%>

  <div class="container-fluid text-center">
    <div class="row content">
      <!-- 왼쪽 메뉴 -->
      <%@ include file="/include/sidenav.jsp"%>

      <!-- index 화면 -->
      <div class="col-sm-8 text-left">
        <div class="login">
          <form method="post" action="login.htm">
            <ul class="tab_con">
              <li class="show">
                <dl>
                  <dd>
                    <p>
                      <input type="text" name="id"
                        placeholder="아이디를 입력하세요.">
                    </p>
                    <p>
                      <input type="password" name="passwd"
                        placeholder="비밀번호를 입력하세요.">
                    </p>
                  <dd>
                  <dt>
                    <input type="submit" value="로그인">
                  </dt>
                </dl>
              </li>
            </ul>
          </form>
        </div>
      </div>

      <!-- 광고부분 -->
      <%@ include file="/include/sideads.jsp"%>
    </div>
  </div>

  <!-- footer 부분 -->
  <%@ include file="/include/footer.jsp"%>

</body>
</html>

 --%>