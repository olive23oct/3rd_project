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
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>   
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
body {
   position: relative;
}

element.style {
   overflow: hidden;
   overflow-wrap: break-word;
   resize: none;
   height: 108px;
}

.editable .description-content .description-edit .description:focus {
   background: #fff;
   border: none;
   box-shadow: inset 0 0 0 2px #0079bf;
}

.editable .description-content .description-edit .description {
   min-height: 108px;
   background: #fff;
   box-shadow: none;
}

.window-main-col .edit textarea.field {
   display: block;
   height: auto;
}

.editing .edit .field, .editing .edit .field:active {
   background: rgba(9, 30, 66, .04);
   border-color: rgba(9, 30, 66, .13);
   box-shadow: inset 0 0 0 1px rgba(9, 30, 66, .13);
   margin-bottom: 4px;
}

.iframe-input.focus, input[type=email]:focus, input[type=password]:focus,
   input[type=search]:focus, input[type=text]:focus, textarea:focus {
   background: #fff;
   border: none;
   box-shadow: inset 0 0 0 2px #0079bf;
}

.iframe-input:hover, input[type=email]:hover, input[type=password]:hover,
   input[type=search]:hover, input[type=text]:hover, textarea:hover {
   background-color: #ebecf0;
   border: none;
   box-shadow: inset 0 0 0 2px #dfe1e6;
}

.button:focus, .iframe-input:focus, button:focus, input:not ([type=file]
    ):focus, textarea:focus {
   outline: 0;
}

textarea {
   resize: vertical;
   width: 100%;
}

.button, .iframe-input, button, input:not ([type=file] ), textarea {
   background-color: #fafbfc;
   border: none;
   box-shadow: inset 0 0 0 2px #dfe1e6;
   color: #172b4d;
   box-sizing: border-box;
   -webkit-appearance: none;
   border-radius: 3px;
   display: block;
   line-height: 20px;
   margin-bottom: 12px;
   padding: 8px 12px;
   transition-property: background-color, border-color, box-shadow;
   transition-duration: 85ms;
   transition-timing-function: ease;
}

body, button, html, input, select, textarea {
   color: #172b4d;
   font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto,
      Noto Sans, Ubuntu, Droid Sans, Helvetica Neue, sans-serif;
   font-size: 14px;
   line-height: 20px;
   font-weight: 400;
}

textarea {
   overflow: auto;
}

button, input, optgroup, select, textarea {
   color: inherit;
   font: inherit;
   margin: 0;
}

user agent stylesheet
textarea:focus {
   outline-offset: -2px;
}

user agent stylesheet
:focus {
   outline: -webkit-focus-ring-color auto 1px;
}

user agent stylesheet
textarea {
   -webkit-writing-mode: horizontal-tb !important;
   text-rendering: auto;
   color: initial;
   letter-spacing: normal;
   word-spacing: normal;
   text-transform: none;
   text-indent: 0px;
   text-shadow: none;
   display: inline-block;
   text-align: start;
   -webkit-appearance: textarea;
   background-color: white;
   -webkit-rtl-ordering: logical;
   flex-direction: column;
   resize: auto;
   cursor: text;
   white-space: pre-wrap;
   overflow-wrap: break-word;
   margin: 0em;
   font: 400 13.3333px Arial;
   border-width: 1px;
   border-style: solid;
   border-color: rgb(169, 169, 169);
   border-image: initial;
   padding: 2px;
}

.editable.editing {
   cursor: auto;
}

html {
   font-family: sans-serif;
   -ms-text-size-adjust: 100%;
   -webkit-text-size-adjust: 100%;
}

user agent stylesheet
html {
   color: -internal-root-color;
}

.button-link {
   background-color: rgba(9, 30, 66, .04);
   box-shadow: none;
   border: none;
   border-radius: 3px;
   box-sizing: border-box;
   cursor: pointer;
   display: block;
   height: 32px;
   margin-top: 8px;
   max-width: 300px;
   overflow: hidden;
   padding: 6px 12px;
   position: relative;
   text-decoration: none;
   text-overflow: ellipsis;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
   white-space: nowrap;
   transition-property: background-color, border-color, box-shadow;
   transition-duration: 85ms;
   transition-timing-function: ease;
}

.window-center {
   background-color: red;
   width: 750px;
   margin-top: 10em;
   margin-left: 25em;
}

.window-sidebar {
   clear: both;
   float: none;
   margin-top: 0;
   margin-left: 50em;
   padding: 0;
   width: auto;
   float: right;
   padding: 0 16px 8px 8px;
   width: 168px;
   overflow: hidden;
   z-index: 10;
}

