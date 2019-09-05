<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>join</title>
</head>
<style>
body { background-color: #86B404;}
#joinForm {
    border: 1px solid gray;
    background-color: white;
    width : 40%;
    margin: auto;
}
#brandLogo {
	height: 40px;
	position: relative;
	bottom: 10px;
}

</style>
<script>
$(function(){
	$("#googlebtn").click(function(){
		alert("아직 준비되지 않은 기능입니다~~ 쏘리~~");
		window.history.back();
	})
    $("#joinbtn").click(function(){
        if (!$("#name").val()) {
            alert("이름을 입력하세요.");
            $("#name").focus();
            return false;
        }
        if (!$("#email").val()) {
            alert("이메일을 입력하세요.");
            $("#email").focus();
            return false;
        } else if ($("#email").val().indexOf("@") == -1 ) {
            alert("올바른 이메일 형식이 아닙니다.\n" + "ex. olive@google.com" );
            $("#email").focus();
            return false;
        } else if ($("#email").val().indexOf(".com") == -1 &&  $("#email").val().indexOf(".net") == -1) {
            alert("올바른 이메일 형식이 아닙니다.");
            $("#email").focus();
            return false;
        } 
        if ($("#password").val() == "") {
            alert("비밀번호를 입력하세요.");
            $("#password").focus();
            return false;
        } else if (!$("#password").val().match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
            alert("비밀번호는 특수문자[!,@,#,$,%,^,&,*,?,_,~]가 꼭 포함되어야 합니다.");
            $("#password").focus();
            return false;
        } else if ($("#password").val().length <= 7 || $("#password").val().length >= 15){
            alert("비밀번호는 8자리 이상, 14자리 이하로 입력하세요.");
            $("#password").focus();
            return false;
        } else if (!$("#passwordchk").val()) {
            alert("비밀번호 확인을 입력해 주세요.");
            $("#passwordchk").focus();
            return false;
        } else if ($("#password").val() != $("#passwordchk").val()) {
            alert("비밀번호가 동일하지 않습니다.");
            $("#password").focus();
            return false;
        } 
    })

});

</script>
<body>
<header role="banner">
    <nav role="navigation" class="navbar navbar-static-top navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse"> 
                    <span class="icon-bar"></span> 
                    <span class="icon-bar"></span> 
                    <span class="icon-bar"></span> 
                    <span class="icon-bar"></span> 
                </button> 
                <a class="navbar-brand" href="login2.jsp"><img id="brandLogo" src="resources/img/olive_logo.png"></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse"> 
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login2.jsp">로그인</a></li>
                    <li><a href="join2.jsp">회원가입</a></li>
                    <li><a href="#">사용법</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div>
	<form method="POST" id="joinForm" action="">
        <div class="form-group">
		<h2>새 계정 만들기</h2>
        <a href="login.jsp">sign in your account</a>
        </div>
        <div class="form-group">
		<label for="name">Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="e.g. HeeJin Yu">
        </div>
        <div class="form-group">
		<label for="email">Email</label>
		<input type="text" class="form-control" id="email" name="email"
            placeholder="e.g. example@google.com">
        </div> 
        <div class="form-group">
        <label for="password">Password</label>
		<input type="password" class="form-control" id="password" name="password"
            placeholder="e.g. ********"> 
            <input type="password" class="form-control"
			id="passwordchk" name="passwordchk" placeholder="e.g. ********">
        </div>
        <div class="form-group">
        <input type="submit" class="btn btn-default" id="joinbtn" value="Create New Account">
        <button type="reset" class="btn btn-default">다시 입력</button>
        </div>
		
        <button id="googlebtn" class="btn btn-default">sign up with google</button>
	</form>
</div>
</body>
</html>