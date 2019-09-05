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

#boards {
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
/* #createbtn{
   background-color: rgba(9,30,66,.04);
    box-shadow: none;
    border: none;
    color: #172b4d;
    display: table-cell;
    height: 80px;
    font-weight: 400;
    text-align: center;
    vertical-align: middle;
    width: inherit;
    transition-property: background-color,border-color,box-shadow;
    transition-duration: 85ms;
    transition-timing-function: ease;
} */
/* 상단바 */

ul {
/*     display: block; */
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
.board-tile{
    border-radius: 3px;
    display: block;
}


#checkIcon {
   color: white;
}
.boards-page-list-item{
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
}); //끝


</script>
<body>
   <header role="banner">
      <nav role="navigation" class="navbar navbar-static-top "
         style="background-color: #A5BC42">
         <div class="container">
            <div class="navbar-header">
               <form class="navbar-form navbar-left" role="search">
                  <button type="button" class="btn btn-default"
                     aria-label="Left Align">
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
               <li id="boards"><a>Boards</a></li>
               <li><a>Home</a></li>
            </ul>
         </div>


         <!--  주희수정-------------------------------------------------------------- -->
         <div class="col-md-9">
            <div class="boards-page-recently">
               <h3 class="boards-page-header-name">
                  <span class="glyphicon glyphicon-time"></span>&nbsp; Recently
                  Viewed
               </h3>
            </div>
            <div class="boards-page-boards-lists">
               <ul class="boards-page-list">
                  <c:forEach var="board" items="${boardList}">
                     <li class="boards-page-list-item" 
                     style="background-color:${board.color}">
                     <div class="board-title-tile">
                     <a class="board-tile" href="getBoard.do?board_index=${board.board_index}">
                        <div class="board-tile-details-name">
                           ${board.title}
                        </div>
                     </a></div>
                     </li>
                  </c:forEach>
               </ul>
            </div>
            <div class="boards-page-personal">
               <h3 class="boards-page-header-name">
                  <span class="glyphicon glyphicon-user"></span>&nbsp;Personal
                  Boards
               </h3>
            </div>
            <div class="boards-page-boards-lists">
               <ul class="boards-page-list">
                  <c:forEach var="board" items="${boardList}">
                     <li class="boards-page-list-item" style="background-color:${board.color}">
                     <div class="board-title-tile">
                     <a class="board-tile" href="getBoard.do?board_index=${board.board_index}">
                        <div class="board-tile-details-name">
                           ${board.title}
                        </div>   
                     </a></div>
                     </li>
                  </c:forEach>
                  <li class="boards-page-list-item" style="background-color:rgba(9,30,66,.2);">
                     <div class="board-title-tile">
                        <p>
                           <a class="new-board-create" id="createbtn"
                              data-toggle="modal" data-target=".createBoard" >
                              <span>새 보드만들기</span>
                           </a>
                        </p>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
         <!-- ---------------------------------------------------------------- -->
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
            <div class="modal-body" >
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