.card-label {
   background-color: #b3bac5;
   border-radius: 4px;
   color: #fff;
   display: block;
   margin-right: 4px;
   max-width: 100%;
   overflow: hidden;
   padding: 4px 6px;
   position: relative;
   text-overflow: ellipsis;
   white-space: nowrap;
   -webkit-font-smoothing: antialiased;
   -moz-osx-font-smoothing: grayscale;
}

li {
   text-align: -webkit-match-parent;
}

ol, ul {
   list-style: none;
   margin: 0;
   padding: 0;
}

ul {
   list-style-type: disc;
}

.card-label.mod-selectable.selected {
   margin-left: 4px;
}

.card-label-green {
   background-color: #61bd4f;
}

.card-label-yellow {
   background-color: #f2d600;
}

.card-label-orange {
   background-color: #ff9f1a;
}

.card-label-red {
   background-color: #eb5a46;
}

.card-label-blue {
   background-color: #0079bf;
}
#Description_content{
   display:none;
}



/* 목록에서 여백 및 패딩 제거 */
#checklist ul {
  margin: 0;
  padding: 0;
}

/* Style the list items */
/* 목록 항목 스타일 지정 */
#checklist ul li {
  cursor: pointer;
  position: relative;
  /* padding: 12px 8px 12px 40px; */
  padding: 12px 8px 12px 40px;
  list-style-type: none;
  background: #eee;
  font-size: 18px;
  transition: 0.2s;
  
  /* make the list items unselectable */
  /* 목록 항목을 선택 취소 할 수있게 만들기 */
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Set all odd list items to a different color (zebra-stripes) */
/* 이상한 목록 항목을 다른 색으로 설정하십시오 (제브라 줄무늬). */
#checklist ul li:nth-child(odd) {
  background: #f9f9f9;
}

/* Darker background-color on hover */
/* 마우스를 올리면 배경색이 어두워집니다 */
#checklist ul li:hover {
  background: #ddd;
}

/* When clicked on, add a background color and strike out text */
/* 클릭하면 배경색을 추가하고 텍스트를 제거합니다. */
#checklist ul li.checked {
  
  color:gray;
  text-decoration: line-through;
  font-style: oblique;
  
}

/* Add a "checked" mark when clicked on */
/* 클릭하면 "체크 된"마크 추가 */
#checklist ul li.checked::before {
  content: ''; 
  position: absolute;
  border-color: gray;
  border-style: solid;
  border-width: 0 3px 3px 0;
  top: 10px;
  left: 45px;
  transform: rotate(45deg);
  height: 13px;
  width: 10px;
}

/* Style the close button */
/* 닫기 버튼 스타일 지정 */
#checklist .close {
  position: absolute;
  right: 0;
  top: 0;
  padding: 12px 16px 12px 16px;
}

.close:hover {
  background-color: #f44336;
  color: white;
}

/* Style the header */
/* 헤더 스타일 지정 */
#checklist .header {
  background-color: #f44336; 
  padding: 30px 40px;
  color: black;
  text-align: center;
}

/* Clear floats after the header */
/* 헤더 뒤의 플로트 삭제 */
#checklist .header:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the input */
/* 인풋 스타일 지정 */
#checklist input {
  margin: 0;
  border: none;
  border-radius: 0;
  width: 75%;
  padding: 10px;
  float: left;
  font-size: 16px;
}

/* Style the "Add" button */
/* 'Add' 버튼 스타일 지정 */
#checklist .addBtn {
  padding: 10px;
  width: 25%;
  background: #d9d9d9;
  color: #555;
  float: left;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  transition: 0.3s;
  border-radius: 0;
}

#checklist .addBtn:hover {
  background-color: #bbb;
}
#checklistTitleFormHidden{
   display:none;
}
.checklistContentForm{
   display:none;
}

