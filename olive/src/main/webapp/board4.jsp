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
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<title>Board</title>
</head>
<style>
#brandLogo {
	height: 40px;
	position: relative;
	bottom: 10px;
	margin-left: 200px;
}

.navbar {
	/*    opacity: 0.7;
   filter: alpha(opacity = 50); 
   background-color: transparent; */
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

.navbar .btn {
	background-color: transparent;
	opacity: 0.5;
	filter: alpha(opacity = 50);
}

#navbar-right {
	margin-right: 5px;
}

.board-header {
	/* background-color: #cad0d2; */
	height: 50px;
	margin-bottom: 20px;
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

input:focus, textarea:focus {
	outline: none;
}

.btn {
	background-color: lime;
	padding: 5px 10px;
	border: none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	box-shadow: 1px 1px 1px 0px #bababa;
	cursor: pointer;
	font-size: 15px;
}

::-webkit-scrollbar {
	width: 7px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

::-webkit-scrollbar-track {
	background: #DFE3E6;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

::-webkit-scrollbar-thumb {
	background: #A9ADB0;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

.btn-green {
	background: #5AAC44;
	color: white;
}

.card-placeholder {
	width: 250px;
	height: 33px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background: #D6DCE0;
	margin-bottom: 12px;
}

.list-placeholder {
	width: 270px;
	height: 200px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background: #737B7F;
	margin-right: 15px;
	display: inline-block;
}

.ui-sortable-helper {
	transform: skew(-5deg, 5deg) !important;
}

.wrapper {
	width: 100%;
	min-height: 100vh;
	background: #f4f5f7;
}

#boardWrap {
	box-sizing: border-box;
	padding: 0px 15px;
	font-family: "Lato", sans-serif;
	max-width: 100%;
	min-height: calc(100vh - 50px);
	overflow-x: auto;
	white-space: nowrap;
}

#boardTitleWrap {
	height: 50px;
	font-size: 17px;
	font-weight: bolder;
	cursor: pointer;
	margin-right: 20px;
}

#boardTitleWrap #boardTitle {
	height: 100%;
	line-height: 50px;
	color: white;
	float: left;
	background-color: blue;
}

#boardTitleWrap #boardTitleForm {
	height: 100%;
	float: left;
	line-height: 50px;
	display: none;
}

#boardTitleWrap #boardTitleForm input {
	font-size: 17px;
	background: transparent;
	color: #fff;
	border: none;
	background: #6F777B;
	height: 35px;
	padding-left: 10px;
	font-weight: bolder;
}

#boardTitleWrap #boardTitleForm input::placeholder {
	font-weight: bolder;
	color: #fff;
}

.listWrap {
	display: inline-block;
	vertical-align: top;
}

.listWrap .list {
	background: #DFE3E6;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	width: 250px;
	padding: 5px 10px;
	display: inline-block;
	vertical-align: top;
	margin-right: 15px;
	margin-bottom: 35px;
}

.listWrap .list .listTitleWrap {
	height: 40px;
	font-size: 15px;
	margin-bottom: 10px;
	cursor: pointer;
}

.listWrap .list .listTitleWrap .listTitle {
	height: 100%;
	line-height: 40px;
	color: #2F4E60;
	font-weight: 600;
	float: left;
}

.listWrap .list .listTitleWrap .menu-modal>a {
	color: #6b778c;
}

.listWrap .list .listTitleWrap .listTitleForm {
	/*    height: 100%;
   float: left;
   line-height: 40px;
   background: #d0d0d0;
   padding-left: 10px;
   display: none; */
	background: #DFE3E6;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	width: 80%;
	padding: 5px 0px;
	margin-right: 15px;
	display: none;
	margin-top: 0;
}

.listWrap .list .listTitleWrap .listTitleForm input {
	/*    font-size: 15px;
   background: transparent;
   color: #2F4E60;
   font-weight: 600;
   border: none; */
	padding: 7px 10px;
	background: white;
	width: calc(100% - 20px);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	border: none;
	margin-bottom: 7px;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	overflow: hidden;
	font-size: 15px;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: inset 0 0 0 2px #0079bf;
}

.listWrap .list .listTitleWrap .listTitleForm input::placeholder {
	color: #2F4E60;
}

.listWrap .list .cardWrap {
	min-height: 10px;
	max-height: 663px;
	overflow-y: auto;
	margin-bottom: 10px;
}

.listWrap .list .cardWrap .cardContent {
	padding: 7px 10px;
	background: white;
	width: calc(100%);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	margin-bottom: 12px;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	overflow: hidden;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: 1px 1px 1px 0px #bababa;
}

.listWrap .list .cardWrap .cardContent>a {
	color: #172b4d;
}

.listWrap .list .cardWrap .cardContent .card-modal #card-menu {
	/* display:none; */
	
}

.listWrap .list .cardAddWrap .addCardLabel {
	padding: 7px 5px;
	color: #838C91;
	margin-bottom: 12px;
	cursor: pointer;
}

.listWrap .list .cardAddWrap .addCardForm {
	display: none;
}

.listWrap .list .cardAddWrap .addCardForm textarea {
	border: none;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	padding: 7px 10px;
	width: calc(100%);
	font-size: 15px;
	resize: none;
	height: 80px;
	margin-bottom: 7px;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: 1px 1px 1px 0px #bababa;
}

.listWrap .list .cardAddWrap .addCardForm button {
	margin-bottom: 5px;
	float: left;
}

#listAddWrap {
	display: inline-block;
	vertical-align: top;
}

#listAddWrap #addListLabel {
	width: 250px;
	background: #6F777B;
	color: white;
	font-size: 15px;
	padding: 10px 10px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	cursor: pointer;
}

