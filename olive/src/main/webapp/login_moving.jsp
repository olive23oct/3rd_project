<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>login</title>
<link href='https://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>
<link href="resources/css/fullscreenDemo.css" rel="stylesheet"
	type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<style>
.navbar {
	background: transparent;
}
#brandLogo {
	height: 40px;
	position: relative;
	bottom: 10px;
}
.container {
	height: 100%;
	align-content: center;
}
.card {
	position: relative;
	left: 570px;
	height: 370px;
	margin-top: auto;
	margin-bottom: auto;
	width: 400px;
	background-color: rgba(255, 255, 255, 0) !important;
}
.form-control {
  font-size: 14px;
  display: block;
  width: 90%;
  height: 15px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #d9d9d9;
  border: 2px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  
}
.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 98%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 2px solid #263238;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}
input::placeholder {
  color: #D8D8D8;
  font-size: 16px;
}
</style>
<script src="resources/dist/vidbg.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		$('body').vidbg({
			'mp4' : 'resources/video/mp4_video.mp4',
			'webm' : 'resources/video/webm_video.webm',
			'poster' : 'resources/video/fallback.jpg',
		}, {
			// Options
			muted : true,
			loop : true,
			overlay : true,
		});
	});
	$(function() {
		$("#googlebtn").click(function() {
			alert("아직 준비되지 않은 기능입니다~~ 쏘리~~");
			window.history.back(-1);
		})

		$("#joinbtn").click(function() {
			window.location.href = "join.jsp";
		})

		$("#email")
				.keyup(
						function() {
							$("#emailchk").hide;
							if ($("#email").val().indexOf("@") == -1) {
								/*  alert("올바른 이메일 형식이 아닙니다.\n" + "ex. olive@google.com"); */
								$("#emailchk").text(
										"올바른 이메일 형식이 아닙니다.\n"
												+ "ex. olive@google.com");
								$("#emailchk").css("color", "red");
								$("#email").focus();
								return false;
							} else if ($("#email").val().indexOf(".com") == -1
									&& $("#email").val().indexOf(".net") == -1) {
								/* alert("올바른 이메일 형식이 아닙니다."); */
								$("#emailchk").text("올바른 이메일 형식이 아닙니다.");
								$("#emailchk").css("color", "red");
								$("#email").focus();
								return false;
							} else {
								$("#loginbtn").prop("disabled", false);
							}
						})

		$("#loginbtn").click(function() {
			var userEmail = $("#email").val();
			var userPwd = $("#password").val();
			$.ajax("login.do", {
				async : true,
				type : "post",
				data : {
					email : userEmail,
					password : userPwd
				},
				dataType : "text",
				success : function(data) {
					if (data == "success") {
						/* alert("로그인 성공."); */
						$("#pwdchk").hide();

						window.location.href = "getBoardList.do";
						/* window.location.href= "join.jsp"; */
					} else if (data == "wrongPwd") {
						$("#pwdchk").html("비밀번호를 확인해주세요");
						$("#pwdchk").css("color", "red");
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("아이디를 확인해주세요");
				}
			});
		})
	});
</script>
<body>
	<div class="block-container">
		<div class="block">
			<h1>Olive Login</h1>
		</div>
		<div class="container">
			<div class="d-flex justify-content-center h-100">
				<div class="card">
					<form name="loginform" method="POST" action="login.do">
						<input type class="form-control" id="email" name="email"
							placeholder="Your email">
						<div id="emailchk"></div>
						<div class="form-group">
							<input
								type="password" class="form-control" id="password"
								name="password" placeholder="Your password">
							<div id="pwdchk"></div>
						</div>
						<div class="form-group">
							<input type="button" class="submit" id="loginbtn"
								disabled="disabled" value="로그인">
						</div>
					</form>
					<button class="submit" id="joinbtn">회원가입</button>
					<div class="form-group">
						<button id="googlebtn" class="btn btn-default">구글로 로그인하기</button>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


</html>