</style>
<script>
$(function() {
   var Description_content = $("#Description_content");
   $("#btn").on("click", function() {
      Description_content.show();
   });
   var idx = 1;
    $("#addcheckbox").on("click", function() {
      $("#content").append("<br/><input type='checkbox' id='checklist_content' name='checklist_content"+idx+"' value='checklist_content"+idx+"'/><input type='text'><input type='button' value='저장'>");
      idx++;
    });
    
    
    $("#checklistTitle").dblclick(function (e) { //체크리스트 타이틀 더블클릭했을때
        e.preventDefault(); // 클릭 이벤트 외에 별도의 브라우저 행동을 막기 위해 사용 
        var checklistTitle = $(this).text();
        console.log("checklistTitle : " + checklistTitle);
        $("#checklistTitle").hide();//보드타이틀값 숨고   
        $("#checklistTitleFormHidden").show();//보드타이틀 폼이 보여진다
        $("#checklistTitleFormHidden").children("#checklistTitleChangedValue").val(checklistTitle);
        $("#checklistTitleFormHidden").children("#checklistTitleChangedValue").focus(); //id=boardTitleChangedValue인곳에 포커스가 간다
     });
    $('#checklistTitleChangeBtn').click(function() {
        let frm = $('#checklistTitleFormHidden');
        var checklist_title = $("#checklistTitle").text();
        console.log("checklist_title : " + checklist_title);
        $.ajax({
           method : 'post'
            ,data : {checklist_title : checklist_title}
           , url : "updateChecklistTitle.do"
           , data : $(frm).serialize()
           , success : function(result) {
             console.log("체크리스트타이틀변경 ajax");
              var text = $('#checklistTitleChangedValue').val();
              $(frm).hide();
              document.getElementById('checklistTitle').innerText = result;
              document.getElementById('checklistTitle').style = 'display:block;'
           }
           , error : function(e) {
              console.error(JSON.stringify(e));
             }
        });
     });
    
    
 // 체크리스트콘텐트  변경폼 띄우기
    $("li").dblclick(function (e) { 
        e.preventDefault();
        $(this).hide();
        //$(this).parents(".listTitleWrap").children(".listTitleForm").show(); 
        $(this).next(".checklistContentForm").show();
        $(this).next(".checklistContentForm").children(".checklistContentChangedValue").val($(this).text().trim().slice(0,-1).trim());
        $(this).next(".checklistContentForm").children(".checklistContentChangedValue").focus(); //id=listTitleChangedValue인곳에 포커스가 간다
        
    });

     $(".checklistContentForm").click(function() {
        var frm = $(this);
        $.ajax({
           method : 'post'
           , url : "updateChecklistContent.do"
           , data : frm.serialize()
           , dataType : "json"
           , success : function(result) {
              var text = $('.checklistContentChangedValue').val();
              frm.hide();
              frm.siblings('li').innerText = text;
              frm.siblings('li').style = 'display:block;'
           }
           , error : function(e) {
              console.error(JSON.stringify(e));
             }
        });
     }); 

     
   //comment 입력
      var insertCommentForm = document.getElementsByClassName("insertCommentForm");//"close"라는 클래스이름을 가진 요소를 가져온다
      var i;
      for (i = 0; i < insertCommentForm.length; i++) { //i는 0부터 class이름이 close를가진 갯수만큼 돌려준다
         insertCommentForm[i].onclick = function() { //close[0].onclick ~ close[마지막]
            var board_index = $("#board_index").val();
            var writer = $("#writer").val();
            var comment_content = $("#comment_content").val();
            console.log("writer: " + writer);
            console.log("board_index: " + board_index);
            $.ajax({
               async : true,
               type : "POST",
               url : "insertComment.do",
               data : {
                  board_index : board_index,
                  writer : writer,
                  comment_content : comment_content
               },
               dataType : "text",
               success : function(data) {
                  location.reload();
               }
            });

         }
      }
      
      //댓글 수정
      //comment 입력
      var updateCommentForm = document.getElementsByClassName("updateCommentForm");//"updateCommentForm"라는 클래스이름을 가진 요소를 가져온다
      var i;
      for (i = 0; i < updateCommentForm.length; i++) { //i는 0부터 class이름이 close를가진 갯수만큼 돌려준다
         updateCommentForm[i].onclick = function() { //close[0].onclick ~ close[마지막]
            var board_index = $(this).siblings("#board_index").val();
            var comment_id = $(this).siblings("#comment_id").val();
            var comment_content = $(this).siblings("#comment_content").val();
            alert("comment_content: " + comment_content);
            alert("board_index: " + board_index);
            alert("comment_id: " + comment_id);
            $.ajax({
               async : true,
               type : "POST",
               url : "updateComment.do",
               data : {
                  board_index : board_index,
                  comment_id : comment_id,
                  comment_content : comment_content
               },
               dataType : "text",
               success : function(data) {
                  location.reload();
               }
            });

         }
      }
      
      
      

      //댓글 삭제
      var deleteCommentForm = document.getElementsByClassName("deleteCommentForm");//"close"라는 클래스이름을 가진 요소를 가져온다
      var i;
      for (i = 0; i < deleteCommentForm.length; i++) { //i는 0부터 class이름이 close를가진 갯수만큼 돌려준다
         deleteCommentForm[i].onclick = function() { //close[0].onclick ~ close[마지막]
            var board_index = $(this).siblings("#board_index").val();
            var comment_id = $(this).siblings("#comment_id").val();

            alert("삭제comment_id: " + comment_id);
            alert("삭제board_index: " + board_index);
            $.ajax({
               async : true,
               type : "POST",
               url : "deleteComment.do",
               data : {
                  board_index : board_index,
                  comment_id : comment_id
               },
               dataType : "text",
               success : function(data) {
                  location.reload();
               }
            });

         }
      }
	// 스케줄러
	
	$("#start_date").datepicker({
		dateFormat : "yy-mm-dd",
		minDate:0,
		changeMonth: true, 
        changeYear: true,
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토' ],
        nextText: '다음 달',
        prevText: '이전 달'
    
	});
	$("#end_date").datepicker({
		dateFormat : "yy-mm-dd",
		minDate:0,
		changeMonth: true, 
        changeYear: true,
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토' ],
        nextText: '다음 달',
        prevText: '이전 달'
    
	});
	// 스케쥴 추가
	$("#scheduleButton").click(function(e){
		e.preventDefault();
		var board_idx = document.getElementById("board_index").value;
		console.log(board_idx);
		var startDate = document.getElementById("start_date").value;
		var endDate = document.getElementById("end_date").value;
		console.log("선택날짜" + startDate + " / " + endDate );
		$.ajax({
			url : "insertSchedule.do",
			type : "post",
			data : {
				board_index : board_idx,
				start_date : startDate,
				end_date : endDate
			},
			success : function(){
				console.log("스케쥴 에이작스 성공");
			}
		}); // ajax끝  
	});

	
   });
