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
li {
	list-style: none;
}

ul {
	padding-inline-start: 0px;
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

.board-header {
	/* background: rgba(0,0,0,.24); */
	margin-bottom: 8px;
	margin-top: -15px;
	height: 50px;
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

.btn-default.active, .btn-default.focus, .btn-default:active,
	.btn-default:focus, .btn-default:hover, .open>.dropdown-toggle.btn-default
	{
	color: #333;
	background-color: transparent;
	border-color: #adadad;
	color: white;
}

.btn {
	padding: 10px 10px;
	border: none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	/* box-shadow: 1px 1px 1px 0px #bababa;  */
	cursor: pointer;
	font-size: 15px;
	margin: 0 5px;
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
	padding: 7px 10px;
	margin-left: 0px;
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
	height: calc(100%);
	background: #f4f5f7;
}

#boardWrap {
	box-sizing: border-box;
	padding: 0px 15px;
	font-family: "Lato", sans-serif;
	max-width: 100%;
	min-height: 100vh;
	overflow-x: auto;
	white-space: nowrap;
}

#boardTitleWrap {
	cursor: default;
	font-size: 18px;
	font-weight: 700;
	line-height: 32px;
	padding-left: 4px;
	padding-right: 2px;
	text-decoration: none;
	max-width: calc(100% - 12px);
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

#boardTitleWrap #boardTitle {
	/*    height: 100%;
   line-height: 50px;
   color: white;
   float: left;
   background-color: blue; */
	cursor: default;
	font-size: 18px;
	font-weight: 700;
	line-height: 40px;
	padding-left: 4px;
	padding-right: 2px;
	text-decoration: none;
	color: #fff;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	border-radius: 3px;
}

#boardTitleWrap #boardTitle:hover {
	cursor: pointer;
	background-color: rgba(0, 0, 0, .24);
}

#boardTitleWrap #boardTitleForm {
	height: 100%;
	float: left;
	line-height: 50px;
	display: none;
	margin-top: -6px;
}

#boardTitleWrap #boardTitleForm input {
	background: transparent;
	color: #fff;
	border: none;
	background: #6F777B;
	height: 40px;
	border-radius: 3px;
	cursor: default;
    font-size: 18px;
    font-weight: 700;
    line-height: 40px;
    padding-left: 4px;
    padding-right: 2px;
    text-decoration: none;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
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
	max-height: 100vh;
	/*  overflow: scroll;  */
}

#newList {
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

.listWrap .list .listTitleWrap .menu-modal>a:hover {
	background-color: rgba(0, 0, 0, .24);
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

.listWrap .list .cardWrap .cardContent:hover {
	background: rgba(0, 0, 0, .05);
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
	background-color: rgba(0, 0, 0, .24);
	color: hsla(0, 0%, 100%, .8);
	font-size: 15px;
	padding: 10px 10px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	cursor: pointer;
}

#listAddWrap #addListLabel:hover {
	background-color: rgba(0, 0, 0, .10);
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

#cardEditModal {
	background-color: rgba(9, 30, 66, .6);
	width: 500px;
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
	padding-inline-start: 10px;
}

#boardDescriptionModal {
	display: none;
}

#boardDescriptionModal .modal-content {
	background: rgb(244, 245, 247);
	height: 630px;
}

.modal-title {
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

#boardContent, #boardSearchInput {
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
	overflow: hidden;
}

#boardSearchModal .modal-content {
	background: rgb(244, 245, 247);
	height: 630px;
	overflow: hidden;
}

.board-background-section {
	background-size: cover;
	border-radius: 8px;
	height: 80px;
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

#memberImg {
	width: 35px;
	height: 35px;
	border-radius: 75px;
}

.img_area {
	width: 50px;
	float: left;
}

.permission-modal-header {
	display: none;
}

.permission-modal-body {
	display: none;
}

.open-member {
	background-color: transparent;
	box-shadow: 0 0 0 0;
	padding: 0 0;
}

.btn-default {
	background: transparent;
	color: white;
	box-shadow: 0 0 0 0;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0);
}

.btn-default:hover {
	background-color: rgba(0, 0, 0, .24);
	color: #fff;;
}

.show-menu-item {
	width: 100%;
	padding: 10px;
}

.show-menu-item:hover {
	background-color: rgba(0, 0, 0, .15);
	border-radius: 5px;
}

.searchResult {
	padding-inline-start: 0px;
	box-sizing: border-box;
	max-height: 188px;
	overflow-y: auto;
	padding: 4px;
	margin: 4px;
	width: calc(100% - 8px);
}

