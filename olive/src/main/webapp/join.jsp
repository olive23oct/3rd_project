<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>join</title>
</head>
<style>
body {
    margin: 0;
}
body {
    display: block;
    margin: 8px;
}
html {
    font-size: 20px;
}
html {
    font-family: "jaf-facitweb","Helvetica Neue",Arial,sans-serif;
    color: #4d4d4d;
    font-size: 16px;
    font-weight: 300;
    line-height: 1.44em;
}
html {
    font-family: sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
}
html {
    color: -internal-root-color;
}
selection {
    background: hsl(202,92%,85%);
    text-shadow: none;
}
.section-wrapper {
    max-width: 540px;
    margin: 0 auto;
}
textarea, input[type="text"], input[type="email"], input[type="password"], input[type="number"] {
    background: #EDEFF0;
    border-radius: 4px;
    border: 1px solid #CDD2D4;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    padding: .5em;
    max-width: 400px;
    width: 100%;
}
textarea, input {
    display: block;
    margin: 0 0 1.2em;
}
button, input, optgroup, select, textarea {
    color: inherit;
    font: inherit;
    margin: 0;
}
input {
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
    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}

section {
    overflow: hidden;
    padding: 0 1em;
    word-wrap: break-word;
}
</style>
<script>

    $(function () {
        $("#googlebtn").click(function () {
            alert("아직 준비되지 않은 기능입니다~~ 쏘리~~");
            window.history.back();
        })
       
        $("#email").keyup(function () {
            $("emailchk").text("");
            if ($("#email").val().indexOf("@") == -1) {
                $("#emailchk").text(
                    "올바른 이메일 형식이 아닙니다.\n"
                    + "ex. olive@google.com");
                $("#emailchk").attr("style", "color:red");
                $("#email").focus();
                return false;
            } else if ($("#email").val().indexOf(".com") == -1
                && $("#email").val().indexOf(".net") == -1) {
                $("#emailchk").text("올바른 이메일 형식이 아닙니다.");
                $("#emailchk").attr("style", "color:red");
                $("#email").focus();
                return false;
            } else if (($("#email").val() == null)) {
                $("#emailchk").text("");
            }

            var id = document.getElementById("email").value;

            $.ajax({
                async: true,

                type: "POST",

                url: "checkEmail.do",

                data: "id=" + id,

                dataType: "json",

                success: function (data) {

                    console.log("출력되나" + data);
                    if (data == "0") {
                        $("#emailchk").text("사용할 수 있는 이메일입니다");
                        $("#emailchk ").attr("style",
                            "color:green");
                    } else {
                        $("#emailchk ").text("이미 사용중인 이메일입니다");
                        $("#emailchk ").attr("style",
                            "color:red");
                    }
                }

            }); // ajax 끝

        })
        $("#password").keyup(function () {
            if ($("#password").val().length <= 7
                || $("#password").val().length >= 15) {
                $("#pwdchk").html("비밀번호는 8자리 이상, 14자리 이하로 입력하세요.");
                $("#pwdchk").css("color", "red");
                $("#password").focus();
                return false;
                }    
            else if (!$("#password").val().match(
                    /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
                $("#pwdchk").html("비밀번호는 특수문자[!,@,#,$,%,^,&,*,?,_,~]가 꼭 포함되어야 합니다.");
                $("#pwdchk").css("color", "red");
                $("#password").focus();
                return false; 
            } else {
                $("#pwdchk").html("사용할 수 있는 비밀번호입니다");
                $("#pwdchk").css("color", "green");
            }
        })
        $("#passwordchk").keyup(function(){
            if ($("#password").val() != $("#passwordchk")
                .val()) {
                $("#pwdchk").html("비밀번호가 동일하지 않습니다.");
                $("#pwdchk").css("color", "red");         
                return false;
            } else if ($("#password").val() == $("#passwordchk").val()) {
                $("#pwdchk").html("비밀번호가 일치합니다");
                $("#pwdchk").css("color", "green");
                $("#joinbtn").prop("disabled", false);
            }
        })
      $("#joinbtn").click(function(){
         document.joinForm.submit();
      })
    });
</script>

<body>
    <section>
        <div class="section-wrapper">

            <form method="POST" id="joinForm" action="insertUser.do">
                <div class="form-group">
                    <h2>새 계정 만들기</h2>
                    <a href="login.jsp">sign in your account</a>
                </div>
                <div class="form-group">
                    <label for="name">Name</label> <input type="text" class="form-control" id="name" name="name"
                        placeholder="e.g. HeeJin Yu">
                </div>
                <div class="form-group">
                    <label for="email">Email</label> <input type="text" class="form-control" id="email" name="email"
                        placeholder="e.g. example@google.com">
                    <div id="emailchk"></div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label> <input type="password" class="form-control" id="password"
                        name="password" placeholder="e.g. ********"> <input type="password" class="form-control"
                        id="passwordchk" name="passwordchk" placeholder="e.g. ********">
                    <div id="pwdchk"></div>
                    <div id="pwdchk_code"></div>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-default" id="joinbtn" value="Create New Account"
                        disabled="disabled">
                    <button type="reset" class="btn btn-default">다시 입력</button>
                </div>

                <button id="googlebtn" class="btn btn-default">sign up with
                    google</button>
            </form>

        </div>
    </section>
</body>

</html>