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
#brandLogo {
	height: 40px;
	position: relative;
	bottom: 10px;
}

#user {
	-webkit-box-align: center;
	align-items: center;
	background-color: rgb(223, 225, 230);
	background-size: cover;
	box-sizing: border-box;
	color: rgb(23, 43, 77);
	display: inline-flex;
	font-size: 12px;
	font-weight: bold;
	-webkit-box-pack: center;
	justify-content: center;
	line-height: 32px;
	height: 32px;
	width: 32px;
	background-position: center center;
	background-repeat: no-repeat;
	border-width: 0px;
	border-style: initial;
	border-color: initial;
	border-image: initial;
	border-radius: 100%;

}

</style>

<body>
	<header role="banner">
		<nav role="navigation" class="navbar navbar-static-top navbar-default">
			<div class="container">
				<div class="navbar-header">
					<form class="navbar-form navbar-left" role="search">
						<button type="button" class="btn btn-default"
							aria-label="Left Align" onclick="location.href='main_board1.jsp'">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</button>
						<button type="submit" class="btn btn-default">Board</button>
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
					<a class="navbar-brand" href="login2.jsp"
						style="padding-left: 82px;"><img id="brandLogo"
						src="resources/img/olive_logo.png"></a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right" style="margin-top: 8px">
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
						aria-label="Left Align" data-toggle="modal" data-target=".userProfile">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					
					</button>
					</ul>
				</div>
			</div>
		</nav>

	</header>


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
					<div class="list-group">
						<ul class="nav nav-pills nav-stacked">
						<li><a href="#"><h3>새
								보드 만들기</h3> <span>새 보드를 만들어 봅시다!</span></a></li>
						<li><a href="#"><h3>새 팀 만들기</h3> 
							<span>팀은 만들 수
								있을까요!!</span></a></li>	
						</ul>		
					</div>
				</div>
			</div>
		</div>
	</div>
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
					<form>
						<div class="form-group">
							<input type="text" class="form-control" id="boardTitle"
								placeholder="새 보드 이름">
						</div>
					</form>
					<div class="dropdown">
						<button id="dLabel" type="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							공개하기 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li>전체공개</li>
							<li>비공개</li>
						</ul>
					</div>
					<div class="dropdown">
						<button id="dLabel" type="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							팀보드 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li>팀 없어</li>
							<li>팀이 없어@!</li>
						</ul>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
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
				<h4 style="text-align:center">유저이름</h4>
			</div>
				
					<ul class="nav nav-pills nav-stacked">
						<li><a href="getUser.do">Profile</a></li>
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
</div>	

	<footer> </footer>
</body>

</html>