.result_wrap {
	display: none;
	position: absolute; 
	top: 44px;
	background-color: #f4f5f7;
    max-height: 600px;
    width: 600px;
    border-radius: 3px;
}
.result_wrap_title {
	color: #6b778c;
    font-weight: 600;
    line-height: 16px;
    margin-top: 16px;
    font-weight: 500;
    letter-spacing: .04em;
    margin: 3px 0 9px;
    text-transform: uppercase;
}
.search_result_title {
	color: #6b778c;
    font-size: 12px;
    font-weight: 600;
    line-height: 16px;
    margin-top: 16px;
    font-weight: 500;
    letter-spacing: .04em;
    margin: 3px 0 9px;
    text-transform: uppercase;
	
}
.search_result_wrap {
	padding: 10px;
}

.board_Search_wrap {
	display: none;
}
#result_board, #result_list, #result_card { 
	font-size : 13px;
}

</style>
<script>

$(document).ready(function(){
   // 보드배경색	
   var boardcolor =  document.getElementById("boardColor").value;
   console.log(boardcolor);
   document.body.style.background = boardcolor; 
   
   // enter키 이벤트 막기
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
      async: false, 
      type : "POST",
      url : "insertList.do",
      data : {title : ListName,
         board_id : board_id,
         },
      dataType : "json",
      success : function(data) {
         console.log("출력되나"+data);
	      $("#newList").children().children(".listTitle").val(data);
	      //$('#boardWrap').load(document.URL +  ' #boardWrap');
         }  
         
      });
      console.log($(this).parent("#listAddWrap"));
      $(this).parent("#listAddWrap").html($("#newList"));
      }
      
      $("#addListForm").val("");
      $("#addListForm").hide();
      $("#addListLabel").show();
      location.reload();
       
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
              frm.siblings('.listTitle').text() = text;
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
       var idx = $(this).parents(".card-menu").siblings("#index").val();
       var cardId = $(this).parents(".card-menu").parents(".cardContent").siblings("#cardId").val();
       
       console.log(cardTitleVal);
       console.log("인덱스" + idx);
       console.log("카드아이디" + cardId);
       $("#cardEditModal .cardEditForm").append("<input type='hidden' id='index' value=" + idx + " name='board_index'>");
       $("#cardEditModal .cardEditor-title").text(cardTitleVal);
       $(".cardEditor-title").focus();
	   	// 카드 아카이브
	   	$(document).on("click", ".card_archive", function(){
	   		$.ajax({
	   			url : "updateArchive.do",
	   			type :"post",
	   			data : {
	   				card_id : cardId
	   			},
	   			success : function(){
	   				console.log("카드아카이브성공!");
	   			}
	   		});
	   	});	
   });
	 // 카드 이름변경
	 $(".open-CardEdit").click(function(){
		 var cardtitle = $(this).parents(".card-menu").siblings(".cardTitle");
		 var cardTitleVal = cardtitle.text();
		 var card_idx = $(this).parents(".card-menu").siblings("#index").val();
		 console.log(cardTitleVal);
		 console.log(card_idx);
		 $("#modalCardEdit .cardEditForm").append("<input type='hidden' id='index' value=" + card_idx + " name='card_index'>");
		 $("#modalCardEdit .cardEditor-title").text(cardTitleVal);
		 $("#modalCardEdit .cardEditor-title").focus();
		 console.log($(".cardEditForm"));
		});
	$("#cardEditButton").click(function(e){
		e.preventDefault();
		var newCardTitle = $(this).parent().children(".cardEditor-title").val();
	 	var index = $(this).parent().children("#index").val();
	 	
	 	console.log(newCardTitle + " " + index);
		$.ajax({
    		async: true, 
    		type : "POST",
     		url : "updateTitle.do",
     		data : {
      		title : newCardTitle,
      				board_index : index
      				}, 
      		dataType : "text",
      		success : function(data) {
     		   console.log("출력되나"+data);
     			}  
     	}); 
        $("#modalCardEdit").modal("hide");
        location.reload();
		
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
   $(document).on("click", "#cardEditor-close", function(){
      $("#cardEditModal").hide();
   });
   
   //리스트 정렬 및 이동
    var currentPosition;
    var boardIndex;
    var listArray;
    var startPos;
	$("#boardSort").sortable({
		connectWith: ".listWrap",
		placeholder: "list-placeholder",
		handle: ".listTitleWrap",//handle: 해당 엘리먼트를 선택해야 이동이 가능하게 해주는것(손잡이 같은것)
		start: function(event, ui) {
    		//console.log($('#boardSort').sortable('toArray'));
    		listArray = $('#boardSort').sortable('toArray');
			startPos = ui.item.index() + 1;
			selectListIndex =  $('#' + listArray[ui.item.index()].valueOf() + ' > input:hidden').val();
      	},
      	stop: function(event, ui) {
			listArray = $('#boardSort').sortable('toArray');
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
    	console.log($('#boardSort').sortable('toArray'));
	    var result = $('#boardSort').sortable('toArray');
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

// 	$(".cardSort").sortable({
// 		connectWith: ".cardSort",
// 		placeholder: "card-placeholder",
// 		start: function(event, ui) {
// 			console.log("start card position : " + (ui.item.index() + 1));
// 			console.log("item id : " + ui.item.attr("id"));
// 		},
// 		stop: function(event, ui) {
// 			console.log("changed card position : " + (ui.item.index() + 1));
// 			console.log("item id : " + ui.item.attr("id"));
// 			console.log("부모태그의 형제태그의 자식태그의 자식태그 카드의 보드인덱스 : " + $('#' + ui.item.attr('id')).parent('cardSort').prev().children('div > #card_board_index').val());
			
// 			console.log("item 1st child 카드의 보드인덱스 : " + $('#' + ui.item.attr('id') + ' > #card_board_index').val());
// 			console.log("item 2st child 카드의 리스트오더 : " + $('#' + ui.item.attr('id') + ' > #card_list_order').val());
// 			console.log("item 3st child 카드의 카드오더 : " + $('#' + ui.item.attr('id') + ' > #card_card_order').val());
// 		}
// 	});
	
	$(".cardSort").sortable({
       connectWith: ".cardSort",
       placeholder: "card-placeholder",
   });
	
   // show-menu 모달 띄우기
    $("#show-menu").click(function(){
      let pos = $(this).position();
      let left = pos.left;
      let top = pos.top;
      $(".board-menu-content").css({
         "top": top + 10,
         "left": left - 170,
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
	  var archive = $(this);
      let pos = $(this).position();
      let left = pos.left;
      let top = pos.top;
      console.log(pos);
      $("#modalArchive").css({
         "top": top -10,
         "left": left,
         "position": "absolute"
      }).show();
      $(document).mouseup("#modalArchive", function(e){
          if($("#modalArchive").has(e.target).length === 0){
             $("#modalArchive").hide();
          }
       });
      // 모달창의 카드 추가버튼 클릭시 모달창 닫히고 카드추가폼 보이기
      $(".addCard").click(function(){
    	  $("#modalArchive").hide();
    	  $(archive).parents(".menu-modal").parents(".listTitleWrap").parents(".list").children(".cardAddWrap").children(".addCardLabel").hide();
    	  $(archive).parents(".menu-modal").parents(".listTitleWrap").parents(".list").children(".cardAddWrap").children(".addCardForm").show();
      });
 /*      $(".archiveAllCards").click(function(){
    	 var card_content = $(archive).parents(".menu-modal").parents(".listTitleWrap").parents(".list").children(".cardWrap").children(".cardContent").children(".cardTitle");
      	 console.log(card_content);
    	 var cardContentVal = $(card_content).val();
      		 
    	 console.log(cardContentVal);
      }); */
      $(".archiveList").click(function(){
    	  var listArchive = $(archive).parents(".menu-modal").siblings(".listTitle").children("#listId"); 
    	  var listId = listArchive.val();
    	  /* let board_index = $(archive).parents(".menu-modal").parents(".list").siblings("#archive_board_index").val(); */
    	  console.log("리스트아이디 " + listId + "보드인덱스 " + board_index);
    	  $.ajax({
    		 url : "updateArchive.do",
    		 type : "post",
    		 data :{
    			 /* board_index : board_index, */
    			 list_id : listId
    		 },
    		 dataType : "json",
    		 success : function(data){
    			 
    		 }
    		 
    	  });
      });
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
   
 	//멤버추가 
   $(document).on("click", ".UserSearch", function(){
         var userId = $("#serchUserId").val();
         var values = [];
         console.log(userId);
          $.ajax({
              async: true, 
               type : "GET",
               url : "searchUser.do",
               data : {email : userId},
               dataType : "json",
               success : function(memberList) {
                  
                  $(".searchResult").append("<ul>");
                  
                  for (var i = 0; i < memberList.length; i++) {  
                        $(".searchResult").append(
                       "<form id='addMemberForm' action='insertMember.do' >"
                       +"<input type='hidden' name='insertCondition' value='aaa'>"
                       +"<input type='hidden' name='board_index' value='${boardContents[0].board_index}'>"
                      +"<input type='hidden' name='user_id' value='"+memberList[i].user_id+ "'>"
                         +"<li>"+memberList[i].name + "  "+ memberList[i].email + "    "+
                      "<button id='addMember'>멤버 추가</button> "
                      + "</li> "+"</form>"
                        );      
                                               
                        $('#addMember').click(function() {
	                       // var user_id =${user.user_id};
	                        
                           if (memberList[i].user_id == user_id) {
                          	 this.document.getElementById("addMemberForm").submit();
                           } else {
                        	   alert("본인은 멤버로 초대할 수 없어요~~")
                           }
                           });
                   }   
                  
                  $(".searchResult").append("</ul>");
                }  
          });
   
   });
   // 멤버 정보 확인 
   $(".open-member").click(function(){
      
     var member_name = $(this).children(".member_name").val();
     var member_email = $(this).children(".member_email").val();
     var member_img = $(this).children(".member_img").val();
     var member_user_id = $(this).children(".member_user_id").val();
     var board_index = $(this).children(".member_board_index").val();
          
      let pos = $(this).position();
      let left = pos.left;
      let top = pos.top;
      
      $("#MemberModal").css({
         "top": top+30,
         "left": left,
         "position": "absolute"
      }).show();
      var wrap_div = $('<div></div>');
      $(wrap_div).append("<div class=\"img_area\"></div>");
      $(wrap_div).find('.img_area').append("<img id='memberImg' src =\"/webapp/upload/" + member_img +  "\" />");
      $(wrap_div).append("<div class=\"info_area\"></div>");
      $(wrap_div).find('.info_area').append("<input type='hidden' value='"+member_user_id+"' name='member_user_id' id='member_user_id'>");
      $(wrap_div).find('.info_area').append("<p>"+member_name+"</p>");
      $(wrap_div).find('.info_area').append("<p>"+member_email+"</p>");

      $(".member-modal").html(wrap_div);
      
     
      /* $(document).mouseup("#MemberModal", function(e){
         if($("#MemberModal").has(e.target).length === 0){
            $("#MemberModal").hide();
         } */
      //});
      var html = "<form class='deleteMember' action='deleteMember.do'> 보드 탈퇴하기";
      html += "<input type='hidden' value="+member_user_id+" name='user_id' id='user'>";
      html += "<input type='hidden' value="+member_user_id+" name='user_id'";
      html += "<input type='hidden' value="+board_index+" name='board_index' id='board_index'>";
      html += "<button class='btn' id='delete' >탈퇴</button>";
      html += "</form>";
     
      $(".delete-memeber").html(html);
      
      
     $(document).on("click", "#delete", function(){
        confirm("정말 탈퇴하시겠습니까");
        let user_id = $(this).siblings("#user").val();
        let board_index = $(this).siblings("#board_index").val();
        
        $.ajax({
             async: true, 
              type : "POST",
              url : "deleteMember.do",
              data : {
                 user_id : user_id,
                 board_index : board_index
              },
              dataType : "json",
              success : function(data) {
                 location.reload();
                   
                 }
              });
        });
   });
   
   $("#changePermission").click(function(){
      var member_id = $(this).closest('.modal-content').find('.member-modal .info_area #member_user_id').val();
      console.log(member_id);
     
      $(".delete-memeber").hide();
      $(".modal-header").hide();
      $(".permission-modal-header").show();
      $(".modal-body").hide();
      $(".permission-modal-body").show();
      $('.update-memeber form').find('[name=user_id]').remove();
      $('.update-memeber form').append('<input type="hidden" name="user_id" value="'+member_id+'" id="update-user-id"/>');
      
   });

   
   $("#update-user-admin").click(function(){
      let user_id = $(this).siblings("#update-user-id").val();
      location.href="updateMember.do?type=admin&user_id="+user_id+"";
   });
   
   $("#update-user-normal").click(function(){
      let user_id = $(this).siblings("#update-user-id").val();
      location.href="updateMember.do?type=normal&user_id="+user_id+"";
   });
   
   // 보드 정보보기
   $(".show-menu-items-aboutBoard").click(function(){
      let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
     $("#boardDescriptionModal").css({
         "top": top + 10,
         "left": left -170,
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
   $(".back-to-show-menu").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
      $("#boardDescriptionModal").hide();
      $(".board-menu-content").show();

   }); 
   // show-menu로 돌아가기
   $(".back-to-show-menu").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
      $("#boardColorChangeModal").hide();
      $(".board-menu-content").show();

   }); 
   // show-menu로 돌아가기
   $(".back-to-show-menu").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
      $("#boardSearchModal").hide();
      $(".board-menu-content").show();

   }); 
   
   // 보드 설명 변경폼 띄우기
   $(".boardDescriptionFake").click(function(){
     $(this).hide();
     var boardContent = $(this).text();
     console.log(boardContent);
     $(".boardDescriptionForm").children("#boardContent").text(boardContent);
     $(".boardDescriptionForm").show();
   });
   // 보드변경폼 닫기
  $("#boardDescriptionFormClose").click(function(e){
       $(".boardDescriptionForm").hide();
       $(".boardDescriptionFake").show();  
   });  
   // 보드설명 변경하기
   $(document).on("click", "#boardDescriptionButton", function(){
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
           $(".boardDescriptionFake").text(data);    
           $(".boardDescriptionForm").hide();
           $(".boardDescriptionFake").show();      
              }
      }); 

   });
   // 보드 배경색 바꾸기
    $(".show-menu-items-change-color").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
     $("#boardColorChangeModal").css({
         "top": top + 10,
         "left": left -170,
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
   // 보드 내 검색하기
    $(".show-menu-items-search").click(function(){
     let pos = $("#show-menu").position();
      let left = pos.left;
      let top = pos.top;
     $("#boardSearchModal").css({
         "top": top + 10,
         "left": left -170,
         "position": "absolute"
     }).show(); 
     $(document).mouseup("#boardSearchModal", function(e){
            if($("#boardSearchModal").has(e.target).length === 0){
               $("#boardSearchModal").hide();
            }
     });      
   });
   $("#boardSearchClose").click(function(){
     $("#boardSearchModal").hide();
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
   
    //상단바 검색(전체)
    $("#searchKey").keyup(function() { 
    	const result_board_ul= document.getElementById('result_board_ul');
    	const result_card_ul = document.getElementById('result_card_ul');
    	const result_list_ul = document.getElementById('result_list_ul');
    	
    	result_board_ul.innerHTML='';
    	result_card_ul.innerHTML='';
    	result_list_ul.innerHTML='';
    	
       var search = document.getElementById("searchKey").value;
       console.log("사이즈  : "+search.length);
       if(search.length < 1) {    //아무것도없을 때 false
    	   $(".result_wrap").hide();
    	   return false;	 
       }
    	         
       $.ajax({
            async: true,
            type : "post",
            url : "searchBoardAll.do",
            dataType: "json",
            data : {
               content : search,
               title : search
            },
            success : function(data){
            	
            	if(data.length < 1 ){  // 리턴받은 데이터가 없으면 false
            	   $(".result_wrap").hide();
              	   return false;
            	}
            	
            	 console.log("데이타 길이 :"+data.length);
            	
                  var i;
                  var boardResult = "";
                  var listResult = "";
                  var cardResult = "";
                  for( i=0; i < data.length ;i++){
                  
                     if (data[i].list_id == null) {   // 리스트 아이디 널 -> 보드 
                        
                        $(".result_wrap").show();
                        console.log("보드  i : " + i);     
                        
                        $(".result_board_ul").append("<li><a href='#'>"+ data[i].title+'</a></li>');  //보드에서는 title만 찍힘
                        
    
                     } else if (data[i].card_id == null){ // 카드 아이디 널 -> 리스트 
                       console.log(" 리스트 i :" + i); 
                       $(".result_wrap").show();
                       listResult = "<li><a href='#'>"+ data[i].title+'</a></li>';
                       $(".result_list_ul").append(listResult);   //리스트에서는 title만 찍힘
                      
                     } else {                                                    //카드에서는 content, title 둘 다 
                      
                       if(data[i].content == null) {  //카드의 내용이 널이면 
                    	   $(".result_wrap").show();
                           $(".result_card_ul").append('<li>'+ data[i].title+'</li><br>');
                           
                            
                         } else {
                        	$(".result_wrap").show();
                            $(".result_card_ul").append('<li>'+ data[i].title + '</li><br>');
                            $(".result_card_ul").append('<li>'+ data[i].content + '</li><br>');
                          }
             
                     }  
                  
               }
            }            
       }); 
       $(document).mouseup(".result_wrap", function(e){
           if($(".result_wrap").has(e.target).length === 0){
              $(".result_wrap").hide();
           }
   		}); 
    });
	
     //보드 내 검색
	 $("#boardSearchInput").keyup(function() { 
		 		 
		const board_result_list_ul= document.getElementById('board_result_list_ul');
	    const board_result_card_ul = document.getElementById('board_result_card_ul');
		 		 
		var board_id = document.getElementById("SearchBoard_id").value;
		var search = document.getElementById("boardSearchInput").value; 
		if(search.length < 1) {    //아무것도없을 때 false
	    	   $(".board_Search_wrap").hide();
	    	   return false;	 
	       }

		board_result_list_ul.innerHTML='';
		board_result_card_ul.innerHTML='';
		   		 		  
		   $.ajax({
			 async: true,
	         type : "post",
	         url : "searchBoard.do",
	         dataType: "json",
	         data : {
	      	 	board_id : board_id,
	            content : search,
	            title : search
	         },
	         success : function(data){
	 
        	   if(data.length < 1 ){  // 리턴받은 데이터가 없으면 false
             	   $(".result_wrap").hide();
              	   return false;
               }
	          	
	            var i; 	      	 	
	      	 	$(".board_Search_wrap").show();	
	      		for( i=0; i < data.length ;i++){
	      			if (data[i].card_id == null && data[i].list_id !=null){ // 카드 아이디 널 -> 리스트 
                       console.log(" 리스트 i :" + i); 
                       $(".board_Search_wrap").show();
                       $(".board_result_list_ul").append("<li><a href='#'    class='show-menu-search-result-list'>"+ data[i].title+'</a></li>');   //리스트에서는 title만 찍힘
	                      
	                } else if(data[i].content == null && data[i].list_id !=null) {  //카드의 내용이 널이면 
                   	   $(".board_Search_wrap").show();
	                		
                          $(".board_result_card_ul").append("<li><a href='#'>"+ data[i].title+'</a></li><br>');
                           
                        } else {
                       	$(".board_Search_wrap").show();
                           $(".board_result_card_ul").append('<li><a>'+ data[i].title + '<a></li><br>');
                           $(".board_result_card_ul").append('<li><a>'+ data[i].content + '<a></li><br>');
                         }
		      		}
	      		}
	      	   
	         
	 		});       
	});
     // 보드 내 검색 결과 클릭 시
     $(document).on("click", ".show-menu-search-result-list", function(){
    	 var result = $(this).text();
    	 console.log(result);
		var selectList = '.listTitleWrap div:contains('+result+')';
        $('.listTitleWrap div:contains('+result+')').css("color", "red"); 
       /*  $(".list:not($('.listTitleWrap div:contains("+result+")'))").hide(); */
     });
});
function calendar_go(){
	window.open("schedule_sample.jsp" ,
			"toolbar=no,status=no,menubar=no,resizable=yes, location=no, top=100,left=100,width=380,height=380,scrollbars=no");
};


</script>
<body>
	<header role="banner">
		<nav role="navigation" class="navbar navbar-static-top">
			<div class="navbar container">
				<div class="navbar-header">
					<form class="navbar-form navbar-left" role="search">
						<button type="button" class="btn" aria-label="Left Align"
							onclick="location.href='getBoardList.do'">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</button>
						<button type="submit" class="btn">Board</button>
						<div class="form-group">
							<div class="input-group">
								<input type="hidden" value="${boardContents[0].board_id}"
									id="SearchBoard_id">
								<!-- 검색  -->
								<input type="text" class="form-control" placeholder="Search"
									id="searchKey">

								<!--검색 결과 성공시 표시  -->

								<span class="input-group-btn">
									<button type="submit" class="btn btn-default">

										<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
									</button>

								</span>

							</div>
							<!--검색 결과 표시  -->
							<div class="result_wrap" >
								<div class="search_result_wrap">
								<div class="result_wrap_title">검색결과</div>
								<hr>
								<div class="search_result_title" id="result_board">보드 결과
									<ul id= "result_board_ul" class="result_board_ul">

									</ul>
								</div>
								<hr>
								<div class="search_result_title" id="result_list">리스트 결과
									<ul id ="result_list_ul" class="result_list_ul">

									</ul>
								</div>
								<hr>
								<div class="search_result_title" id="result_card">카드 결과
									<ul id="result_card_ul" class="result_card_ul">

									</ul>
								</div>
							</div>
							</div>
						</div>

					</form>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="getBoardList.do"
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
					<button class="btn btn-default" id="boardTitleChangeBtn">제목바꾸기</button>
				</form>
			</div>
			<div class="board-hader-profile" style="float: left; color: white">
				<a class="btn btn-default board-team" href="#">Personal</a> | <a
					id="permission-level" class="btn btn-default" href="#"
					title="Only board members can see and edit this board"> <span
					class="board-header-btn-icon icon-sm glyphicon glyphicon-lock"></span>
					<span class="board-header-btn-text">Private</span>
				</a>
			</div>

			<div class="board-header-facepile" style="float: left; color: white">
				&nbsp;| <a class="btn btn-default open-member" href="#MemberModal"
					data-toggle="modal"> <img src="/webapp/upload/${user.image }"
					id="memberImg"> <input type="hidden" value="${user.name }"
					class="member_name" /> <input type="hidden" value="${user.email }"
					class="member_email" /> <input type="hidden"
					value="${user.image }" class="member_img" /> <input type="hidden"
					value="${user.user_id }" class="member_user_id" /> <input
					type="hidden" value="${boardContents[0].board_index }"
					class="member_board_index" />
				</a>
				<c:forEach var="member" items="${member }" begin="0"
					varStatus="status">
					<c:if test="${user.user_id != member.user_id}">
						<a class="btn btn-default open-member" href="#MemberModal"
							data-toggle="modal"> <img
							src="/webapp/upload/${member.image }" id="memberImg"> <input
							type="hidden" value="${member.name }" class="member_name" /> <input
							type="hidden" value="${member.email }" class="member_email" /> <input
							type="hidden" value="${member.image }" class="member_img" /> <input
							type="hidden" value="${member.user_id }" class="member_user_id" />
							<input type="hidden" value="${boardContents[0].board_index }"
							class="member_board_index" />
						</a>
					</c:if>
				</c:forEach>
				|
			</div>
			<div class="member-invite" style="float: left; color: white">
				<div class="member" id="Addmember">
					<a class="btn" id="open-add-member" href="#addMemberModal"
						data-toggle="modal" style="color: black;">멤버를 초대해요</a>
				</div>
			</div>
			<div class="board-header-btns" style="float: right">
				<a class="btn btn-default js-board-header-subscribed" href="#">
					<span
					class="icon-sm glyphicon glyphicon-eye-open board-header-btn-icon"></span>
					<span class="board-header-btn-text u-text-underline">Watching</span>
				</a> <a class="btn btn-default" href="#" onclick="calendar_go()"> <span
					class="icon-sm glyphicon glyphicon-calendar board-header-btn-icon"></span>
					<span class="board-header-btn-text u-text-underline">Calender</span></a>
				<a class="btn btn-default js-show-sidebar" href="#" id="show-menu">
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
					<div id="lo${list.list_order}" class="listWrap">
						<input type="hidden" value="${list.board_index }" id="archive_board_index">
						<div class="list">
							<div class="listTitleWrap">
								<div class="listTitle">${list.title}
									<input type="hidden" value="${list.list_id}" id="listId">
								</div>
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
													value="${card.board_index }"> 
												<input type="hidden"
													id="card_list_order" value="${card.list_order }"> 
												<input type="hidden" id="card_card_order"
													value="${card.card_order }">
												<input type="hidden" value="${card.card_id}" id="cardId">
												<div class="cardContent">
													<a class="cardTitle"
														href="getCard.do?board_index=${card.board_index}&board_id=${card.board_id }&list_title=${list.title}">${card.title}</a>
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
		<div id="listAddWrap">
			<div id="addListLabel">+ 리스트 추가</div>
			<form id="addListForm">
				<input id="addListTitle" type="text" name="title"
					placeholder="리스트제목을 입력해라" autocomplete="off"> <input
					id="board_id" type="hidden" name="board_id"
					value="${boardContents[0].board_id}">
				<button id="addlist1" class="btn btn-green">리스트 추가</button>
				<span class="close" id="addListClose">x</span>
			</form>
		</div>
		</div>
	</div>
	<div class="list" id="newList" style="display: none">
		<div class="listTitleWrap">
			<div class="listTitle"></div>
			<div class="menu-modal" style="float: right">
				<a
					class="card-archive icon-sm glyphicon 
           				 glyphicon-option-horizontal"
					href="#modalArchive" data-toggle="modal"></a>
			</div>
			<form class="listTitleForm" style="display: none">
				<input class="listTitleChangedValue" type="text" name="title"
					autocomplete="off">
				<button class="btn" id="ListTitleChangeBtn">변경</button>
				<input type="hidden" name="board_index" value="${list.board_index }">
			</form>
		</div>
		<div class="cardWrap">
			<div class="cardContent">
				<div class="card-menu" style="float: right">
					<a id="card-menu"
						class="button-link js-change-card-archive icon-sm glyphicon glyphicon-pencil"
						href="#modalCard" data-toggle="modal"></a>
				</div>
			</div>
		</div>
		<div class="cardAddWrap">
			<div class="addCardLabel">+ 카드 추가</div>
			<form class="addCardForm">
				<textarea name="addCardTitle" class="addCardTitle" cols="30"
					rows="10" placeholder="카드내용을 입력하세요" autocomplete="off"></textarea>
				<input id="board_id" type="hidden" name="board_id"
					value="${boardContents[0].board_id}"> <input id="list_id"
					type="hidden" name="list_id" value="${list.list_id}"> <input
					id="list_order" type="hidden" name="list_order"
					value="${list.list_order}">
				<button class="btn btn-green" id="addCardButton">카드 추가</button>
				<span class="close" id="addCardClose"></span>
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
					<div class="show-menu-item">
						<a class="show-menu-items-aboutBoard" href="#"><span
							class="icon-sm glyphicon glyphicon-align-left"> </span>&nbsp;&nbsp;About
							This Board <span><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add
									a description to your board</h5></span></a>
					</div>
					<div class="show-menu-item">
						<a class="show-menu-items-change-color" href="#"><span
							class="icon-sm glyphicon glyphicon-tint"> </span>&nbsp;&nbsp;Change
							Background</a>
					</div>
					<div class="show-menu-item">
						<a class="show-menu-items-search" href="#"><span
							class="icon-sm glyphicon glyphicon-search"> </span>&nbsp;&nbsp;Search
							Cards</a>
					</div>
					<div class="show-menu-item">
						<a class="show-menu-items" href="#"><span
							class="icon-sm glyphicon glyphicon-option-horizontal"> </span>&nbsp;&nbsp;More</a>
					</div>
					<hr>
					<div class="show-menu-item">
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
						<a href="#" class="back-to-show-menu"><span
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
							<span><button id="boardDescriptionFormClose" class="close"
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
					<button id="boardColorModalClose" class="close"
						data-dismiss="modal" style="float: right">×</button>
					<h4 class="modal-title">
						<a href="#" class="back-to-show-menu"><span
							class="glyphicon glyphicon-chevron-left"></a> </span>&nbsp;&nbsp;Color
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
	<!-- 보드 내 검색 -->
	<div id="boardSearchModal" style="display: none">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header" style="height: 60px">
					<button id="boardColorModalClose" class="close"
						data-dismiss="modal" style="float: right">×</button>
					<h4 class="modal-title">
						<a href="#" class="back-to-show-menu"><span
							class="glyphicon glyphicon-chevron-left"></a> </span>&nbsp;&nbsp;Search
						Card
					</h4>
				</div>
				<div class="modal-body">
					<div class="boardSearchForm">
						<input type="text" id="boardSearchInput">
					</div>
						
					<!-- 보드 내 검색 추가 -->	
					<div class="board_Search_wrap">
						<div class="board_result_list">리스트 결과
								<ul id= "board_result_list_ul" class="board_result_list_ul">

								</ul>
						</div>
						<div class="board_result_card">카드 결과
								<ul id= "board_result_card_ul" class="board_result_card_ul">

								</ul>
						</div>
						
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
					<h5 class="modal-title">리스트 기능</h5>
				</div>
				<!-- body -->
				<div class="modal-body">
					<div>
						<a class="addCard" href="#">카드 추가하기</a>
					</div>
					<hr>
					<div>
						<a class="archiveAllCards" href="#">
					    	모든 카드 - 아카이브
					    </a>
					</div>
					<hr>
					<div>
						<a class="archiveList" href="#">리스트 - 아카이브</a>
					</div>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary " data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 카드변경 -->
	<div id="cardEditModal" style="display: none">
		<div class="modal-dialog">
			<div class="modal-content" style="display: inline">
				<div class="cardEditor"
					style="width: 256px; float: left;">
					<form class="cardEditForm">
						<textarea class="cardEditor-title">
                    </textarea>
						<button class="btn btn-primary" id="cardEditButton">저장</button>
					</form>
				</div>

				<div class="cardEditor-buttons" style="float: left; margin-left:20px;">
					<a href="#"><span class="icon-sm glyphicon glyphicon-edit">
					</span> <span>Edit Labels</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-user"> </span> <span>Change
							Members</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-arrow-right"> </span> <span>Move</span>
					</a> <a href="#"><span class="icon-sm glyphicon glyphicon-copy">
					</span> <span>Copy</span> </a> <a href="#"><span
						class="icon-sm glyphicon glyphicon-time"> </span> <span>Change
							Due Date</span> </a> 
							<a href="#" class="card_archive"><span
						class="icon-sm glyphicon glyphicon-trash"> </span> <span>Archive</span>
					</a>
				</div>
				<button class="close" data-dismiss="modal" style="float: left; "
					id="cardEditor-close">
					<span aria-hidden="true">&times;</span>
				</button>
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
						<input type="text" name="email" id="serchUserId" autocomplete="off">
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
	<!-- 모달 멤버 확인 -->
	<div id="MemberModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button class="close" data-dismiss="modal" aria-label="Close"
						style="float: right">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="member-modal"></div>

				</div>

				<!-- 권한 수정 눌렀을때 모달 헤더 -->
				<div class="permission-modal-header">
					<!-- 닫기(x) 버튼 -->
					<button class="close" data-dismiss="modal" aria-label="Close"
						style="float: right">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">멤버 권한 수정</h4>
					<!-- header title -->
				</div>

				<!-- body -->
				<div class="modal-body">
					<div class="update-memeber">
						<a href='#' id="changePermission"> 권한 수정 </a>
					</div>
					<div class="delete-memeber"></div>
				</div>

				<!-- 권한 수정 눌렀을때 모달 바디 -->

				<div class="permission-modal-body">
					<div class="update-memeber">
						<form class="permission">
							<a id='update-user-admin' href='#'> 관리자로 변경 </a> <br> <a
								id='update-user-normal' href='#'> 일반회원으로 변경 </a>
						</form>

						<div class="delete-memeber"></div>
					</div>
					<!-- Footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>