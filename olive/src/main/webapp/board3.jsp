<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.0.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
html, body {
  min-width: 100%;
  min-height: 100vh;
  margin: 0;
  padding: 0;
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

input, button, textarea {
  font-family: "Lato", sans-serif;
}

input:focus, textarea:focus {
  outline: none;
}

.btn {
  padding: 5px 10px;
  border: none;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  box-shadow: 1px 1px 1px 0px #bababa;
  cursor: pointer;
  font-size: 15px;
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

nav {
  height: 50px;
  background: #6F777B;
  text-align: center;
  color: #fff;
  line-height: 50px;
  font-size: 18px;
  font-weight: 100;
  font-family: "Roboto", sans-serif;
}
#contentWrap {
  box-sizing: border-box;
  padding: 0px 15px;
  font-family: "Lato", sans-serif;
  max-width: 100%;
  min-height: calc(100vh - 50px);
  overflow-y: hidden;
  overflow-x: auto;
  white-space: nowrap;
}
#boardTitleWrap {
  height: 50px;
  font-size: 17px;
  font-weight: bolder;
}
#boardTitleWrap #boradTitle {
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

#listWrap {
  display: inline-block;
  vertical-align: top;
}
#listWrap .list {
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
#listWrap .list .listTitleWrap {
  height: 40px;
  font-size: 15px;
  margin-bottom: 10px;
}
#listWrap .list .listTitleWrap .listTitle {
  height: 100%;
  line-height: 40px;
  color: #2F4E60;
  font-weight: 600;
  float: left;
}
#listWrap .list .listTitleWrap .listTitleForm {
  height: 100%;
  float: left;
  line-height: 40px;
  background: #d0d0d0;
  padding-left: 10px;
  display: none;
}
#listWrap .list .listTitleWrap .listTitleForm input {
  font-size: 15px;
  background: transparent;
  color: #2F4E60;
  font-weight: 600;
  border: none;
}
#listWrap .list .listTitleWrap .listTitleForm input::placeholder {
  color: #2F4E60;
}
#listWrap .list .cardWrap {
  min-height: 10px;
  max-height: 663px;
  overflow-y: auto;
  margin-bottom: 10px;
}
#listWrap .list .cardWrap .cardContent {
  padding: 7px 10px;
  background: white;
  width: calc(100% - 20px);
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
#listWrap .list .cardAddWrap .addCardLabel {
  padding: 7px 5px;
  color: #838C91;
  margin-bottom: 12px;
  cursor: pointer;
}
#listWrap .list .cardAddWrap .addCardForm {
  display: none;
}
#listWrap .list .cardAddWrap .addCardForm textarea {
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
#listWrap .list .cardAddWrap .addCardForm button {
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