#listAddWrap #addListForm {
	background: #DFE3E6;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	width: 250px;
	padding: 8px 10px;
	float: left;
	margin-right: 15px;
	display: none;
}

#listAddWrap #addListForm input {
	padding: 7px 10px;
	background: white;
	width: calc(100% - 20px);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	border: none;
	margin-bottom: 7px;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	overflow: hidden;
	font-size: 15px;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: 1px 1px 1px 0px #bababa;
}

#listAddWrap #addListForm button {
	float: left;
	margin-bottom: 5px;
}

.listWrap {
	display: inline-block;
	vertical-align: top;
}

.listWrap .list {
	background: #DFE3E6;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	width: 250px;
	padding: 5px 10px;
	display: inline-block;
	vertical-align: top;
	margin-right: 15px;
	margin-bottom: 35px;
}

.listWrap .list .listTitleWrap {
	height: 40px;
	font-size: 15px;
	margin-bottom: 10px;
}

.listWrap .list .listTitleWrap .title {
	height: 100%;
	line-height: 40px;
	color: #2F4E60;
	font-weight: 600;
	float: left;
}

.listWrap .list .listTitleWrap .titleEdit {
	height: 100%;
	float: left;
	line-height: 40px;
	background: #d0d0d0;
	padding-left: 10px;
	display: none;
}

.listWrap .list .listTitleWrap .titleEdit input {
	font-size: 15px;
	background: transparent;
	color: #2F4E60;
	font-weight: 600;
	border: none;
}

.listWrap .list .listTitleWrap .titleEdit input::placeholder {
	color: #2F4E60;
}

.listWrap .list .cardWrap {
	min-height: 10px;
	max-height: 663px;
	overflow-y: auto;
	margin-bottom: 10px;
}

.listWrap .list .cardWrap .cardContent {
	padding: 7px 10px;
	background: white;
	width: calc(100%);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	margin-bottom: 12px;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	overflow: hidden;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: 1px 1px 1px 0px #bababa;
}

.listWrap .list .cardAddWrap .addLabel {
	padding: 7px 5px;
	color: #838C91;
	margin-bottom: 12px;
	cursor: pointer;
}

.listWrap .list .cardAddWrap .addCard {
	display: none;
}

.listWrap .list .cardAddWrap .addCard textarea {
	border: none;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	padding: 7px 10px;
	width: calc(100% - 20px);
	font-size: 15px;
	resize: none;
	height: 80px;
	margin-bottom: 7px;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: 1px 1px 1px 0px #bababa;
}

.listWrap .list .cardAddWrap .addCard button {
	margin-bottom: 5px;
	float: left;
}

#listAddWrap {
	display: inline-block;
	vertical-align: top;
}

#listAddWrap #addLabel {
	width: 250px;
	background: #6F777B;
	color: white;
	font-size: 15px;
	padding: 10px 10px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	cursor: pointer;
}

#listAddWrap #addList {
	background: #DFE3E6;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	width: 250px;
	padding: 8px 10px;
	float: left;
	margin-right: 15px;
	display: none;
}

#listAddWrap #addList input {
	padding: 7px 10px;
	background: white;
	width: calc(100% - 20px);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	border: none;
	margin-bottom: 7px;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	overflow: hidden;
	font-size: 15px;
	-webkit-box-shadow: 1px 1px 1px 0px #bababa;
	-moz-box-shadow: 1px 1px 1px 0px #bababa;
	box-shadow: 1px 1px 1px 0px #bababa;
}

#listAddWrap #addList button {
	float: left;
	margin-bottom: 5px;
}

.close {
	float: left;
	display: flex;
	height: 28px;
	width: 28px;
	align-items: center;
	justify-content: center;
	cursor: pointer;
}

.list-placeholder {
	width: 270px;
	height: 200px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background: #737B7F;
	margin-right: 15px;
	display: inline-block;
}

.cardEditor-buttons>a {
	border-radius: 3px;
	clear: both;
	color: #e6e6e6;
	float: left;
	margin: 0 0 4px 8px;
	padding: 6px 12px 6px 8px;
	text-decoration: none;
}

.board-menu-content {
	display: none;
}

.board-menu-content .modal-content {
	background: rgb(244, 245, 247);
	height: 630px;
}

.board-menu-title {
	text-align: center;
}

#cardEditModal .modal-content {
	background-color: white;
}

#cardEditModal .cardEditForm .cardEditor-title {
	autocomplete: off;
	overflow-wrap: break-word;
	resize: none;
	height: 90px;
	padding: 7px 10px;
	background: white;
	width: calc(90%);
	border-radius: 5px;
	margin-bottom: 12px;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
	overflow: hidden;
	margin-top: 0;
}

.modal-backdrop {
	background-color: transparent;
}

.u-text-underline {
	text-decoration: underline;
}

#addMemberModal {
	display: none;
}

#addMemberModal .UserSearch  input {
	background-color: transparent;
	border: none;
	box-shadow: inset 0 0 0 2px #0079bf;
	flex: 1 0 auto;
	font-size: 14px;
	overflow-x: auto;
	overflow-y: hidden;
	margin: 0;
	padding: 0;
	width: auto;
	max-width: 100%;
	min-height: 36px;
}

#boardDescriptionModal {
	display: none;
}

#boardDescriptionModal .modal-content {
	background: rgb(244, 245, 247);
	height: 630px;
}

#boardDescriptionModal .modal-title {
	text-align: center;
}

#userImg {
	width: 50px;
	height: 50px;
	border-radius: 75px;
}