</script>
<title>카드페이지</title>
</head>
<body>
   <div class="container">
      <div class="row">
         <div class="col-md-8">
            <form action="updateCardContent.do">
               <div>
                  <h2>${card.title}</h2>
                  <p>in list ${list_title}</p>
               </div>
               <!-- id="window-center" -->
               <div id="Description">
                  <span class="icon-sm glyphicon glyphicon-align-left"></span>
                  <h3>내용넣는곳</h3>
                  <c:if test="${card.content == null}">
                     <p>
                        <a id="btn" href="#">내용을 입력하세요</a>
                     </p>
                  </c:if>
                  <p>
                     <a id="btn" href="#">${card.content}</a>
                  </p>
                  <div id="Description_content">
                     <textarea name="content"
                        class="field field-autosave js-description-draft description card-description"
                        placeholder="Add a more detailed description…"
                        style="overflow: hidden; overflow-wrap: break-word; resize: none; height: 108px;">${card.content}</textarea>
                     <input type="hidden" name="list_title" value="${list_title}">
                     <input type="hidden" name="board_index" value="${card.board_index}" id="board_index"> 
                     <input type="submit" value="저장">
                  </div><!-- <div id="Description_content"> -->
               </div><!-- <div id="Description"> -->
            </form><!-- <form action="updateCardContent.do"> -->
            <div id="attachment">
             <c:if test="${attachment != '[]'}">   
               <h3>첨부파일</h3>
                  <c:forEach var="list" items="${attachment}" begin="0" varStatus="status">
                     <form action="deleteAttachment.do">  
                        <div ></div>          
                        <%-- ${attachment} --%>
                        <c:if test="${fn:containsIgnoreCase(list, '.png')}"> <!-- file_name에 .png가 포함되어있으면  -->  
                           <img src="/webapp/attachment/${list.file_name}"  style="width: 50px;height:50px;"/>
                        </c:if>
                        <c:if test="${fn:containsIgnoreCase(list, '.jpg')}">  <!-- file_name에 .jpg가 포함되어있으면  --> 
                           <img src="/webapp/attachment/${list.file_name}"  style="width: 50px;height:50px;"/>
                        </c:if>
                        <span>${list.original_file_name}</span>
                        <span>
                           <input type="hidden" name="attachment_id" value="${list.attachment_id}"> 
                           <input type="hidden" name="board_index" value="${card.board_index}"> 
                           <input type="submit" value="삭제">
                        </span><br>
                     </form><!-- <form action="deleteAttachment.do">    -->
                     </c:forEach>
               </c:if>
            </div><!-- <div id="attachment"> -->


            <div id="checklist">
               <div class="checklist_content">
                  <span class="icon-sm glyphicon glyphicon-check"></span>
                  <h3>Checklist</h3>
                  <!-- 체크리스트 찍히는곳!! -->
                  <c:forEach var="checklist" items="${checklist}" begin="0"
                     varStatus="status">
                     <c:if test="${checklist.checklist_title != null}">
                     </ul>
                     </c:if>
                     <c:if test="${checklist.checklist_title != null}">
                        <!-- file_name에 .png가 포함되어있으면  -->
                        <div id="checklistTitleForm" class="header">
                           <h2 id="checklistTitle" style="margin: 5px">${checklist.checklist_title}</h2>
                           <div class="progress-bar bg-success" style="width:${checklist.percent }%">${checklist.percent}%</div>

                           <!-- <input type="button" value="삭제"> -->
                           <form id="checklistTitleFormHidden">
                              <input id="checklistTitleChangedValue" type="text" name="checklist_title"
                                 placeholder="보드제목 변경" autocomplete="off">
                              <input type="hidden" name="board_index" value="${checklist.board_index}"> 
                              <input type="hidden" name="checklist_id" value="${checklist.checklist_id}">
                              <button class="btn" id="checklistTitleChangeBtn">제목바꾸기</button>
                           </form>
                           <form action="insertChecklistContent.do" method="post" id="addTitleForm" class="addTitleForm">
                              <input type="text" name="checklist_content" class="checklist_content" id="checklist_content" placeholder="체크리스트 콘텐트를 입력해주세요">
                              <input type="hidden" name="board_index" value="${checklist.board_index}"> 
                              <input type="hidden" name="checklist_id" value="${checklist.checklist_id}">
                           </form>
                           <input type="button" value="추가" onclick="newContent()">
                        </div>
                        <!-- <div id="checklistTitleForm" class="header"> -->
                     <ul id="checklistContent">
                     </c:if>
                     <c:if test="${checklist.checklist_title == null}">
                        <%-- <input type="hidden" name="board_index" id="board_index" value="${card.board_index}">
                        <input type="hidden" name="checklist_id" id="checklist_id" value="${checklist.checklist_id}"> --%> 
                        <c:if test="${checklist.checklist_checked == 1}">
                           <li class="checked">
                              <span class="icon-sm glyphicon glyphicon-unchecked"></span>
                              ${checklist.checklist_content}
                              <input type="hidden" name="board_index" id="board_index" class="board_index" value="${card.board_index}">
                              <input type="hidden" name="checklist_checked" id="checklist_checked" class="checklist_checked" value="${checklist.checklist_checked}">
                              <input type="hidden" name="checklist_id" id="checklist_id" class="checklist_id" value="${checklist.checklist_id}">
                           </li>
                           <form class="checklistContentForm">
                                    <input class="checklistContentChangedValue" type="text" name="checklist_content" id="checklist_content"
                                          autocomplete="off"> 
                                       <input type="hidden" name="board_index" value="${checklist.board_index}"> 
                              <input type="hidden" name="checklist_id" value="${checklist.checklist_id}">
                                    <span><button class="btn btn-green" id="checklistContentChangeBtn">변경</button></span>
                                 </form>
                        </c:if>
                        <c:if test="${checklist.checklist_checked == 0}">
                           <li>
                              <span class="icon-sm glyphicon glyphicon-unchecked"></span>
                              ${checklist.checklist_content}
                              <input type="hidden" name="board_index" id="board_index" class="board_index" value="${card.board_index}">
                              <input type="hidden" name="checklist_checked" id="checklist_checked" class="checklist_checked" value="${checklist.checklist_checked}">
                              <input type="hidden" name="checklist_id" id="checklist_id" class="checklist_id" value="${checklist.checklist_id}">
                           </li>
                           <form class="checklistContentForm">
                                    <input class="checklistContentChangedValue" type="text" name="checklist_content" id="checklist_content"
                                          autocomplete="off"> 
                                       <input type="hidden" name="board_index" value="${checklist.board_index}"> 
                              <input type="hidden" name="checklist_id" value="${checklist.checklist_id}">
                                    <span><button class="btn btn-green" id="checklistContentChangeBtn">변경</button></span>
                                 </form>
                        </c:if>
                     </c:if>
                  </c:forEach>
                     </ul>
               </div>
               <!-- <div class="checklist_content"> -->

            </div>
            <!-- <div id="checklist"> -->


            <div>
               <h3>Add Comment</h3>
               
               <form method="post">
                  <textarea name="comment_content" id="comment_content" placeholder="댓글쓸래 ?"></textarea>
               <input type="hidden" name="board_index" id="board_index" value="${card.board_index}">
                  <input type="hidden" name="writer" id="writer" value="${user.name}"> 
                  <input type="button" value="댓글입력" class="insertCommentForm">
               </form>
            </div>
            
            
            <div>
               <h3>Activity</h3> 
               <div class="activity">
                  <!-- 활동내역 찍히는곳 -->
                  <c:forEach var="comment" items="${comment}">
                  <div>
                  <jsp:useBean id= "now" class="java.util.Date" scope="request"/>
                  <span>글쓴이: ${comment.writer}</span><br>
                  <span>댓글내용 : ${comment.comment_content}</span><br>   
                  <fmt:formatDate var ="write" value="${comment.create_date}" pattern="yyyy.MM.dd HH:mm" /> 
                  <span>글쓴시간 : ${write}</span><br>
                  <form  method="post">
                     <span>
                                 <input type="hidden" name="comment_id" id="comment_id" value="${comment.comment_id}"> 
                                 <input type="hidden" name="board_index" id="board_index" value="${comment.board_index}"> 
                                 <input type="button" value="삭제" class="deleteCommentForm">
                           </span>
                        </form>
                        <form  method="post" id="updateCommentForm">
                           <span>
                                 <textarea name="comment_content" id="comment_content" class="comment_content">${comment.comment_content}</textarea>    
                        <input type="hidden" name="comment_id" id="comment_id" value="${comment.comment_id}">
                        <input type="hidden" name="board_index" id="board_index" value="${comment.board_index}"> 
                              <input type="button" value="수정" class="updateCommentForm">
                           </span>         
                        </form>                  
               </div>      
              </c:forEach>
               </div>
            </div>
         </div><!-- <div class="col-md-8"> -->

         <!-- 오른쪽 버튼폼 -->
         <div class="col-md-4">
            <h4>ADD TO CARD</h4>
            <a class="button-link js-change-card-members" href="#modalMember"
                  id="addMember" title="Members" data-toggle="modal"> 
               <span class="icon-sm glyphicon glyphicon-user"></span> 
               <span>Members</span>
            </a>
            <a class="button-link js-change-card-labels" href="#modalLabel"
                  title="Labels" data-toggle="modal"> 
               <span class="icon-sm glyphicon glyphicon-tag"></span> 
               <span>Labels</span>
            </a> 
            <a class="button-link js-change-card-checklist"
               href="#modalChecklist" title="Checklist" data-toggle="modal"> 
               <span class="icon-sm glyphicon glyphicon-check"></span> 
               <span>Checklist</span>
            </a> 
            <a class="button-link js-change-card-duedate" href="#modalSchedule"
               title="DueDate" data-toggle="modal"> 
               <span class="icon-sm glyphicon glyphicon-time"></span>
               <span>Schedule</span>
            </a> 
            <a class="button-link js-change-card-attachment"
               href="#modalAttachment" title="Attachment" data-toggle="modal">
               <span class="icon-sm glyphicon glyphicon-paperclip"></span> 
               <span>Attachment</span>
            </a> 
            <a class="button-link js-change-card-archive" href="#modalArchive"
               title="Archive" data-toggle="modal"> 
               <span class="icon-sm glyphicon glyphicon-trash"></span> 
               <span>Archive</span>
            </a>
         </div>
         <!-- 모달 출력부분 -->
         <!-- 모달멤버 -->
         <div class="modal fade" id="modalMember">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                     <!-- 닫기(x) 버튼 -->
                     <button type="button" class="close" data-dismiss="modal">×</button>
                     <!-- header title -->
                     <h5 class="modal-title">Members</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                     <input type="text" placeholder="Search Members"><br>
                     <label>BOARD MEMBERS</label>
                     <div>
                        <ul>
                        <c:forEach var="list" items="${memberList}" begin="0" varStatus="status">
                           
                           <li>${list.user_id }</li>
                           
                           </c:forEach>
                        </ul>
                     </div>
                  </div>
                  <!-- Footer -->
                  <div class="modal-footer">
                     <a class="subtle button full" href="#" style="margin-top: 8px;">
                        Show other team members
                     </a>
                  </div>
               </div>
            </div>
         </div>

         <!-- 모달라벨 -->
         <div class="modal fade" id="modalLabel">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                     <!-- 닫기(x) 버튼 -->
                     <button type="button" class="close" data-dismiss="modal">×</button>
                     <!-- header title -->
                     <h5 class="modal-title">Labels</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                     <ul>
                     <li>
                        <span
                           class="card-label mod-selectable card-label-green  js-select-label"></span>
                     </li>
                     <li>   
                        <span
                           class="card-label mod-selectable card-label-yellow  js-select-label"></span>
                     </li>
                     <li>   
                        <span
                           class="card-label mod-selectable card-label-orange  js-select-label"></span>
                     </li>
                     <li>   
                        <span
                           class="card-label mod-selectable card-label-red  js-select-label"></span>
                     </li>
                     <li>   
                        <span
                           class="card-label mod-selectable card-label-blue  js-select-label"></span>
                     </li>   
                     </ul>
                  
                  </div>
                  <!-- Footer -->
                  <div class="modal-footer">
                     Footer
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">닫기</button>
                  </div>
               </div>
            </div>
         </div>

         <!-- 모달체크리스트 -->
         <div class="modal fade" id="modalChecklist">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                     <!-- 닫기(x) 버튼 -->
                     <button type="button" class="close" data-dismiss="modal">×</button>
                     <!-- header title -->
                     <h5 class="modal-title">Add Checklist</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                     <form action="insertChecklistTitle.do">
                        <label>Title</label><br> <input type="hidden"
                           name="board_index" value="${card.board_index}"> <input
                           type="text" placeholder="Checklist title"
                           name="checklist_title"> <input type="submit">
                     </form>
                  </div>
                  <!-- Footer -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">ADD</button>

                  </div>
               </div>
            </div>
         </div>

         <!-- 모달스케줄 -->
         <div class="modal fade" id="modalSchedule">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                     <!-- 닫기(x) 버튼 -->
                     <button type="button" class="close" data-dismiss="modal">×</button>
                     <!-- header title -->
                     <h5 class="modal-title">Schedule</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                    <div class="schedule_list_form">
