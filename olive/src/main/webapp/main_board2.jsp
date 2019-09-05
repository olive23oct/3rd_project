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
#boards {
   font-size: 14px;
   font-weight: 700;
   background-color: #e4f0f6;
    color: #0079bf;
    border-radius: 4px;
}
#recentlyViewed{
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

/* 주희 추가 */
.home-container .all-boards .boards-page-board-section {
    padding: 0 0 20px;
}
.boards-page-board-section {
    margin: 0 auto;
    max-width: 1250px;
    padding: 20px 16px 0;
}
div {
    display: block;
}
body, button, html, input, select, textarea {
    color: #172b4d;
    font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Noto Sans,Ubuntu,Droid Sans,Helvetica Neue,sans-serif;
    font-size: 30;
    line-height: 20px;
    font-weight: 400;
}
.boards-page-board-section-header {
    margin: 0 0 0 40px;
    padding: 0 0 11px;
    position: relative;
    display: flex;
}
.boards-page-board-section-header-name {
    display: inline-block;
    line-height: 24px;
    margin: 4px 0 0;
    font-size: 16px;
    font-weight: 700;
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
.icon-lg, .icon-md, .icon-sm {
    color: #42526e;
}
.icon-lg, .icon-md {
    height: 32px;
    line-height: 32px;
    width: 32px;
}
.icon-lg {
    font-size: 24px;
}
.icon-lg, .icon-md, .icon-sm {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    display: inline-block;
    font-family: trellicons;
    font-style: normal;
    font-weight: 400;
    line-height: 1;
    text-align: center;
    text-decoration: none;
    vertical-align: bottom;
}
.icon-clock:before {
    content: "\E916";
}
.boards-page-board-section-list {
    display: flex;
    flex-wrap: wrap;
}

.home-container .all-boards .boards-page-board-section-list-item .board-tile, .home-container .all-boards .boards-page-board-section-list-item:nth-of-type(4n) {
    margin-right: 0;
}
.board-tile, .board-tile-fade {
    border-radius: 3px;
    display: block;
}
.board-tile {
    background-color: #97a0af;
    background-size: cover;
    background-position: 50%;
    color: #fafbfc;
    line-height: 100;
    padding: 8px;
    position: relative;
    text-decoration: none;
}
a {
    color: #172b4d;
    background-color: transparent;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
.boards-page-board-section-list-item {
    box-sizing: border-box;
    padding: 4px 8px;
    position: relative;
    width: 25%;
    cursor: pointer;
}
li {
    text-align: -webkit-match-parent;
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

.board-tile.mod-light-background .board-tile-fade, .board-tile.mod-unknown-background .board-tile-fade {
    background-color: rgba(0,0,0,.3);
}
.board-tile-fade {
    background-color: rgba(0,0,0,.15);
    bottom: 0;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
}
.board-tile, .board-tile-fade {
    border-radius: 3px;
    display: block;
}
.board-tile {
    background-color: #97a0af;
    background-size: cover;
    background-position: 50%;
    color: #fff;
    line-height: 20px;
    padding: 8px;
    position: relative;
    text-decoration: none;
    
    
    background-color: rgba(9,30,66,.04);
    
    display: table-cell;
    height: 80px;
    font-weight: 400;
    text-align: center;
    vertical-align: middle;
    width: inherit;
    transition-property: background-color,border-color,box-shadow;
    transition-duration: 85ms;
    transition-timing-function: ease;
}
a {
    color: #172b4d;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
}
.boards-page-board-section-list-item {
    box-sizing: border-box;
    padding: 4px 8px;
    position: relative;
    width: 25%;
    cursor: pointer;
}
.board-tile.mod-add {
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
}



</style>
<script>
function createBoard(){
   document.boardForm.submit();
}
</script>
<body>
   <header role="banner">
      <nav role="navigation" class="navbar navbar-static-top navbar-default">
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
                              <span class="glyphicon glyphicon-search"  aria-hidden="true"></span>
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
   <div class="container">
      <div class="row">
         <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
               <li id="boards"><a>Boards</a></li>
               <li><a>Home</a></li>
            </ul>
         </div>
         
         
<!-- ---------------------------------------------------------------- -->         
         
         
         <div class="col-md-9">
            <div>
               <div class="boards-page-board-section mod-no-sidebar">
                  <div class="boards-page-board-section-header">
                     <div class="boards-page-board-section-header-icon">
                        <span class="glyphicon glyphicon-time"> </span>
                     </div>
                     <h3 class="boards-page-board-section-header-name">Recently Viewed</h3>
                  </div>

                  <ul class="boards-page-board-section-list">
                  
                  <c:forEach var="board" items="${boardList}">
                     <li class="boards-page-board-section-list-item">
                        <a class="board-tile mod-light-background" href="getBoard.do?board_index=${board.board_index}"  >
                           <span class="board-tile-fade"></span>
                           <div class="board-tile-details is-badged">
                              <div title="project1" dir="auto" class="board-tile-details-name">
                                 <div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; 
                                 display: -webkit-box; -webkit-line-clamp: 2;">${board.title}</div>
                              </div>
                              <div class="board-tile-details-sub-container">
                                 <span class="board-tile-options"> 
                                    <span class="icon-sm icon-star board-tile-options-star-icon">
                                    </span>
                                 </span>
                              </div>
                           </div> 
                           <span class="board-tile-badges"></span>
                        </a>
                        <div class="board-tags u-clearfix"></div>
                     </li>
                     </c:forEach>
                     
                     <!-- <li class="boards-page-board-section-list-item">
                        <a class="board-tile mod-light-background" href="getBoard.do?board_id" >
                           <span class="board-tile-fade"></span>
                           <div class="board-tile-details is-badged">
                              <div title="파이널프로젝트" dir="auto" class="board-tile-details-name">
                                 <div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">파이널프로젝트</div>
                              </div>
                              <div class="board-tile-details-sub-container">
                                 <span class="board-tile-options"> 
                                    <span class="icon-sm icon-star board-tile-options-star-icon"></span>
                                 </span>
                              </div>
                           </div> 
                           <span class="board-tile-badges"></span>
                        </a>
                        <div class="board-tags u-clearfix"></div>
                     </li>-->
                  </ul>
               </div> 
               
                  
                  
               <div class="boards-page-board-section mod-no-sidebar">
                     <div class="boards-page-board-section-header">
                        <div class="boards-page-board-section-header-icon">
                           <span class="glyphicon glyphicon-user"> </span>
                        </div>
                        <h3 class="boards-page-board-section-header-name">Personal Boards</h3>
                     </div>
                     
                     <ul class="boards-page-board-section-list">
                        <li class="boards-page-board-section-list-item">
                           <a class="board-tile" href="getBoard.do?board_id" >
                              <span class="board-tile-fade"> </span>
                              <div class="board-tile-details is-badged">
                                 <div title="project" dir="auto" class="board-tile-details-name">
                                    <div style="overflow: hidden; text-overflow: ellipsis; 
                                    -webkit-box-orient: vertical; display: -webkit-box; 
                                    -webkit-line-clamp: 2;">project</div>
                                 </div>
                                 <div class="board-tile-details-sub-container">
                                    <span class="board-tile-options"> 
                                       <span class="icon-sm icon-star board-tile-options-star-icon">
                                       </span>
                                    </span>
                                 </div>
                              </div> <span class="board-tile-badges"></span> 
                           </a>
                           <div class="board-tags u-clearfix"></div>
                        </li>
                        <li class="boards-page-board-section-list-item">
                           <a class="board-tile" href="getBoard.do?board_id" >
                              <span class="board-tile-fade"> </span>
                              <div class="board-tile-details is-badged">
                                 <div title="project" dir="auto" class="board-tile-details-name">
                                    <div style="overflow: hidden; text-overflow: ellipsis; 
                                    -webkit-box-orient: vertical; display: -webkit-box; 
                                    -webkit-line-clamp: 2;">project</div>
                                 </div>
                                 <div class="board-tile-details-sub-container">
                                    <span class="board-tile-options">
                                       <span class="icon-sm icon-star board-tile-options-star-icon">
                                       </span>
                                    </span>
                                 </div>
                              </div>
                              <span class="board-tile-badges"></span>
                           </a>
                           <div class="board-tags u-clearfix"></div>
                        </li>
                        <li class="boards-page-board-section-list-item">
                           <a class="board-tile" href="getBoard.do?board_id" > 
                              <span class="board-tile-fade"> </span>
                              <div class="board-tile-details is-badged">
                                 <div title="project" dir="auto" class="board-tile-details-name">
                                    <div style="overflow: hidden; text-overflow: ellipsis; 
                                    -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">project</div>
                                 </div>
                                 <div class="board-tile-details-sub-container">
                                    <span class="board-tile-options"> 
                                       <span class="icon-sm icon-star board-tile-options-star-icon"></span>
                                    </span>
                                 </div>
                              </div> 
                              <span class="board-tile-badges"> </span>
                           </a>
                           <div class="board-tags u-clearfix"></div>
                        </li>
                        <li class="boards-page-board-section-list-item">
                           <div class="board-tile mod-add">
                              <p>
                                 <span data-toggle="modal" href=".createBoard" id="createbtn">새 보드 만들기</span>
                              </p>
                           </div>
                        </li>
                     </ul>
                     
                  </div>   
                              
               
            </div>

<!-- ---------------------------------------------------------------- -->






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
               <form method="post" action="insertBoard.do" name="boardForm">
                  <div class="form-group">
                     <input type="text" class="form-control" id="title" name="title"
                        placeholder="새 보드 이름">
                  </div>
               
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
               <button type="submit" class="btn btn-primary" onclick="createBoard()">만들기</button>
               <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
               
            </div>
            </form>
         </div>
      </div>
   </div>

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
   <footer> </footer>
</body>

</html>