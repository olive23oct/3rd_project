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
#projectTitleWrap {
  height: 50px;
  font-size: 17px;
  font-weight: bolder;
}
#projectTitleWrap #title {
  height: 100%;
  line-height: 50px;
  color: white;
  float: left;
}
#projectTitleWrap #titleEdit {
  height: 100%;
  float: left;
  line-height: 50px;
  display: none;
}
#projectTitleWrap #titleEdit input {
  font-size: 17px;
  background: transparent;
  color: #fff;
  border: none;
  background: #6F777B;
  height: 35px;
  padding-left: 10px;
  font-weight: bolder;
}
#projectTitleWrap #titleEdit input::placeholder {
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
#listWrap .list .listTitleWrap .title {
  height: 100%;
  line-height: 40px;
  color: #2F4E60;
  font-weight: 600;
  float: left;
}
#listWrap .list .listTitleWrap .titleEdit {
  height: 100%;
  float: left;
  line-height: 40px;
  background: #d0d0d0;
  padding-left: 10px;
  display: none;
}
#listWrap .list .listTitleWrap .titleEdit input {
  font-size: 15px;
  background: transparent;
  color: #2F4E60;
  font-weight: 600;
  border: none;
}
#listWrap .list .listTitleWrap .titleEdit input::placeholder {
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
#listWrap .list .cardAddWrap .addLabel {
  padding: 7px 5px;
  color: #838C91;
  margin-bottom: 12px;
  cursor: pointer;
}
#listWrap .list .cardAddWrap .addCard {
  display: none;
}
#listWrap .list .cardAddWrap .addCard textarea {
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
#listWrap .list .cardAddWrap .addCard button {
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
</style>
<script>
// project name 관련 스크립트
//프로젝트 네임을 더블클릭하면 수정할수 있는 폼 나옴 수정 다하고 엔터 누르면 프로젝트 네임 변경
$(document).ready(function () {
    var board_title = $("#title");
    var board_titleEdit = $("#titleEdit");
    var addListLabel = $("#addLabel");
    var addListForm = $("#addList");
     
    board_title.dblclick(function (e) {
        e.preventDefault();
        board_titleEdit.val(board_title.html());
        board_title.hide();
        board_titleEdit.show();
        board_titleEdit.children("#projectTitle").focus();
    });

    board_titleEdit.submit(function (e) {
       e.preventDefault();//해당태그의 기본으로 가지고있는 이벤트가 실행되지 않게 해줌 
        let title = $("#projectTitle").val();
        if (title == "") {
            title = "New Project";
        }
        board_title.html(title);
        board_titleEdit.hide(); //숨기고
        board_title.show(); //보여줌
    });
    
    //list name 관련 스크립트
    //project name 관련 스크립트와 동작이 유사
    $(document).on('dblclick', ".title", function (e) {
        e.preventDefault();
        let ltTitleEdit = $(this).parent().children(".titleEdit");
        ltTitleEdit.children(".listTitle").val($(this).html());
        ltTitleEdit.children(".listTitle").focus();
        $(this).hide();
        ltTitleEdit.show();

    });
    $(document).on("submit", ".titleEdit", function (e) {
        e.preventDefault();
        let ltTitle = $(this).parent().children(".title");
        let title = $(this).children(".listTitle").val();
        ltTitle.html(title);
        $(this).hide();
        ltTitle.show();
    });

    $(document).on("click", ".addLabel", function (e) {
        e.preventDefault();
        $(this).hide();
        $(this).parent().children("form").show();
        $(this).parent().children("form").children("textarea").focus();
    });
    
   //card 추가 스크립트
    $(document).on("submit", ".addCard", function (e) {
        e.preventDefault();
        //.addLabel을 클릭하면 card 추가폼 나옴
        //submit하면 해당카드의 부모 리스트에게 카드를 append 시킴
        let addCardLabel = $(this).parent().children(".addLabel");
        let content = $(this).children(".addCardContent");
        if (content.val().length > 0) { // 값이 비어있는지 체크
            $(this).parents(".list").children(".cardWrap").append("<div class='cardContent'>${content.val()}</div>");
           console.log(${content.val()});
        }
        content.val("");
        $(this).hide();
        addCardLabel.show();
        $(".cardWrap").sortable({ //새로생기는 카드에 sortable 적용시켜줌
            connectWith: ".cardWrap",
            placeholder: "card-placeholder"
        });
    });

    $(document).on("click", ".addCardBtn", function (e) {
        e.preventDefault();
        $(this).parent(".addCard").submit();
    });

    $(document).on("click", "#addCardClose", function (e) {
        e.preventDefault();
        $(this).parents(".addCard").children(".addCardContent").val("");
        $(this).parents(".addCard").hide();
        $(this).parents(".cardAddWrap").children(".addLabel").show();
    });

    //list 추가 스크립트
    addListLabel.click(function (e) {
        e.preventDefault();
        addListLabel.hide();
        addListForm.show();
        addListForm.children("#addListTitle").focus();

    });

    addListForm.submit(function (e) {
        e.preventDefault();
        let listTitle = $("#addListTitle");
        if (listTitle.val().length > 0) {
           // 템플릿 문자열:JavaScript 값(value)을 문자열에 끼워넣는 보기 좋고 편리한 방법
            $("#listWrap").append(`<div class="list">
                <div class="listTitleWrap">
                    <div class="title">${listTitle.val()}</div>
                    <form class="titleEdit">
                        <input class="listTitle" type="text" placeholder="Project Name...">
                    </form>
                </div>
                <div class="cardWrap">
                </div>
                <div class="cardAddWrap">
                    <div class="addLabel">+ Add another card</div>
                    <form class="addCard">
                        <textarea name="" class="addCardContent" cols="30" rows="10" placeholder="card content..."></textarea>
                        <button class="btn btn-green addCardBtn">Add Card</button><span class="close" id="addCardClose">&times</span>
                    </form>
                </div>
            </div>`);
        }
        listTitle.val("");
        addListForm.hide();
        addListLabel.show();
        //새로생기는 list에 sortable 적용시켜줌
        $(".cardWrap").sortable({
            connectWith: ".cardWrap",
            placeholder: "card-placeholder"
        });
    });

    $("#addListClose").click(function (e) {
        $("#addListTitle").val("");
        addListForm.hide();
        addListLabel.show();
    });
   
    //리스트간의 정렬 및 이동
    $("#listWrap").sortable({
        placeholder: "list-placeholder",
        handle: ".listTitleWrap",//handle: 해당 엘리먼트를 선택해야 이동이 가능하게 해주는것(손잡이 같은것)
    });
   
    //리스트간의 카드 이동
    $(".cardWrap").sortable({
        connectWith: ".cardWrap",//connectWith : 서로서로 자식 엘리먼트들을 공유한다는것, .cardWrap 밑에있는 cardContent들을 서로 공유가능
                          // 기존에 생성되어있던 카드들은 상관없지만 새로 생기는 카드들의 관해서는 sortable적용x
        placeholder: "card-placeholder"
    });
});