<%--                   <c:forEach var="schedule" items="${schedule }" begin="0" varStatus="status">
                  
                  	<div class="schedule_list_form_items" id="schedule_start_date">
                  	<p>${schedule.start_date }</p>
                  	</div>
                  	<div class="schedule_list_form_items" id="schedule_end_date">
                  	<p>${schedule.end_date }</p>
                  	</div>
                  </c:forEach> --%>
                  </div>  
                  <div class="schedule_insert_form"> 
                 <form>
                 <div class="form-group">
                  	<label for="start_date">시작일</label>
                  	<input type="text" id="start_date" name="start_date">
                  	</div> 	
                  	<div class="form-group">
                  	<label for="end_date">종료일</label>
                  	<input type="text" id="end_date" name="end_date"><br>
                  	</div>
                  	<input type="hidden" value="${board_id }" id="board_id">
                  	<button class="btn btn-default" id="scheduleButton">저장</button>
				</form>
                  </div>	
                  </div>
                  <!-- Footer -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">닫기</button>
                  </div>
               </div>
            </div>
         </div>

         <!-- 모달 첨부파일 -->
         <div class="modal fade" id="modalAttachment">
            <form action="insertAttachment.do" method="post" enctype="multipart/form-data">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <!-- header -->
                     <div class="modal-header">
                        <!-- 닫기(x) 버튼 -->
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <!-- header title -->
                        <h5 class="modal-title">Attachment</h5>
                     </div>
                     <!-- body -->
                     <div class="modal-body">
                        <input type="file" name="attachment"> 
                     </div>
                     <!-- Footer -->
                     <div class="modal-footer">
                        Footer
                        <input type="hidden" name="board_index" value="${card.board_index}"> 
                        <input type="hidden" name="list_title" value="${list_title}">
                        <input type="submit" value="제출">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                     </div> <!-- <div class="modal-footer"> -->
                  </div><!-- <div class="modal-content"> -->
               </div><!-- <div class="modal-dialog"> -->
            </form><!-- <form action="insertAttachment.do" method="post" enctype="multipart/form-data"> -->
         </div><!-- <div class="modal fade" id="modalAttachment"> -->

         <!-- 모달아카이브 -->
         <div class="modal fade" id="modalArchive">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                     <!-- 닫기(x) 버튼 -->
                     <button type="button" class="close" data-dismiss="modal">×</button>
                     <!-- header title -->
                     <h5 class="modal-title">Archive</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">Archive body</div>
                  <!-- Footer -->
                  <div class="modal-footer">
                     Footer
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">닫기</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
</div>




