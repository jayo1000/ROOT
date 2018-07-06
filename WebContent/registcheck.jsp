<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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

</body>
</html>