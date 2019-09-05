<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>home</title>
</head>
<style>
body {
	background-color: #f8f8f8;
}

#brandLogo {
	height: 40px;
	position: relative;
	bottom: 10px;
	margin-left: 200px;
}

.navbar {
	/*    opacity: 0.7;
   filter: alpha(opacity = 50); */
	background: #6F777B;
	color: #fff;
	font-size: 18px;
	font-weight: 100;
	font-family: "Roboto", sans-serif;
	height: 55px;
	top: 0;
	right: 0;
	width: 100% !important;
	left: 0;
	z-index: 20;
}
/* .navbar :not(.navbar-header){
   opacity: 0.7;
   filter: alpha(opacity = 50);
} */
.navbar .btn {
	background-color: transparent;
	opacity: 0.5;
	filter: alpha(opacity = 50);
}

#navbar-right {
	margin-right: 5px;
}

#mypage {
	font-size: 14px;
	font-weight: 700;
	background-color: #e4f0f6;
	color: #0079bf;
	border-radius: 4px;
}

#recentlyViewed {
	display: inline-block;
	line-height: 24px;
	margin: 4px 0 0;
	font-size: 16px;
	font-weight: 700;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

ol, ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

h3 {
	display: block;
	font-size: 1.17em;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}
/* div {
	display: block;
} */
.background-grid {
	height: 96px;
	margin-left: 8px;
	width: 100px;
}

.background-grid {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	list-style: none;
	margin: 0;
}

.background-grid-trigger:hover {
	opacity: 0.7;
	filter: alpha(opacity = 50);
	background-color: #fff;
	background-position: 50%;
	background-size: cover;
	box-shadow: none;
}

.background-grid-trigger {
	align-items: center;
	border-radius: 3px;
	display: flex;
	width: 28px;
	height: 28px;
	justify-content: center;
	margin: 0;
	min-height: 0;
	padding: 0;
	position: relative;
	line-height: 0;
	width: 100%;
	cursor: pointer;
	color: #fff;
	font-weight: bold;
}

.button, button, input[type=button], input[type=submit] {
	background-color: rgba(9, 30, 66, .04);
	box-shadow: none;
	border: none;
	cursor: pointer;
	display: inline-block;
	font-weight: 400;
	line-height: 20px;
	margin: 8px 4px 0 0;
	padding: 6px 12px;
	text-align: center;
}

.boards-page-list {
	display: flex;
	flex-wrap: wrap;
}

.boards-page-list-item {
	width: 23.5%;
	padding: 0;
	margin: 0 2% 8px 0;
	-webkit-transform: translate(0);
	transform: translate(0);
}

.board-tile {
	border-radius: 3px;
	display: block;
}

#checkIcon {
	color: white;
}

.boards-page-list-item {
	width: 180px;
	height: 96px;
	/* background-color: #97a0af; */
	background-size: cover;
	background-position: 50%;
	color: #fff;
	line-height: 20px;
	padding: 8px;
	position: relative;
	text-decoration: none;
	border-radius: 3px;
}
/* .board-title-tile{
	width: 180px;
	height: 96px;
} */
.board-tile-details-name {
	flex: 0 0 auto;
	font-size: 16px;
	font-weight: 700;
	display: inline-block;
	overflow: hidden;
	max-height: 60px;
	width: 100%;
	word-wrap: break-word;
	color: #fff;
	padding: 8px;
	position: relative;
	text-decoration: none;
}