<!-- 체크리스트 스크립트 -->
<script>
// Create a "close" button and append it to each list item
//'닫기'버튼을 만들고 각 목록 항목에 추가하십시오


//getElementsByTagName:특정 태그를 가진 모든 요소를 선택합니다. 선택된 요소는 유사 배열 객체로 반환
//태그의 있는 div, li, p 와 같은 특정 태그명을 가지고 있는 element 의 집합을 가져오는 함수
/* var checklistContentLI = document.getElementsByTagName("LI");//LI 태그명을 가지고 있는 element의 집합을 가져옴 */
var checklistContentLI = document.getElementsByTagName("LI");//LI 태그명을 가지고 있는 element의 집합을 가져옴
var i;
for (i = 0; i < checklistContentLI.length; i++) {//i는 0부터 checklistContentLi의 갯수만큼
  var span = document.createElement("SPAN");//<span> </span> 이 생성되고, span에 넣어준다
  var closeText = document.createTextNode("\u00D7");//createTextNode():선택한 요소에 텍스트를 추가,closeText : \u00D7 => X
  span.className = "close";//span의 이름을 class라고 정해준다 <span class="close"></span> 
  span.appendChild(closeText); //appendChild()는 선택한 요소 안에 자식 요소를 추가,<span class="close">\u00D7 </span>
  checklistContentLI[i].appendChild(span);//<li> <span class="close">\u00D7 </span> </li>
  
};