.close {
  float: left;
  display: flex;
  height: 28px;
  width: 28px;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
</style>
<script>
$(document).ready(function(){
   var boardTitle = $("#boradTitle");
   var boardTitleForm = $("#boardTitleForm");
   var addListLabel = $("#addListLabel");
   var addListForm = $("#addListForm");
   var listTitle = $("#listTitle");
   var listTitleForm = $("#listTitleForm");

   //보드타이틀을 더블클릭했을때 
   boardTitle.dblclick(function (e) { 
      e.preventDefault(); // 클릭 이벤트 외에 별도의 브라우저 행동을 막기 위해 사용 
      boardTitleForm.val(boardTitle.html());
      boardTitle.hide();//보드타이틀값 숨고   
      boardTitleForm.show();//보드타이틀 폼이 보여진다
      boardTitleForm.children("#boardTitleChangedValue").focus(); //id=boardTitleChangedValue인곳에 포커스가 간다
   });
   
   $('#boardTitleChangeBtn').click(function() {
      var frm = $('#boardTitleForm');
      $.ajax({
         method : 'post'
         , url : $(frm).attr('action')
         , data : $(frm).serialize()
         , success : function(result) {
            var text = $('#boardTitleChangedValue').val()
            $(frm).hide();
            document.getElementById('boradTitle').innerText = result;
            document.getElementById('boradTitle').style = 'display:block;'
         }
         , error : function(e) {
            console.error(JSON.stringify(e));
           }
      });
   });
   
    listTitle.dblclick(function (e) { 
         e.preventDefault(); // 클릭 이벤트 외에 별도의 브라우저 행동을 막기 위해 사용 
         listTitleForm.val(listTitle.html());
         listTitle.hide();//보드타이틀값 숨고   
         listTitleForm.show();//보드타이틀 폼이 보여진다
         listTitleForm.children("#listTitleChangedValue").focus(); //id=boardTitleChangedValue인곳에 포커스가 간다
      });
   
   $('#ListTitleChangeBtn').click(function() {
         var frm = $('#listTitleForm');
         $.ajax({
            method : 'post'
            , url : $(frm).attr('action')
            , data : $(frm).serialize()
            , success : function(result) {
               var text = $('#listTitleChange').val()
               $(frm).hide();
               document.getElementById('listTitle').innerText = text;
               document.getElementById('listTitle').style = 'display:block;'
            }
            , error : function(e) {
               console.error(JSON.stringify(e));
              }
         });
      });
   

   
   //카드추가라벨을 클릭했을때
    $(document).on("click", ".addCardLabel", function (e) {
       e.preventDefault();
       $(this).hide(); //카드추가 숨기고
       $(this).parent().children("form").show(); //.cardAddLabel form태그를 보여준다
       $(this).parent().children("form").children("textarea").focus(); //폼태그에있는 textarea에 포커스를 둔다
    });
   //카드추가가 클릭됐을때
     $(document).on("submit", ".addCardForm", function (e) {
       e.preventDefault();
       var addCardLabel = $(this).parent().children(".addCardLabel");
       var addCardTitle = $(this).children(".addCardTitle");
       var CardTitle = addCardTitle.val();
       console.log(CardTitle);
       if(CardTitle.length > 0){  
          $(this).parents(".list").children(".cardWrap").append("<div class='cardContent'>"
                   +CardTitle+ "</div>");
          var board_id = $(this).children("#board_id").val();
          var list_id = $(this).children("#list_id").val();
             /*  $(this).parents(".list").children("#list_id").val(); */
          
          console.log(list_id);
          var list_order = $(this).children("#list_order").val();
          
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
              dataType : "text",
              success : function(data) {
                 console.log("출력되나"+data);
                 location.reload();
                     }
                
              });
       }
      
       $(this).hide();
       addCardLabel.show();
    }); 
   //카드추가 버튼이 실행됐을때
    /* $(document).on("click", ".addCardButton", function (e) {
       e.preventDefault();
       
       var CardName = document.getElementById("addCardTitle").value;
       var board_id = document.getElementById("board_id").value;
       var list_id = document.getElementById("list_id").value;
       var list_order = document.getElementById("list_order").value;
       
       console.log(CardName);
        $.ajax({
          async: true, 
           type : "POST",
           url : "insertCard.do",
           data : {title : CardName,
              board_id : board_id,
              list_id : list_id,
              list_order : list_order
              },
           dataType : "text",
           success : function(data) {
              console.log("출력되나"+data);
              if(data != null) {
                 $(".cardWrap").append(data);
                 
                  }
             }
           });
    }); */
   
   //카드닫기를 클릭했을때
    $(document).on("click", "#addCardClose", function (e) {
       e.preventDefault();
       $(this).parents(".addCardForm").children(".addCardContent").val("");
       $(this).parents(".addCardForm").hide();
       $(this).parents(".cardAddWrap").children(".addCardLabel").show();
    });
    //addListLabel를 클릭했을때
    addListLabel.click(function (e) {
       e.preventDefault();
       addListLabel.hide();
       addListForm.show();
       addListForm.children("#addListTitle").focus();
    });
    //addListForm를 클릭했을때
    $(document).on("click", ".addListForm", function (e) {
       e.preventDefault();
       let addListTitle = $("#addListTitle");
       if(addListTitle.val().length > 0){
          $("#listWrap").append(
               `<div class="list">
                   <div class="listTitleWrap">
                      <div class="listTitle">`+$("#addListTitle").val()+`</div>
                      <form class="listTitleForm">
                         <input class="listTitleChangedValue" type="text" placeholder="리스트이름 변경" autocomplete="off">   
                      </form>   
                   </div>
                   
                   <div class="cardWrap"></div>
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
                        <button class="addCardButton">카드 추가</button>
                        <span class="close" id="addCardClose"></span>
                     </form>
                   </div>
                </div>`);
       }
       addListTitle.val("");
       addListForm.hide();
        addListLabel.show();
    });
    
    $("#addListClose").click(function (e) {
       $("#addListTitle").val("");
       addListForm.hide();
       addListLabel.show();
    });
    
    $('input[type="text"]').keydown(function() {
        if (event.keyCode === 13) {
            event.preventDefault();
            $('input[type="button"]').click();
        }
    });
});

