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
	
}
div {
    display: block;
}
 .navbar {
 /*	opacity: 0.8;
  	filter: alpha(opacity=50); 
    background-color:#A5BC42; */
	background: #6F777B;
	color: #fff;
	height:55px;
	font-size: 18px;
	font-weight: 100;
	font-family: "Roboto", sans-serif;
    position: absolute;
    top: 0;
    right: 0;
    width: 100% !important;
    left: 0;
    z-index: 20;

} 
.navbar .btn {
	background-color: transparent;
	opacity: 0.8;
  	filter: alpha(opacity=50);
} 

.board-header {
	position:absolute;
    background-color: darkgray;
    width: 100%;
    height: auto;
}
#content {
    overflow-y: auto;
    outline: none;
    background-color: red;
}
#content, body {
    position: relative;
}
</style>

<body>
   <!--보드생성 모달-->
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
<!--유저 프로필 모달--> 
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

<div class="container">
	<header role="banner">
		<nav role="navigation" class="navbar navbar-static-top" >
			<div class="navbar container">
				<div class="navbar-header">
					<form class="navbar-form navbar-left" role="search">
						<button type="button" class="btn"
							aria-label="Left Align" onclick="location.href='main_board.jsp'">
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
					<a class="navbar-brand" href="login.jsp"
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
       <div class="row">
       <div class="wrapper">
        <div class="board-header">
            <div id="board-header" class="col-md-8">
            <div class="board-header-btn" href="#" style="float: left">
                <span class="" dir="auto">보드제목</span>
            </div>
            <div class="board-header-btns"  style="float: left">
                <a class="board-header-btn board-team" href="#">Personal</a>
                <span class="icon-sm-btn-divider"></span>	
                <a id="permission-level" class="board-header-btn" href="#" title="Only board members can see and edit this board">
                    <span class="board-header-btn-icon icon-sm glyphicon glyphicon-lock">
                    </span>
                    <span class="board-header-btn-text">Private</span>
                </a>
                <span class="board-header-btn-divider"></span>
                <div class="board-header-facepile">
                    <div class="member js-member ui-draggable">
                        <span class="member-initials" title="HeeJin" aria-label="HeeJin">
                        희
                        </span>
                        <span class="member-type admin" title="This member is an admin of this board." aria-label="This member is an admin of this board" ></span>
                    </div>
                    <div class="board-header-btns mod-left">
                        <a id="member-count" class="board-header-btn board-header-btn-round pile js-open-show-all-board-members js-fill-board-member-count" href="#"></a>
                        <span id="member-count-notifications"></span>
                    </div>
                </div>
            </div>        
            <div class="col-md-4">
                <div class="board-header-btns" style="float: right">
                    <a class="board-header-btn sub-btn js-board-header-subscribed" href="#">
                        <span class="icon-sm glyphicon glyphicon-eye-open board-header-btn-icon"></span>
                        <span class="board-header-btn-text u-text-underline">Watching</span>
                    </a>
                    <a class="board-header-btn calender-btn js-calender" href="#">
                        <span class="icon-sm glyphicon glyphicon-calendar board-header-btn-icon"></span>
                        <span class="board-header-btn-text u-text-underline">Calender</span>
                    </a>
                    <a class="board-header-btn mod-show-menu js-show-sidebar" href="#" id="show-menu">
                        <span class="icon-sm glyphicon glyphicon-option-horizontal board-header-btn-icon"></span>
                        <span class="board-header-btn-text u-text-underline">Show Menu</span>
                    </a>
                </div>
            </div> 
            </div>
        </div>
    </div>
</div>  
    <div id="content">
       <div class="wrapper">
        <div class="board-header">
            <div class="board-header-btn" href="#" style="float: left">
                <span class="" dir="auto">보드제목</span>
            </div>
            <div class="board-header-btns"  style="float: left">
                <a class="board-header-btn board-team" href="#">Personal</a>
                <span class="icon-sm-btn-divider"></span>	
                <a id="permission-level" class="board-header-btn" href="#" title="Only board members can see and edit this board">
                    <span class="board-header-btn-icon icon-sm glyphicon glyphicon-lock">
                    </span>
                    <span class="board-header-btn-text">Private</span>
                </a>
                <span class="board-header-btn-divider"></span>
                <div class="board-header-facepile">
                    <div class="member js-member ui-draggable">
                        <span class="member-initials" title="HeeJin" aria-label="HeeJin">
                        희
                        </span>
                        <span class="member-type admin" title="This member is an admin of this board." aria-label="This member is an admin of this board" ></span>
                    </div>
                    <div class="board-header-btns mod-left">
                        <a id="member-count" class="board-header-btn board-header-btn-round pile js-open-show-all-board-members js-fill-board-member-count" href="#"></a>
                        <span id="member-count-notifications"></span>
                    </div>
                </div>
                <div class="board-header-btns" style="float: right">
                    <a class="board-header-btn sub-btn js-board-header-subscribed" href="#">
                        <span class="icon-sm glyphicon glyphicon-eye-open board-header-btn-icon"></span>
                        <span class="board-header-btn-text u-text-underline">Watching</span>
                    </a>
                    <a class="board-header-btn calender-btn js-calender" href="#">
                        <span class="icon-sm glyphicon glyphicon-calendar board-header-btn-icon"></span>
                        <span class="board-header-btn-text u-text-underline">Calender</span>
                    </a>
                    <a class="board-header-btn mod-show-menu js-show-sidebar" href="#" id="show-menu">
                        <span class="icon-sm glyphicon glyphicon-option-horizontal board-header-btn-icon"></span>
                        <span class="board-header-btn-text u-text-underline">Show Menu</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div> 
</div>
	
</body>

</html>