// Click on a close button to hide the current list item
//현재 목록 항목을 숨기려면 닫기 버튼을 클릭하십시오
var close = document.getElementsByClassName("close");//"close"라는 클래스이름을 가진 요소를 가져온다
var i;
for (i = 0; i < close.length; i++) { //i는 0부터 class이름이 close를가진 갯수만큼 돌려준다
  close[i].onclick = function() {  //close[0].onclick ~ close[마지막]
   var checklist_id = $(this).parents().children(".checklist_id").val();
   var board_index = $(this).parents().children(".board_index").val(); 
   var div = this.parentElement; //parentElement : 지정된 요소의 부모 요소를 반환 ,부모:<li>
     
   console.log("checklist_id: " + checklist_id);
   console.log("board_index: " + board_index);
   $.ajax({
         async: true, 
         type : "POST",
         url : "deleteChecklist.do",
         data :{ checklist_id : checklist_id,
               board_index : board_index
               },
         dataType : "text",
         success : function(data) {
          console.log("ajax->content삭제 성공"); 
            location.reload();
            }
    });
     /* console.log("checklist_id: " + checklist_id);
   window.location.href="deleteChecklist.do"; */
    /* var div = this.parentElement; //parentElement : 지정된 요소의 부모 요소를 반환 ,부모:<li>
    div.style.display = "none"; */ //<li sytle="display:none;">
  }
}