.boardDescriptionFake {
	background-color: rgba(9, 30, 66, .04);
	box-shadow: none;
	border: none;
	border-radius: 3px;
	display: block;
	min-height: 40px;
	padding: 8px 12px;
	text-decoration: none;
}

#boardContent {
	background-color: white;
	box-shadow: inset 0 0 0 2px #0079bf;
	border: none;
	border-radius: 3px;
	display: block;
	min-height: 40px;
	padding: 8px 12px;
	text-decoration: none;
	width: 270px;
	margin-bottom: 10px;
}

#boardColorChangeModal {
	display: none;
}

#boardColorChangeModal .modal-title {
	text-align: center;
}

#boardColorChangeModal .modal-content {
	background: rgb(244, 245, 247);
	height: 630px;
	overflow: scroll;
}

.board-background-section {
	background-size: cover;
	border-radius: 8px;
	height: 96px;
	margin-bottom: 8px;
	width: 50%;
	box-sizing: border-box;
	cursor: pointer;
	float: left;
	padding: 0 4px;
	position: relative;
	text-align: center;
	width: 120px;
	margin: 5px;
}
</style>
<script>

//$(document).on('load', function() {
$(document).ready(function(){
   // enter키 이벤트 막기
   var boardcolor =  $("#boardColor").val();
   //console.log(boardcolor);
   document.body.style.background = boardcolor;
   
   $('input[type="text"]').keydown(function() {
        if (event.keyCode === 13) {
            event.preventDefault();
            $('input[type="button"]').click();
        }
    });
   // 보드 이름 변경폼 띄우기
   $("#boardTitle").dblclick(function (e) { 
      e.preventDefault(); // 클릭 이벤트 외에 별도의 브라우저 행동을 막기 위해 사용 
      var boardTitle = $(this).text();
      console.log(boardTitle);
      $("#boardTitle").hide();//보드타이틀값 숨고   
      $("#boardTitleForm").show();//보드타이틀 폼이 보여진다
      $("#boardTitleForm").children("#boardTitleChangedValue").val(boardTitle);
      $("#boardTitleForm").children("#boardTitleChangedValue").focus(); //id=boardTitleChangedValue인곳에 포커스가 간다
   });
   // 보드이름 변경하기
   $('#boardTitleChangeBtn').click(function() {
         let frm = $('#boardTitleForm');
         var BoardName = $("#boardTitle").text();
         console.log(BoardName);
         $.ajax({
            method : 'post'
             ,data : {title : BoardName}
            , url : "updateTitle.do"
            , data : $(frm).serialize()
            , success : function(result) {
               var text = $('#boardTitleChangedValue').val()
               $(frm).hide();
               document.getElementById('boardTitle').innerText = result;
               document.getElementById('boardTitle').style = 'display:block;'
            }
            , error : function(e) {
               console.error(JSON.stringify(e));
              }
         });
      });   
 // 리스트 추가 클릭이벤트
   $("#addListLabel").click(function (e) {
      e.preventDefault();
      $("#addListLabel").hide();
      $("#addListForm").show();
      $("#addListForm").children("#addListTitle").focus();
   });
 
   // 리스트 추가하기 
   $("#addListForm").click(function (e) {
      e.preventDefault();
      var addListTitle = $("#addListTitle");
      if(addListTitle.val().length > 0){
     var ListName = $("#addListTitle").val();
      var board_id = $("#board_id").val();
  
   console.log(ListName + " " + board_id);
      $.ajax({
      async: true, 
      type : "POST",
      url : "insertList.do",
      data : {title : ListName,
         board_id : board_id,
         },
      dataType : "json",
      success : function(data) {
         console.log("출력되나"+data);
         }  
      });
          $("#listAddWrap").before(
           `<div class="list">
               <div class="listTitleWrap">
                  <div class="listTitle">`+ addListTitle.val() +`</div>
                    <div class="menu-modal" style="float: right">
            <a class="button-link js-change-card-archive icon-sm glyphicon 
            glyphicon-option-horizontal" href="#modalArchive" data-toggle="modal"></a>
            </div>
                  <form class="listTitleForm" style="display: none">
                     <input class="listTitleChangedValue" type="text" name="title"
               autocomplete="off">
                     <button class="btn" id="ListTitleChangeBtn">변경</button>
                     <input type="hidden" name="board_index" value="${list.board_index }">
                  </form>
                  <div class="card-modal" style="float:right">
            <a class="button-link js-change-card-archive icon-sm glyphicon 
            glyphicon-option-horizontal" href="#modalArchive" data-toggle="modal">
          </a></div> 
               </div>
               
                  <div class="cardWrap">
                     <div class="cardContent">
                     <div class="card-menu" style="float:right">
               <a id="card-menu" class="button-link js-change-card-archive icon-sm glyphicon glyphicon-pencil" href="#modalCard" data-toggle="modal"></a>
               </div>
               </div>
              </div>

               <div class="cardAddWrap">
                  <div class="addCardLabel">+ 카드 추가</div>   
                  <form class="addCardForm">
                     <textarea name="addCardTitle" class="addCardTitle" cols="30" rows="10" placeholder="카드내용을 입력하세요"
                        autocomplete="off"></textarea>
                     <input id="board_id" type="hidden" name="board_id"
                         value="${boardContents[0].board_id}"> <input
                         id="list_id" type="hidden" name="list_id"
                         value="${list.list_id}"> <input id="list_order"
                         type="hidden" name="list_order" value="${list.list_order}">
                    <button class="btn btn-green" id="addCardButton">카드 추가</button>
                    <span class="close" id="addCardClose"></span>
                 </form>
               </div>
            </div>`);
          location.reload();
      }
      $("#addListForm").val("");
      $("#addListForm").hide();
      $("#addListLabel").show();
       
   });
   // 리스트 이름 변경폼 띄우기
    $(".listTitle").dblclick(function (e) { 
        e.preventDefault(); 
        $(this).hide();
        let pos = $(this).position();
        let top = pos.top;
        let left = pos.left;
        console.log(pos);
        $(this).parents(".listTitleWrap").children(".listTitleForm").show(); 
      $(this).parents(".listTitleWrap").children(".listTitleForm").children(".listTitleChangedValue").val($(this).text());
        $(this).parents(".listTitleWrap").children(".listTitleForm").children(".listTitleChangedValue").focus(); //id=listTitleChangedValue인곳에 포커스가 간다 */
    });
   // 리스트 이름 변경하기
    $(".listTitleForm").click(function() {
        var frm = $(this);
 
        $.ajax({
           method : 'post'
           , url : "updateTitle.do"
           , data : frm.serialize()
           , dataType : "json"
           , success : function(result) {
              var text = $('.listTitleChangedValue').val()
              frm.hide();
              frm.siblings('.listTitle').innerText = text;
              frm.siblings('.listTitle').style = 'display:block;'
           }
           , error : function(e) {
              console.error(JSON.stringify(e));
             }
        });
     });
   // 리스트 이름변경 끄기
   $(document).mouseup(".listTitle", function(e){
      if($(".listTitleForm").has(e.target).length === 0){
         $(".listTitleForm").hide();
         $(".listTitle").show();
      }
   });
   // 카드 추가라벨 클릭
   $(".addCardLabel").click(function (e) {
       e.preventDefault();
       $(this).hide(); //카드추가 숨기고
       $(this).parent().children("form").show(); //.cardAddLabel form태그를 보여준다
       $(this).parent().children("form").children("textarea").focus(); //폼태그에있는 textarea에 포커스를 둔다
    });
   
   //카드추가 버튼이 실행됐을때
    $(".addCardForm").click(function (e) {
    e.preventDefault();
    var addCardLabel = $(this).parent().children(".addCardLabel");
    var addCardTitle = $(this).children(".addCardTitle");
    var CardTitle = addCardTitle.val();
    console.log(CardTitle);
    if(CardTitle.length > 0){  
      
       var board_id = $(this).children("#board_id").val();
       var list_id = $(this).children("#list_id").val();
       var list_order = $(this).children("#list_order").val();
       var cardContent = $(this).parent(".cardAddWrap").siblings(".cardWrap");
       console.log(cardContent);
       console.log("cardTitle" + CardTitle);
        $.ajax({
          async: true, 
           type : "POST",
           url : "insertCard.do",
           data : {title : CardTitle,
              board_id : board_id,
              list_id : list_id,
              list_order : list_order
           },
           dataType : "json",
           success : function(data) {
              console.log("출력되나"+data);
                $cardContent.append("<div class='cardContent'>"
               + data + "</div>");
              }
           });
        $(this).hide();
        addCardLabel.show();
        addCardTitle.val("");
        addCardLabel.show();
       location.reload();
       }
    }); 
   // 카드 닫기 실행
   $(document).on("click", "#addCardClose", function (e) {
       e.preventDefault();
       $(this).parents(".addCardForm").children(".addCardContent").val("");
       $(this).parents(".addCardForm").hide();
       $(this).parents(".cardAddWrap").children(".addCardLabel").show();
   });    
   //카드 이름변경 모달 띄우기
   $(".open-CardEdit").click(function(e){
       var cardtitle = $(this).parents(".card-menu").siblings(".cardTitle");
       var cardTitleVal = cardtitle.text();
       var card_idx = $(this).parents(".card-menu").siblings("#index").val();
       console.log(cardTitleVal);
       console.log(card_idx);
       $("#cardEditModal .cardEditForm").append("<input type='hidden' id='index' value=" + card_idx + " name='card_index'>");
       $("#cardEditModal .cardEditor-title").text(cardTitleVal);
       $("#cardEditModal .cardEditor-title").focus();
      

   });
   // 카드 이름변경 모달 위치 
   $(".open-CardEdit").click(function(e){
      let sWidth = window.innerWidth;
      let sHeight = window.innerHeight;
      
      console.log(sWidth);
      let oWidth = $("#cardEditModal").width();
      let oHeight = $("#cardEditModal").height();

      let cardtitle = $(this).parents(".card-menu").parents(".cardContent");
      let pos = cardtitle.position();
      let divLeft = pos.left;
      let divTop = pos.top;
      // 레이어가 화면 크기를 벗어나면 위치를 바꾸어 배치한다.
      if( divLeft + oWidth > sWidth ) {
         divLeft = divLeft - oWidth;
      }
      if( divTop + oHeight > sHeight ) {
         divTop = divTop - oHeight;
      }

      // 레이어 위치를 바꾸었더니 상단기준점(0,0) 밖으로 벗어난다면 상단기준점(0,0)에 배치하자.
      if( divLeft < 0 ) divLeft = 0;
      if( divTop < 0 ) divTop = 0; 
 
      $("#cardEditModal").css({
         "top": divTop - 30,
         "left": divLeft,
         "position": "absolute"
      }).show();
      
     
   });
   // 카드변경모달 끄기 
   $(document).mouseup("#cardEditModal", function(e){
      if($("#cardEditModal").has(e.target).length === 0){
         $("#cardEditModal").hide();
      }
   });
   // 카드변경 모달  끄기(버튼 눌러서)
   $(document).on("click", "#addCardClose", function(){
      $("#cardEditModal").hide();
   });
   
   //리스트 정렬 및 이동
    var currentPosition;
    var boardIndex;
    var listArray;
    var startPos;
	$("#boardWrap").sortable({
		connectWith: ".listWrap",
		placeholder: "list-placeholder",
		handle: ".listTitleWrap",//handle: 해당 엘리먼트를 선택해야 이동이 가능하게 해주는것(손잡이 같은것)
		start: function(event, ui) {
    		//console.log($('#boardWrap').sortable('toArray'));
    		listArray = $('#boardWrap').sortable('toArray');
			startPos = ui.item.index() + 1;
			selectListIndex =  $('#' + listArray[ui.item.index()].valueOf() + ' > input:hidden').val();
      	},
      	stop: function(event, ui) {
			listArray = $('#boardWrap').sortable('toArray');
//     		console.log("listArray.valueOf() :" + listArray.valueOf());
//     		console.log("listArray[0].valueOf() :" + listArray[0].valueOf());
//     		for (var i = 0; i < listArray.length; i++) {
// 	    		console.log(i+1 + "번째 리스트의 보드인덱스 :" + $('#' + listArray[i].valueOf() + ' > input:hidden').val());
// 			}
          	console.log("Start position: " + startPos);//넘겨줄 값
          	console.log("selectListIndex: " + selectListIndex);//넘겨줄 값
          	currentPosition = ui.item.index() + 1;
          	console.log("Current Position: " + currentPosition);//넘겨줄 값
          	
          	var obj = {start_list_order : startPos, 
          			current_list_order : currentPosition, 
          			board_index : selectListIndex
          			}
			
          	$.ajax({
				type: "post",
				url : "updateListOrder.do",
				data : JSON.stringify(obj),
				dataType: "json",
				contentType:"application/json;charset=UTF-8",
				async: true,
				success: function(data) {
					console.log("성공쓰");
					},
				error: function(request,status,error){
			        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
 			});
    	}
	});
   $(window).on("load", function(){
    	console.log($('#boardWrap').sortable('toArray'));
	    var result = $('#boardWrap').sortable('toArray');
	    console.log( 'value:' + result );
	    console.log( 'first value:' + result[0]);
	    
    	console.log($('.cardSort').sortable('toArray'));
	    var result = $('.cardSort').sortable('toArray');
	    console.log( 'value:' + result );
	    console.log( 'first value:' + result[0]);
	    
	});
   //리스트 내 카드 이동
//    var startCardPosition;
//    var cardBoardIndex;
//    var cardArray;
//    var currentCardPosition;
//    $(".listWrap").sortable({
// 		connectWith: ".cardWrap",
// 		placeholder: "card-placeholder",
// 		start: function(event, ui) {
//    			cardArray = $('.listWrap').sortable('toArray');
//    			console.log(cardArray);
//    			startCardPosition = ui.item.index() + 1;
// 			selectListIndex =  $('.' + cardArray[ui.item.index()].valueOf() + ' > input:hidden').val();
//      	},
//      	stop: function(event, ui) {
// 			cardArray = $('.listWrap').sortable('toArray');
// //    		console.log("cardArray.valueOf() :" + cardArray.valueOf());
// //    		console.log("cardArray[0].valueOf() :" + cardArray[0].valueOf());
// //    		for (var i = 0; i < cardArray.length; i++) {
// //	    		console.log(i+1 + "번째 리스트의 보드인덱스 :" + $('#' + cardArray[i].valueOf() + ' > input:hidden').val());
// //			}
//          	console.log("Start position: " + startCardPosition);//넘겨줄 값
//          	console.log("selectListIndex: " + cardBoardIndex);//넘겨줄 값
//          	currentCardPosition = ui.item.index() + 1;
//          	console.log("Current Position: " + currentCardPosition);//넘겨줄 값
         	
//          	var obj = {start_card_order : startCardPosition, 
//          			current_list_order : currentCardPosition, 
//          			board_index : cardBoardIndex
//          			}
			
//          	$.ajax({
// 				type: "post",
// 				url : "#",
// 				data : JSON.stringify(obj),
// 				dataType: "json",
// 				contentType:"application/json;charset=UTF-8",
// 				async: true,
// 				success: function(data) {
// 					console.log("성공쓰");
// 					},
// 				error: function(request,status,error){
// 			        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
// 					}
// 			});
//    	}
// 	});
	$(".cardSort").sortable({
		connectWith: ".cardSort",
		placeholder: "card-placeholder",
		start: function(event, ui) {
			console.log("start card position : " + (ui.item.index() + 1));
			console.log("item id : " + ui.item.attr("id"));
		},
		stop: function(event, ui) {
			console.log("changed card position : " + (ui.item.index() + 1));
			console.log("item id : " + ui.item.attr("id"));
			console.log("부모태그의 형제태그의 자식태그의 자식태그 카드의 보드인덱스 : " + $('#' + ui.item.attr('id')).parent('cardSort').prev().children('div > #card_board_index').val());
			
			console.log("item 1st child 카드의 보드인덱스 : " + $('#' + ui.item.attr('id') + ' > #card_board_index').val());
			console.log("item 2st child 카드의 리스트오더 : " + $('#' + ui.item.attr('id') + ' > #card_list_order').val());
			console.log("item 3st child 카드의 카드오더 : " + $('#' + ui.item.attr('id') + ' > #card_card_order').val());
			
			
			
		}
			
	});
   // show-menu 모달 띄우기
    $("#show-menu").click(function(){
      let pos = $(this).position();
      let left = pos.left;
      let top = pos.top;
      $(".board-menu-content").css({
         "top": top,
         "left": left -180,
         "position": "absolute"
      }).show();
     $("#show-menu-close").click(function(){
        $(".board-menu-content").hide();
     })
   });    
   $(document).mouseup(".board-menu-content", function(e){
      if($(".board-menu-content").has(e.target).length === 0){
         $(".board-menu-content").hide();
      }
   });
   // 아카이브 모달띄우기
   $(".card-archive").click(function(){
      let pos = $(this).position();
      let left = pos.left;
      let top = pos.top;
      console.log(pos);
      $("#modalArchive").css({
         "top": top -10,
         "left": left,
         "position": "absolute"
      }).show();
   });
   // 새 멤버 추가 모달띄우기
   $("#open-add-member").click(function(){
      let pos = $(this).position();
      let left = pos.left;
      let top = pos.top;
      console.log(pos);
      $("#addMemberModal").css({
         "top": top,
         "left": left,
         "position": "absolute"
      }).show();
      $(document).mouseup("#addMemberModal", function(e){
         if($("#addMemberModal").has(e.target).length === 0){
            $("#addMemberModal").hide();
         }
      });
   });
   
   // 보드 정보보기
   $(".show-menu-items-aboutBoard").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
     $("#boardDescriptionModal").css({
         "top": top,
         "left": left -180,
         "position": "absolute"
     }).show(); 
     $(document).mouseup("#boardDescriptionModal", function(e){
            if($("#boardDescriptionModal").has(e.target).length === 0){
               $("#boardDescriptionModal").hide();
            }
     });      
     $("#about-this-board-close").click(function(){
        $("#boardDescriptionModal").hide();
     })
   });
   // show-menu로 돌아가기
   $("#back-to-show-menu").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
      $("#boardDescriptionModal").hide();
      $(".board-menu-content").show();
/*      $(".board-menu-content").css({
         "top": top,
         "left": left -180,
         "position": "absolute"
      }).show();  */
   }); 
   // 보드 설명 변경폼 띄우기
   $(".boardDescriptionFake").click(function(){
     $(this).hide();
     var boardContent = $(this).text();
     console.log(boardContent);
     $(".boardDescriptionForm").children("#boardContent").text(boardContent);
     $(".boardDescriptionForm").show();
   });
   // 보드설명 변경하기
   $(document).on("click", ".boardDescriptionForm", function(){
     var board_index = document.getElementById("board_index").value;
     var board_content = document.getElementById("boardContent").value;
     console.log(board_index + " " + board_content);
     $.ajax({
          async: true, 
           type : "POST",
           url : "updateBoardContent.do",
           data : {
              board_index : board_index,
              content : board_content
           },
           dataType : "json",
           success : function(data) {
               console.log("출력되나"+data);
           $(this).hide();
              
              }
      }); 

   });
   // 보드 배경색 바꾸기
    $(".show-menu-items-change-color").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
     $("#boardColorChangeModal").css({
         "top": top,
         "left": left -180,
         "position": "absolute"
     }).show(); 
     $(document).mouseup("#boardColorChangeModal", function(e){
            if($("#boardColorChangeModal").has(e.target).length === 0){
               $("#boardColorChangeModal").hide();
            }
     });      
   });
   $("#boardColorModalClose").click(function(){
     $("#boardColorChangeModal").hide();
   });
   // 보드 배경색 변경
    $(document).on("click", ".board-background-section", function(){
       var board_index = document.getElementById("board_index").value;
      let color = $(this).css("background-color");
      console.log(color + " " + board_index);
       $.ajax({
           async: true, 
           type : "post",
           url : "updateBoardColor.do",
           data : {
              board_index : board_index,
              color : color
           },
           dataType : "json",
           success : function(data) {
         var ccc = data;
         console.log("배경색 " + ccc);
           }
       });  
        document.body.style.background = color;
   });  
   
   
});

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
	<div class="board-header">
		<div class="board-header-menu">
			<div id="boardTitleWrap" style="float: left; margin-left: 10px;">
				<div id="boardTitle">${boardContents[0].title}</div>
				<input type="hidden" value="${boardContents[0].content}"
					id="boardDescription"> <input id="boardColor" type="hidden"
					value="${boardContents[0].color}">
				<form id="boardTitleForm">
					<input id="boardTitleChangedValue" type="text" name="title"
						placeholder="보드제목 변경" autocomplete="off"> <input
						type="hidden" name="board_index" id="board_index"
						value="${boardContents[0].board_index }">
					<button class="btn" id="boardTitleChangeBtn">제목바꾸기</button>
				</form>
			</div>

			<div class="board-hader-profile" style="float: left">
				<a class="btn board-team" href="#">Personal</a> <a
					id="permission-level" class="btn" href="#"
					title="Only board members can see and edit this board"> <span
					class="board-header-btn-icon icon-sm glyphicon glyphicon-lock"></span>
					<span class="board-header-btn-text">Private</span>
				</a> <span class="board-header-btn-divider"></span>
			</div>
			<div class="board-header-facepile" style="float: left">
				<a id="creator-initial" class="btn">${user.name} </a>
			</div>
			<div class="member-invite" style="float: left">
				<div class="member" id="Addmember">
					<a class="btn" id="open-add-member" href="#addMemberModal"
						data-toggle="modal">멤버를 초대해요</a>
				</div>
			</div>
			<div class="board-header-btns" style="float: right">
				<a class="btn sub-btn js-board-header-subscribed" href="#"> <span
					class="icon-sm glyphicon glyphicon-eye-open board-header-btn-icon"></span>
					<span class="board-header-btn-text u-text-underline">Watching</span></a>
				<a class="btn calender-btn js-calender" href="#"> <span
					class="icon-sm glyphicon glyphicon-calendar board-header-btn-icon"></span>
					<span class="board-header-btn-text u-text-underline">Calender</span></a>
				<a class="btn mod-show-menu js-show-sidebar" href="#" id="show-menu">
					<span
					class="icon-sm glyphicon glyphicon-option-horizontal board-header-btn-icon"></span>
					<span class="board-header-btn-text u-text-underline">Show
						Menu</span>
				</a>

			</div>
		</div>
	</div>
	<div id="boardWrap">
		<!-- 리스트를 추가하는 영역 -->
		<div id="boardSort">
			<c:forEach var="list" items="${boardContents}" begin="1"
				varStatus="status">
				<c:if test="${list.card_id == null}">
					<!-- 여기? -->
					<div class="listWrap" id="lo${list.list_order}">
						<input type="hidden" value="${list.board_index }">
						<div class="list">
							<div class="listTitleWrap">
								<div class="listTitle">${list.title}</div>
								<div class="menu-modal" style="float: right">
									<a
										class="card-archive icon-sm glyphicon 
                           glyphicon-option-horizontal"
										href="#modalArchive" data-toggle="modal"></a>
								</div>
								<form class="listTitleForm">
									<input class="listTitleChangedValue" type="text" name="title"
										autocomplete="off"> <span><button
											class="btn btn-green" id="ListTitleChangeBtn">변경</button></span> <input
										type="hidden" name="board_index" value="${list.board_index }">
								</form>
							</div>
							<c:set var="loop_flag" value="false" />

							<c:forEach var="card" items="${boardContents}"
								begin="${status.count + 1}" varStatus="status">
								<c:if test="${not loop_flag }">
									<c:if test="${card.card_id == null}">
										<c:set var="loop_flag" value="true" />
									</c:if>
									<c:if test="${card.card_id != null}">
										<div class="cardSort">
											<div class="cardWrap"
												id="cardWrap${card.list_order}${card.card_order}">
												<input type="hidden" id="card_board_index"
													value="${card.board_index }"> <input type="hidden"
													id="card_list_order" value="${card.list_order }"> <input
													type="hidden" id="card_card_order"
													value="${card.card_order }">
												<div class="cardContent">
													<a class="cardTitle"
														href="getCard.do?board_index=${card.board_index}&list_title=${card.title}">${card.title}</a>
													<input type="hidden" value="${card.board_index}" id="index">
													<div class="card-menu" style="float: right">
														<a id="card-menu"
															class="open-CardEdit icon-sm glyphicon glyphicon-pencil"
															href="#modalCardEdit" data-toggle="modal"></a>
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
							<div class="cardAddWrap">
								<div class="addCardLabel">+ 카드 추가</div>
								<form class="addCardForm">
									<textarea id="addCardTitle" name="title" class="addCardTitle"
										cols="30" rows="10" placeholder="카드내용을 입력하세요"
										autocomplete="off"></textarea>
									<input id="board_id" type="hidden" name="board_id"
										value="${boardContents[0].board_id}"> <input
										id="list_id" type="hidden" name="list_id"
										value="${list.list_id}"> <input id="list_order"
										type="hidden" name="list_order" value="${list.list_order}">
									<button class="btn btn-green" id="addCardButton">카드 추가</button>
									<span class="close" id="addCardClose">x</span>
								</form>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 여기! -->
			</c:forEach>
		</div>
		<div id="listAddWrap">
			<div id="addListLabel">+ 리스트 추가</div>
			<form id="addListForm">
				<input id="addListTitle" type="text" name="title"
					placeholder="리스트제목을 입력해라" autocomplete="off"> <input
					id="board_id" type="hidden" name="board_id"
					value="${boardContents[0].board_id}">
				<button id="addlist1">리스트 추가</button>
				<span class="close" id="addListClose">x</span>
			</form>
		</div>
	</div>


	<!-- show-menu 모달 -->
	<div class="board-menu-content">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header" style="height: 60px">
					<!-- 닫기(x) 버튼 -->
					<button id="show-menu-close" class="close" data-dismiss="modal"
						style="float: right">×</button>
					<!-- header title -->
					<h4 class="board-menu-title">Menu</h4>
				</div>
				<!-- body -->
				<div class="modal-body">
					<div>
						<a class="show-menu-items-aboutBoard" href="#"><span
							class="icon-sm glyphicon glyphicon-align-left"> </span>&nbsp;&nbsp;About
							This Board <span><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add
									a description to your board</h5></span></a> <br>
					</div>
					<div>
						<a class="show-menu-items-change-color" href="#"><span
							class="icon-sm glyphicon glyphicon-tint"> </span>&nbsp;&nbsp;Change
							Background</a>
					</div>
					<br>
					<div>
						<a class="show-menu-items" href="#"><span
							class="icon-sm glyphicon glyphicon-search"> </span>&nbsp;&nbsp;Search
							Cards</a>
					</div>
					<br>
					<div>
						<a class="show-menu-items" href="#"><span
							class="icon-sm glyphicon glyphicon-option-horizontal"> </span>&nbsp;&nbsp;More</a>
					</div>
					<hr>
					<div>
						<a class="show-menu-items" href="#"><span
							class="icon-sm glyphicon glyphicon-list"> </span>&nbsp;&nbsp;Activity</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 보드 정보 보기 -->
	<div id="boardDescriptionModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header" style="height: 60px">
					<!-- 닫기(x) 버튼 -->
					<button id="about-this-board-close" class="close"
						data-dismiss="modal" style="float: right">×</button>
					<h4 class="modal-title">
						<a href="#" id="back-to-show-menu"><span
							class="glyphicon glyphicon-chevron-left"></a> </span>&nbsp;&nbsp;About
						This Board
					</h4>
					<!-- header title -->
				</div>
				<!-- body -->
				<div class="modal-body">
					<div class="userInfoForm">
						<span class="icon-sm glyphicon glyphicon-user">&nbsp;Made
							By</span> <br> <br>
						<div class="userInfo" style="">
							<div class="userInfoImg"
								style="float: left; margin-left: 10px; margin-right: 30px">
								<img src="/webapp/upload/${user.image}" id="userImg">
							</div>
							<div>
								<a>${user.name}</a><br> <a>${user.email}</a>
							</div>
						</div>
						<br> <br>
					</div>

					<div>
						<span class="icon-sm glyphicon glyphicon-align-left">&nbsp;Description</span>
						<br> <br>
						<p>
							<a class="boardDescriptionFake" href="#">${boardContents[0].content }</a>
						</p>
						<form class="boardDescriptionForm" style="display: none">
							<textarea id="boardContent" rows="" cols=""
								placeholder="보드 정보 입력"></textarea>
							<input type="hidden" value="${boardContents[0].board_index }"
								name="board_index">
							<button class="btn btn-green" id="boardDescriptionButton">저장하기</button>
							<span><button id="closeButton" class="close"
									data-dismiss="modal" style="float: right">×</button></span>
						</form>

					</div>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 보드 배경색 변경 모달 -->
	<div id="boardColorChangeModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header" style="height: 60px">
					<button id="boardColorModalClose" class="Close"
						data-dismiss="modal" style="float: right">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 h4 class="modal-title">
						<a href="#" id="back-to-show-menu"><span
							class="glyphicon glyphicon-chevron-left">Color 
					</h4>
				</div>
				<div class="modal-body">
					<div class="color-list" style="display: block">
						<input type="hidden" value="${boardContents[0].board_index }"
							name="board_index">
						<div class="board-background-section"
							style="background-color: rgb(0, 121, 191);"></div>
						<div class="board-background-section"
							style="background-color: rgb(210, 144, 52);"></div>
						<div class="board-background-section"
							style="background-color: rgb(81, 152, 57);"></div>
						<div class="board-background-section"
							style="background-color: rgb(176, 70, 50);"></div>
						<div class="board-background-section"
							style="background-color: rgb(137, 96, 158);"></div>
						<div class="board-background-section"
							style="background-color: rgb(205, 90, 145);"></div>
						<div class="board-background-section"
							style="background-color: rgb(75, 191, 107);"></div>
						<div class="board-background-section"
							style="background-color: rgb(0, 174, 204);"></div>
						<div class="board-background-section"
							style="background-color: rgb(131, 140, 145);"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 새보드 만들기 모달 -->
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
							<li><a href="#"><h3>새 보드 만들기</h3> <span>새 보드를 만들어
										봅시다!</span></a></li>
							<li><a href="#"><h3>새 팀 만들기</h3> <span>팀은 만들 수
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
	<!-- 유저 프로필모달 -->
	<div class="modal fade userProfile" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 style="text-align: center">${user.name}</h4>
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
	<!-- 모달아카이브 -->
	<div id="modalArchive" style="display: none">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal"
						style="float: right">×</button>
					<!-- header title -->
					<h5 class="modal-title">List Actions</h5>
				</div>
				<!-- body -->
				<div class="modal-body">
					<div>
						<a class="addCard" href="#">Add Card</a>
					</div>
					<div>
						<a class="moveList" href="#">Move List</a>
					</div>
					<div>
						<a class="sortBy" href="#">Sort By</a>
					</div>
					<hr>
					<div>
						<a class="cardMoveToOtherList" href="#">Move All This Cards in
							This List</a>
					</div>
					<div>
						<a class="archiveAllCards" href="#">Archive All Cards in This
							List</a>
					</div>
					<hr>
					<div>
						<a class="archiveList" href="#">Archive This List</a>
					</div>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 카드변경 -->
	<div id="cardEditModal" style="display: none" class="disabled">
		<div class="modal-dialog">
			<div class="modal-content" style="display: inline">
				<div class="cardEditor"
					style="left: 296px; width: 256px; float: left;">
					<form class="cardEditForm">
						<textarea class="cardEditor-title">
                    </textarea>
						<button class="btn btn-primary" id="cardEditButton">저장</button>
					</form>
				</div>
				<button class="close" data-dismiss="modal" style="float: right">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="cardEditor-buttons" style="float: right">
					<a href="#"><span class="icon-sm glyphicon glyphicon-edit">
					</span> <span>Edit Labels</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-user"> </span> <span>Change
							Members</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-arrow-right"> </span> <span>Move</span>
					</a> <a href="#"><span class="icon-sm glyphicon glyphicon-copy">
					</span> <span>Copy</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-time"> </span> <span>Change
							Due Date</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-trash"> </span> <span>Archive</span>
					</a>
				</div>

			</div>
		</div>
	</div>
	<!-- 모달멤버추가 -->
	<div id="addMemberModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button class="close" data-dismiss="modal" aria-label="Close"
						style="float: right">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">멤버를 추가해요</h4>
					<!-- header title -->
				</div>
				<!-- body -->
				<div class="modal-body">
					<form class="UserSearch">
						<input type="text" name="email" id="serchUserId">
						<button type="button" name="searchUser">회원 찾기</button>
					</form>
					<div class="searchResult"></div>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>



</body>

</html>