/* -----------다희 */
function getListData() {
    var ListName = document.getElementById("addListTitle").value;
    var board_id = document.getElementById("board_id").value;
   
   console.log(ListName);
    $.ajax({
      async: true, 
       type : "POST",
       url : "insertList.do",
       data : {title : ListName,
          board_id : board_id,
          },
       dataType : "text",
       success : function(data) {
          console.log("출력되나"+data);
          if(data != null) {
              $("#addListTitle ").text(data);
               $("#addListTitle ").attr("style", "color:green");  
               }
           }
       });
   }

/* function getCardData() {
   var CardName = document.getElementById("addCardTitle").value;
   var board_id = document.getElementById("board_id").value;
   var list_id = document.getElementById("list_id").value;
   var list_order = document.getElementById("list_order").value;
   
   console.log(CardName);
    $.ajax({
      async: true, 
       type : "POST",
       url : "insertCard.do",
       data : {title : CardName,
          board_id : board_id,
          list_id : list_id,
          list_order : list_order
          },
       dataType : "text",
       success : function(data) {
          console.log("출력되나"+data);
          if(data != null) {
             $("#addCardTitle ").text(data);
              $("#addCardTitle ").attr("style", "color:red");  
              }
         }
       });
   } */
/*다희-----------*/ 
</script>
<title>board</title>
</head>
<body>
   <div>
      <nav>olive trello</nav>
      <div id="boardWrap">
         <div id="boardTitleWrap">
            <div id="boradTitle">${boardContents[0].title}</div>

            <form id="boardTitleForm" action="updateTitle.do">
               <input id="boardTitleChangedValue" type="text" name="title"
                  placeholder="보드제목 변경" autocomplete="off"> <input
                  type="hidden" name="board_index"
                  value="${boardContents[0].board_index }"> <input
                  id="boardTitleChangeBtn" type="button" value="제목변경">
            </form>
            <div id="creator">${content.creator}</div>
         </div>
      </div>
      <!-- 리스트를 추가하는 영역 -->
      <c:forEach var="list" items="${boardContents}" begin="1"
         varStatus="status">
         <c:if test="${list.card_id == null}">
            <div id="listWrap">
               <div class="list">
              
                  <div class="listTitleWrap">
                     <div id="listTitle">${list.title}</div>
                     <form id="listTitleForm" action="updateTitle.do">
                        <input class="listTitleChangedValue" type="text" name="title"
                           placeholder="리스트이름 변경" autocomplete="off">
                        <input type="hidden" name="board_index" value="${list.board_index }">
                        <input id="ListTitleChangeBtn" type="button" value="제목변경">
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
                           <div class="cardWrap">
                              <div class="cardContent"><a href="getCard.do?board_index=${card.board_index}&list_title=${list.title}">${card.title}</a></div>
                           </div>
                        </c:if>
                     </c:if>
                  </c:forEach>
                  <div class="cardWrap"></div>
                  <div class="cardAddWrap">
                     <div class="addCardLabel">+ 카드 추가</div>
                     <form class="addCardForm">
                        <textarea id="addCardTitle" name="title" class="addCardTitle"
                           cols="30" rows="10" placeholder="카드내용을 입력하세요" autocomplete="off"></textarea>
                        <input id="board_id" type="hidden" name="board_id"
                           value="${boardContents[0].board_id}"> 
                         <input id="list_id" type="hidden" name="list_id" value="${list.list_id}">    
                           <input id="list_order" type="hidden" name="list_order" value="${list.list_order}">
                        <button class="addCardButton">카드 추가</button><span class="close"
                           id="addCardClose">x</span>
                     </form>
                  </div>
               </div>
            </div>
         </c:if>
      </c:forEach>
      <div id="listAddWrap">
         <div id="addListLabel">+ 리스트 추가</div>
         <form id="addListForm">
            <input id="addListTitle" type="text" name="title"
               placeholder="리스트제목을 입력해라" autocomplete="off"> <input
               id="board_id" type="hidden" name="board_id"
               value="${boardContents[0].board_id}">
            <button id="addlist1" onclick="getListData()">리스트 추가</button>
            <span class="close" id="addListClose">x</span>
         </form>
      </div>
   </div>
</body>
</html>