// Add a "checked" symbol when clicking on a list item
//목록 항목을 클릭 할 때 "체크 된"기호 추가
             //주의할 점은 선택자에 해당하는 첫번째 요소만 선택
 var span = $("span");
span.click(function(){ 
   var checklist_id =$(this).siblings(".checklist_id").val();
   var board_index = $(this).siblings(".board_index").val();
   var checklist_checked = $(this).siblings(".checklist_checked").val();
   console.log("checklist_id: " + checklist_id);
   console.log("board_index: " + board_index); 
      
   var list = document.querySelector('ul'); //querySelector: 특정name이나 id를 제한하지않고 css 선택자를 사용하여 요소 찾는다.
   list.addEventListener('click', function(ev) {//addEventListener : 이벤트리스너를 추가하는 자바스크립트 메소드

   
      /* if (ev.target.tagName === 'LI') { */
   if (ev.target.tagName === 'SPAN') {
      /* console.log("checklist_checked: " + checklist_checked); */
    ev.target.classList.toggle('checked'); //classList.toggle('checked')이라고 작성했을때 checked가 존재하면 삭제를하고 존재하지않을 경우 추가를하는 동작을 한다.
      
   $.ajax({
         async: true, 
         type : "POST",
         url : "updateChecklistChecked.do",
         data :{ checklist_id : checklist_id,
               board_index : board_index,
              checklist_checked : checklist_checked
               },
         dataType : "text",
         success : function(data) {
         console.log("ajax->checked update성공");
         location.reload(); 
            }
    });
  }

}, false);

 }); 

// Create a new list item when clicking on the "Add" button
//'추가'버튼을 클릭하면 새 목록 항목이 생성됩니다.
function newContent() { /* new()함수가 실행될때  */
   console.log("newContent()함수 시작");
   var li = document.createElement("li");//<li>라는 요소를 생성한다. var li = <li></li>
   var newChecklist_content = document.getElementById("checklist_content").value;//getElementById("checklist_content"):id가 "checklist_content"인 요소. 
                                                               //newChecklist_content = id가 checklist_title인 값
      var contentText = document.createTextNode(newChecklist_content); //내가 작성한 contentText 값
      var span1 = document.createElement("SPAN");//<span></span>
      console.log("newChecklist_content : " + newChecklist_content);
      span1.className = "icon-sm glyphicon glyphicon-unchecked";
      li.appendChild(span1);
      li.appendChild(contentText);//<li></li>안에 내가 작성한 contentText 값자식요소 추가
      if (newChecklist_content === '') {
         console.log("값을 입력해!! 값이 없잖아 !! ");
      } else {
         document.getElementById("checklistContent").appendChild(li); //id가 checklistContet인 요소에 자식요소<li></li>를 추가
      }
      
      var span = document.createElement("SPAN"); //<span>이라는 요소를 추가한다
      var closeText = document.createTextNode("\u00D7");
      span.className = "close";
      span.appendChild(closeText);
      li.appendChild(span);

      for (i = 0; i < close.length; i++) {
         close[i].onclick = function() {
            var div = this.parentElement;
            div.style.display = "none";
         }
      }

      this.document.getElementById("addTitleForm").submit();
   }
</script> 

</body>
</html>