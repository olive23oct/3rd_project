<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>login</title>
</head>
<style>
/* body {
   background-image:
      url("https://images.unsplash.com/photo-1534099946341-34fe5ef39eef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80");
   background-repeat: no-repeat;
   background-size: cover;
} */

.navbar {
   background: transparent;
}

#brandLogo {
   height: 40px;
   position: relative;
   bottom: 10px;
}

.container {
   height: 100%;
   align-content: center;
}
body{
	background-image: url( "resources/img/oliveoil1.png" );
	
	background-size: cover;
}
 .card {
 	position:relative;
 	left:700px;
   height: 370px;
   margin-top: auto;
   margin-bottom: auto;
   width: 400px;
   background-color: rgba(255, 255, 255, 0.5) !important;
} 

/* .container {
        padding: 30px;
        font-size: 50px;
        font-weight: bold;
        text-align: center;
        background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );
      } */

h2{font-family: cursive;}

</style>
<script>
   $(function() {
      $("#googlebtn").click(function() {
         alert("아직 준비되지 않은 기능입니다~~ 쏘리~~");
         window.history.back(-1);
      })

      $("#joinbtn").click(function() {
         window.location.href = "join.jsp";
      })

       $("#email").keyup(function(){
          $("#emailchk").hide;
          if ($("#email").val().indexOf("@") == -1) {
              /*  alert("올바른 이메일 형식이 아닙니다.\n" + "ex. olive@google.com"); */
               $("#emailchk").text("올바른 이메일 형식이 아닙니다.\n" + "ex. olive@google.com");
               $("#emailchk").css("color", "red");
               $("#email").focus();
               return false;
            } else if ($("#email").val().indexOf(".com") == -1
                  && $("#email").val().indexOf(".net") == -1) {
               /* alert("올바른 이메일 형식이 아닙니다."); */
               $("#emailchk").text("올바른 이메일 형식이 아닙니다.");
               $("#emailchk").css("color", "red");
               $("#email").focus();
               return false;
            } else {
                $("#loginbtn").prop("disabled", false);
            }
       })

       $("#loginbtn").click(function(){
           var userEmail = $("#email").val();
           var userPwd = $("#password").val();
              $.ajax("login.do", {
                async : true,
                 type : "post",
                 data : {email : userEmail, password : userPwd}, 
                 dataType : "text",
                 success : function(data){
                    if(data == "success"){
                       /* alert("로그인 성공."); */
                     $("#pwdchk").hide();  
                       
                          window.location.href = "getBoardList.do";
                         /* window.location.href= "join.jsp"; */
                      }else if(data == "wrongPwd"){
                      $("#pwdchk").html("비밀번호를 확인해주세요");
                      $("#pwdchk").css("color", "red");
                      }
                 },
                 error : function(jqXHR, textStatus, errorThrown){
                    alert("아이디를 확인해주세요");
                 }
              });
          
       })
   }); 

</script>
<body>
   <header role="banner">
      <nav role="navigation" class="navbar navbar-static-top navbar-default">
         <div class="container">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse"
                  data-target="#navbar-collapse">
                  <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                     class="icon-bar"></span> <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="login2.jsp"><img id="brandLogo"
                  src="resources/img/olive_logo.png"></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="login.jsp">로그인</a></li>
                  <li><a href="join2.jsp">회원가입</a></li>
                  <li><a href="#">사용법</a></li>
               </ul>
            </div>
         </div>
      </nav>

   </header>
   <div class="container">
      <div class="d-flex justify-content-center h-100">
         <div class="card">
            <form name="loginform" method="POST" action="login.do">
               <h2>Olive</h2>
               <input type class="form-control" id="email" name="email"
                  placeholder="exaple@google.com">
               <div id="emailchk"></div>
               <div class="form-group">
                  <label for="password">비밀번호</label><br> <input type="password"
                     class="form-control" id="password" name="password"
                     placeholder="********">
                  <div id="pwdchk"></div>
               </div>
               <div class="form-group">

                  <input type="button" class="btn btn-default" id="loginbtn"
                     disabled="disabled" value="로그인">
               </div>
            </form>
            <button class="btn btn-default" id="joinbtn">가입하기</button>
            <div class="form-group">
                  <button id="googlebtn" class="btn btn-default">구글로 로그인하기</button>
                  <br>
               </div>
         </div>
      </div>
   </div>
</body>
</html>