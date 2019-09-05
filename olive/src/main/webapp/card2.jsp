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
   
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

user agent stylesheet
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
});
    
  
    
$(function() { 
//Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

// Add a "checked" symbol when clicking on a list item
var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);

// Create a new list item when clicking on the "Add" button

$("#newElement").click(function(frm){
   
        
  var li = document.createElement("li");
  var inputValue = document.getElementById("myInput").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  }
  document.getElementById("myInput").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  
 
}
  frm.action="insertCheckListContent.do";
  frm.submit;
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
                     <input type="hidden" name="board_index" value="${card.board_index}"> 
                     <input type="submit" value="저장">
                  </div><!-- <div id="Description_content"> -->
               </div><!-- <div id="Description"> -->
            </form><!-- <form action="updateCardContent.do"> -->
            <div id="attachment">
             <c:if test="${attachment != '[]'}">   
               <h3>첨부파일</h3>
                  <c:forEach var="list" items="${attachment}" begin="0" varStatus="status">
                     <form action="deleteAttachment.do">            
                        <%-- ${attachment} --%>
                        <c:if test="${fn:contains(list, '.png')}">   
                           <img src="/webapp/attachment/${list.file_name}"  style="width: 50px;height:50px;"/>
                        </c:if>
                        <c:if test="${fn:contains(list, '.jpg')}">   
                           <img src="/webapp/attachment/${list.file_name}"  style="width: 50px;height:50px;"/>
                        </c:if>
                       
                        <span>${list.original_file_name}</span>
                        <span>
                           <input type="hidden" name="attachment_id" value="${list.attachment_id}"> 
                           <input type="hidden" name="board_index" value="${card.board_index}"> 
                           <input type="submit" value="삭제">
                        </span><br>
                     </form>
                     </c:forEach>
               </c:if>
            
            </div><!-- <div id="attachment"> -->
            
            
            
            
            
            
            
            <div id="checklist">
             <div class="checklist_content"> 
               <span class="icon-sm glyphicon glyphicon-check"></span>
               <h3>Checklist</h3>
                <c:forEach var="checklist" items="${checkList}" begin="0" varStatus="status">
               <!-- 체크리스트 찍히는곳 -->
                 
                  <div id="myDIV" class="header">
                   <form method="POST">
                    <h2 style="margin:5px">${checklist.checkList_title}</h2>
                    <input type="text" name= "checklist_content" id="myInput" placeholder="Title...">
                    <input type="hidden" name="board_index" value="${card.board_index}"> 
                    <input type="hidden" name="checkList_id" value="${checklist.checkList_id}"> 
                     <button type="button" class="addBtm" id="newElement" value="추가">dddd</button>
                   <!-- <span id="newElement" class="addBtn">추가</span>  -->
                    </form>
                  </div>
                  
                  <ul id="myUL">
                       <!-- 체크리스트 내용 뿌려주는곳 -->
                  </ul> 
                 
               </c:forEach>
               
               </div><!-- <div class="checklist_content"> -->
            </div><!-- <div id="checklist"> -->
         
         
         
         
         
         
         
         
         
         
               <div>
               <h3>Add Comment</h3>
               <textarea placeholder="Write a comment..."></textarea>
               <input type="button" value="저장">
            </div>
            <div>
               <h3>Activity</h3>
               <div class="활동내역 찍히는곳">
                  <!-- 활동내역 찍히는곳 -->
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
<!--                      <div> -->
<!--                         <ul> -->
<%--                         <c:forEach var="list" items="${memberList}" begin="0" varStatus="status"> --%>
<%--                            <li>${list.user_id }</li> --%>
                           
<%--                            </c:forEach> --%>
<!--                         </ul> -->
<!--                      </div> -->
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
                        <li><span
                           class="card-label mod-selectable card-label-green  js-select-label"></span>
                        </li>
                        <li><span
                           class="card-label mod-selectable card-label-yellow  js-select-label"></span>
                        </li>
                        <li><span
                           class="card-label mod-selectable card-label-orange  js-select-label"></span>
                        </li>
                        <li><span
                           class="card-label mod-selectable card-label-red  js-select-label"></span>
                        </li>
                        <li><span
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
                     <form action="insertCheckListTitle.do">
                        <label>Title</label><br> <input type="hidden"
                           name="board_index" value="${card.board_index}"> <input
                           type="text" placeholder="Checklist title"
                           name="checkList_title"> <input type="submit">
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
                  <div class="modal-body">Schedule body</div>
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
   

</body>
</html>