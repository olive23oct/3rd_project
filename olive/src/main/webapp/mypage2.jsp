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
<title>mypage</title>
<style>
body {
	position: relative;
	background-color: #f4f5f7;
}

.wrapper {
	margin-top: 5em;
	margin-left: 15em;
}

body, button, html, input, select, textarea {
	color: #172b4d; /* text 색깔 */
	font-size: 14px; /* 글자 크기 */
	line-height: 20px; /* 위아래 공간크기? */
	font_weight: bold; /* 글자굵기- css 안먹음 */
}

form {
	display: block;
	margin-top: 0em;
}

.iframe-input, input[type=email], input[type=password], input[type=text]
	{
	width: 250px;
	padding-left: -10px;
}

.button, .iframe-input, button, input:not ([type=file] ), textarea {
	background-color: white; /* button,input -> 배경색 */
	border: none; /* 잘 모르겠음 */
	box-shadow: inset 0 0 0 2px #dfe1e6; /* text box 테두리 */
	color: gray; /* button, input -> 글씨색깔 */
	box-sizing: border-box;
	-webkit-appearance: none;
	border-radius: 3px; /* button, input 테두리 각도 */
	display: block;
	line-height: 20px; /* button, input 높이 */
	margin-bottom: 15px; /* 위아래 공간크기 */
	padding: 8px 12px; /* 잘 모르겠음 */
	transition-property: background-color, border-color, box-shadow;
	transition-duration: 85ms;
	transition-timing-function: ease;
	border
}

input:focus {
	outline: 2px solid gray;
} /* 클릭했을 때 text 아웃라인 색깔 */
a {
	color: #172b4d;
}

input[type=submit] {
	background-color: #5aac44;
	box-shadow: none;
	border: none;
	color: #fff;
}

.chkMsg {
	margin-top: 0px;
	font-size: 10px; /* 글자 크기 */
}

label {
	cursor: default;
	color: #6b778c;
	font-size: 15px;
	font-weight: bold;
}

#LoadImg {
	width: 200px;
	height: 200px;
	border-radius: 100px;
	border: 5px solid gray;
}
</style>
<script>
$().ready(function(){
   //유저네임 유효성 체크
    $("#name").keyup(function(){
       $("#nameMsg").html("");
       $("#name").css("box-shadow","inset 0 0 0 2px #dfe1e6");
        if($("#name").val().match(/([0-9]|[!,[,@,#,$,%,^,&,*,?,_,~,;,<,>,.,/,',"])/)) {
          $("#nameMsg").html("올바른 이름형식이 아닙니다.");
          $("#nameMsg").css("color","red");
          $("#name").css("box-shadow","inset 0 0 0 2px #FFA7A7");
       }
    });
    //비밀번호 유효성 체크
    $("#password").keyup(function(){
        $("#pwMsg").html("");
        $("#password").css("box-shadow","inset 0 0 0 2px #dfe1e6");
        //비밀번호 8자리 이상
        if($("#password").val().length < 8){
          $("#pwMsg").html("비밀번호는 8~16자리까지 사용가능합니다.");
          $("#pwMsg").css("color","red");
          $("#password").css("box-shadow","inset 0 0 0 2px #FFA7A7");
       }
        //비밀번호 특수문자
        if(!$("#password").val().match(/([!,@,#,$,%,^,&,*,?,_,~])/)){
          $("#pwMsg").html("특수문자 포함해야합니다.");
          $("#pwMsg").css("color","red");
          $("#password").css("box-shadow","inset 0 0 0 2px #FFA7A7");
       }
    });
    //비밀번호 확인 유효성 체크
    $("#passwordchk").keyup(function(){
        if($("#password").val() == $("#passwordchk").val()){
            $("#pwChkMsg").html("");
            $("#passwordchk").css("box-shadow","inset 0 0 0 2px #FFA7A7");
        }else{
            $("#pwChkMsg").html("암호가 다릅니다.");
            $("#pwChkMsg").css("color","red");
            $("#passwordchk").css("box-shadow","inset 0 0 0 2px #FFA7A7");
        }
    });
});
function LoadImg(value){
   if(value.files && value.files[0]){
      var reader = new FileReader();
      reader.onload = function (e){
         $('#LoadImg').attr('src', e.target.result);
      }
      reader.readAsDataURL(value.files[0]);
   }
}
</script>
</head>
<body>
	<jsp:include page="topmenu.jsp" />
	<form enctype="multipart/form-data" action="updateUser.do"
		method="post">
		<div class="container show-grid">
			<div class="wrapper">
				<div class="col-md-3">

					<input type="file" name='file1' id="imgAttach"
						style='display: none;' onchange="LoadImg(this);">
					<!-- <input type='text' name='file2' id='file2'> -->
					<img id="LoadImg" src='/webapp/upload/${user.image}'
						onclick='document.all.file1.click();'>
					<%-- <img id="LoadImg" src='resources/img/${} }' border='0' onclick='document.all.file1.click();' >  --%>
				</div>
				<div class="col-md-9">
					<div class="wrapper_form">


						<!-- <img  id="LoadImg"> -->
						<div class="wrapper_image">
							<!-- <a class="image" href="#"> -->
							<!--프로필사진(파일업드로)-->
							<!-- <input type="file" id="imgAttach" name="imgAttach" onchange="LoadImg(this);">
            <label class="inital" for="imgAttach">JH</label>지금당장 필요한 기능은아님
            -->

						</div>
						<label>이메일</label> <input type="text" name="email"
							value="${user.email}" readonly="readonly"> 
						<label>이름</label>
						<input type="text" name="name" id="name" value="${user.name}"
							maxlength="100">
						<div class="chkMsg" id="nameMsg"></div>
						<!-- 이름 체크문구 나오는곳-->
						<label>비밀번호</label> <input type="password" name="password"
							id="password" maxlength="14">
						<div class="chkMsg" id="pwMsg"></div>
						<label>비밀번호 확인</label> <input type="password" name="passwordchk"
							id="passwordchk" maxlength="14">
						<div class="chkMsg" id="pwChkMsg"></div>
						<!-- 비밀번호 체크문구 나오는곳-->
						<label> 자기소개 <span class="quiet">(optional)</span>
						</label> <input type="hidden" name="user_id" value="${user.user_id}">
						<textarea name="bio" dir="auto" maxlenth="16384"></textarea>
						<input type="submit" value="수정"> <input type="button"
							value="취소">

					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>