.board-title-tile {
	box-shadow: none;
	border: none;
	color: #172b4d;
	display: table-cell;
	height: 80px;
	font-weight: 400;
	text-align: center;
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

.iframe-input, input:not ([type=file] ), textarea {
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
}

input:focus {
	outline: 2px solid gray;
} /* 클릭했을 때 text 아웃라인 색깔 */
textarea:focus {
	outline: 2px solid gray;
} /* 클릭했을 때 text 아웃라인 색깔 */
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
$(document).ready(function(){

	$(".background-grid-trigger").click(function(e){
		e.preventDefault();
 		$(this).text("V");
		if ($(this).text().lenght != 0){
			$(".background-grid-trigger").not(this).attr("disabled", "disabled");
			$(this).click(function(){
				$(this).text("");
				$(".background-grid-trigger").not(this).removeAttr("disabled");
			});
		} 
		
		var color = $(this).css("background-color");
		console.log(color);

		// 선택한 보드배경색을 보드생성 모달의 히든값으로 넘김
		var hidden = $(this).parent().parent().parent().siblings(".form-group").children("#boardColor");
		hidden.val(color);
		/* $(".background-grid-trigger").not(this).attr("disabled", "disabled"); */
	});

	
	// 보드제목을 입력하면 보드생성버튼 활성화
	$("#boardTitle").keyup(function(){
		if($(this).val().trim() != 0) {
			$("#submitButton").attr("disabled", false);
		}
	});
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

}); //끝
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
<body>
	<header role="banner">
		<nav role="navigation" class="navbar navbar-static-top">
			<div class="navbar container">
				<div class="navbar-header">
					<form class="navbar-form navbar-left" role="search">
						<button type="button" class="btn" aria-label="Left Align"
							onclick="location.href='main_board.jsp'">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</button>
						<button type="submit" class="btn">Board</button>
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-default">
										<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
									</button>
								</span>
							</div>
						</div>

					</form>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="main_board.jsp"
						style="padding-left: 82px;"><img id="brandLogo"
						src="resources/img/olive_logo.png"></a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right" style="margin-top: 8px"
						id="navbar-right">
						<button type="button" class="btn btn-default"
							aria-label="Left Align" data-toggle="modal"
							data-target=".createSome">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						</button>
						<button type="button" class="btn btn-default"
							aria-label="Left Align">
							<span class="glyphicon glyphicon-exclamation-sign"
								aria-hidden="true"></span>
						</button>
						<button type="button" class="btn btn-default"
							aria-label="Left Align">
							<span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
						</button>
						<button type="button" class="btn btn-default"
							aria-label="Left Align" data-toggle="modal"
							data-target=".userProfile">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						</button>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<ul class="nav nav-pills nav-stacked">
					<li id="boards"><a href="getBoardList.do">Boards</a></li>
					<li><a>Home</a></li>
					<br>
					<li id="mypage" id="#mypage"><a>MyPage</a></li>
				</ul>
			</div>
			<div class="col-md-9">
				<div class="userInfo-update">
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
											<!--프로필사진(파일업로드)-->
											<!-- <input type="file" id="imgAttach" name="imgAttach" onchange="LoadImg(this);">
            <label class="inital" for="imgAttach">JH</label>지금당장 필요한 기능은아님 -->
										</div>
										<label>이메일</label><input type="text" name="email"
											value="${user.email}" readonly="readonly"><br>
											 <label>이름</label>
										<input type="text" name="name" id="name" value="${user.name}"
											maxlength="100">
										<div class="chkMsg" id="nameMsg"></div>
										<!-- 이름 체크문구 나오는곳-->
										<label>비밀번호</label> <input type="password" name="password"
											id="password" maxlength="14">
										<div class="chkMsg" id="pwMsg"></div>
										<label>비밀번호 확인</label> <input type="password"
											name="passwordchk" id="passwordchk" maxlength="14">
										<div class="chkMsg" id="pwChkMsg"></div>
										<!-- 비밀번호 체크문구 나오는곳-->
										<label> 자기소개 <span class="quiet">(optional)</span>
										</label> <input type="hidden" name="user_id" value="${user.user_id}">
										<textarea name="bio" dir="auto" maxlenth="16384"></textarea><br>
										<input type="submit" value="수정">
										<input type="button" value="취소">

									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 새보드만들기 모달 -->
		<div class="modal fade createBoard" tabindex="-1" role="dialog"
			aria-labelledby="mySmallModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4>새 보드 만들기</h4>
					</div>
					<div class="modal-body">
						<form method="post" id="createBoardForm" action="insertBoard.do">
							<div class="form-group" style="float: letf">
								<input type="text" class="form-control" name="title"
									id="boardTitle" placeholder="새 보드 이름" autocomplete="off">
								<input type="hidden" id="boardColor" name="color" value="">
							</div>
							<div class="color-list" style="display: inline-block;">
								<ul class="background-grid" style="width: 100px; height: 96px;">
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(0, 121, 191);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(210, 144, 52);">

										</button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(81, 152, 57);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(176, 70, 50);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(137, 96, 158);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(205, 90, 145);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(75, 191, 107);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(0, 174, 204);"></button>
									</li>
									<li class="background-grid-item">
										<button class="background-grid-trigger"
											style="width: 28px; background-color: rgb(131, 140, 145);"></button>
									</li>
								</ul>
							</div>
							<div id="dropdown-menu" style="float: right; margin-right: 15px">
								<div class="dropdown">
									<button id="dLabel" type="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"
										style="width: 120px;">
										공개하기 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
										<li>전체공개</li>
										<li>비공개</li>
									</ul>
								</div>
								<div class="dropdown">
									<button id="dLabel" type="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"
										style="width: 120px;">
										팀보드 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
										<li>팀 없어</li>
										<li>팀이 없어@!</li>
									</ul>
								</div>
							</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" id="submitButton"
							disabled="disabled">만들기</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 새보드만들기 상단바 모달 -->
		<div class="modal fade createSome" tabindex="-1" role="dialog"
			aria-labelledby="mySmallModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4>만들기</h4>
					</div>
					<div class="modal-body">
						<div>d</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade userProfile" tabindex="-1" role="dialog"
			aria-labelledby="mySmallModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 style="text-align: center">유저이름</h4>
					</div>

					<ul class="nav nav-pills nav-stacked">
						<li><a href="mypage.jsp">Profile</a></li>
						<li><a href="#">Cards</a></li>
						<li><a href="#">Settings</a></li>
					</ul>


					<hr>
					<ul class="nav nav-pills nav-stacked">
						<li><a href="#">Help</a></li>
						<li><a href="#">Log Out</a></li>
				</div>

			</div>
		</div>

		<footer> </footer>
</body>

</html>