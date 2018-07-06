<%-- <%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" type="text/css" href="/css/css1.css">
<script type="text/javascript" src="/js/Validator.js"></script>
<script type="text/javascript" src="/js/ajax.js"></script>

<script type="text/javascript">
	window.onload = function() {
		// 아이디 중복체크
		idDuplicationCheck();
	}
	
	// 아이디 중복 체크
	function idDuplicationCheck(){
		var idInput = document.getElementById("id_info");
		idInput.onkeyup = function(){
			//var inputId = idInput.value;
			var inputId = this.value;
			
			// 서버에 아이디 전송은 6자 이상 입력 시
			if(inputId.length >= 6 && inputId.length <= 8){
				ajax({
					method : "get",
					url : "checkid.htm",
					param : "id="+inputId,
					callback : function(xhr){
						//alert(xhr.responseText);
						var message = null;
						if(eval(xhr.responseText)){
							message = "사용 가능한 아이디입니다.";
							setMessage(message, "blue");
						}else{
							message = "사용중인 아이디입니다.";
							setMessage(message, "red");
						}
						
					}
				});
				
			}else{
				setMessage("아이디는 6~8자 이어야 합니다.");
			}
		}
		
	}
	
	function setMessage(){
		var message = arguments[0];
		var color = arguments[1];
		var messgeBox = document.getElementById("note_info");
		if(color){
			messgeBox.style.color = color;	
		}
		if(messgeBox){
			messgeBox.innerHTML = message;
		}
	}	
</script>
</head>
<body>

  <!-- 헤더 부분 -->
  <jsp:include page="/include/header.jsp" />

  <div class="container-fluid text-center">
    <div class="row content">
      <!-- 왼쪽 메뉴 -->
      <jsp:include page="/include/sidenav.jsp" />

      <!-- index 화면 -->
      <div class="col-sm-8 text-left">
        <h2>회원 가입</h2>
        <form name="registForm" action="regist.htm" method="post">
          <ul>
            <li class="info"><label class="title_info"
              for="id_info">아이디</label> <input type="text" name="id"
              maxlength="8" size="20" id="id_info" required autofocus placeholder="(6~8자 영문/숫자 가능)"><span class="note_info" id="note_info"></span> <input
              type="hidden" name="idCheckResult" value="0"></li>

            <li class="info"><label class="title_info"
              for="passwd_info">비밀번호</label> <input type="password"
              name="passwd" maxlength="20" id="passwd_info" size="20"
              required> <label class="title_info"
              for="repasswd_info">비밀번호 확인</label> <input type="password"
              name="repasswd" maxlength="20" id="repasswd_info"
              size="20" required></li>

            <li class="info"><label class="title_info"
              for="name_info">이름</label> <input type="text" name="name"
              size="15" maxlength="8" id="name_info" required></li>

            <li class="info"><label class="title_info"
              for="email_info">이메일</label> <input type="email"
              name="email" size="25" maxlength="20" id="email_info"
              required></li>

            <li class="info"><label class="title_info"
              for="phonenumber_info">전화번호</label> <select
              name="phonenumber1" id="phonenumber_info">
                <option>010</option>
                <option>011</option>
                <option>016</option>
                <option>018</option>
                <option>019</option>
            </select>
              <div class="divi">-</div> <input type="text"
              name="phonenumber2" size="15" maxlength="8">
              <div class="divi">-</div> <input type="text"
              name="phonenumber3" size="15" maxlength="8"></li>

            <li class="info"><label class="title_info"
              for="job_info">직업</label> <select name="job" id="job_info">
                <option>학생</option>
                <option>주부</option>
                <option>직장인</option>
                <option>부자</option>
                <option>거지</option>
            </select></li>

            <li class="info">
              <p>
                <label class="title_info" for="profile_info">가입인사</label>
                <textarea name="profile" id="profile_info"></textarea>
              </p>
            </li>
          </ul>

          <div class="form_botton">
            <input class="button btngreen" type="submit" value="가입하기">
            <input class="button btnred" type="reset" value="다시입력">
          </div>
        </form>
      </div>
      <!-- 광고부분 -->
      <jsp:include page="/include/sideads.jsp" />
    </div>
  </div>

  <!-- footer 부분 -->
  <jsp:include page="/include/footer.jsp" />

</body>
</html>



 --%>