</script>
<title>board</title>
</head>

<body>
    <div class="wrapper">
        <nav>olive trello</nav>
        <div id="contentWrap">
           <!-- 프로젝트의 이름을 출력하는 곳으로 #title과 #titleEdit 으로 이루어져 있다 -->
            <div id="projectTitleWrap">
                <div id="title">Project test</div>
                <form id="titleEdit">
                    <input id="projectTitle" type="text" placeholder="프로젝트 이름" autocomplete="off">
                    <input type="submit" style="display: none">
                </form>
            </div>
            
            <!-- 리스트를 추가 하는 영역 -->
            <div id="listWrap">
                <div class="list">
                    <div class="listTitleWrap">
                        <div class="title">list test</div>
                        <form class="titleEdit">
                            <input class="listTitle" type="text" placeholder="리스트 이름" autocomplete="off">
                        </form>
                    </div>
                    <div class="cardWrap">
                        <div class="cardContent">test1</div>
                        <div class="cardContent">test2</div>
                        <div class="cardContent">test3</div>
                    </div>
                    <div class="cardAddWrap">
                        <div class="addLabel" style="">+ Add another card</div>
                        <form class="addCard" style="display: none;">
                            <textarea name="" class="addCardContent" cols="30" rows="10" placeholder="card content..."></textarea>
                            <button class="btn btn-green addCardBtn">Add Card</button><span class="close" id="addCardClose">×</span>
                        </form>
                    </div>
                </div>
            </div>
            
            <!-- list 들을 관리하는 영역으로 list 안에는 제목, 카드 목록, 카드 추가 영역이 있다-->
            <div id="listAddWrap">
                <div id="addLabel">+ Add another list</div>
                <form id="addList">
                    <input id="addListTitle" type="text" placeholder="Enter list title..." autocomplete="off">
                    <button class="btn btn-green">Add List</button><span class="close" id="addListClose">&times</span>
                </form>
            </div>

        </div>
    </div>

</body>

</html>