<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
    function changeColor()
    {
        var color = ["#FF0000", "#00FF00", "#0000FF","#000FFF","#00F0FF","#0F00FF","#F000FF"];
        var title = document.getElementById("body");
        var i = 0;
 
        setInterval(function(){
        title.style.color = color[i]; //title의 색상을 바꿈
        i = (i+1) % color.length;
    },50);
    }
    </script>
     <script language="javascript">
        function Check(){
             var idCheck = document.getElementById("ID");
             var passCheck = document.getElementById("pass");
             var passCheckch = document.getElementById("passch");
       
             var id= RegExp(/^[a-zA-Z0-9]{4,12}$/)
             var pass= RegExp(/^[a-zA-Z0-9]{4,12}$/)

             //아이디 공백 확인
             if(idCheck.value == ""){
                  alert("아이디 입력바람");
                  idCheck.focus();
                  return false;
             }
             //아이디 유효성검사
             if(!id.test(idCheck.value)){
                  alert("형식에 맞게 입력해주세요");
                  idCheck.value = "";
                  idCheck.focus();
                  return false;
             }
          
            //비밀번호 공백 확인
             if(passCheck.value == ""){
                  alert("패스워드 입력바람");
                  passCheck.focus();
                  return false;
             }

             //아이디 비밀번호 같음 확인
             if(idCheck.value == passCheck.value){
                  alert("아이디와 비밀번호가 같습니다");
                  passCheck.value= "";
                  passCheck.focus();
                   return false;
             }

              //비밀번호 유효성검사
             if(!pass.test(passCheck.value)){
                  alert("형식에 맞게 입력해주세요");
                  passCheck.value= "";
                  passCheck.focus();
                   return false;
             }

             //비밀번호 확인란 공백 확인
             if(passCheckch.value == ""){
                  alert("패스워드 확인란을 입력해주세요");
                  passCheckch.focus();
                  return false;
             }
             //비밀번호 서로확인
             if(passCheck.value != passCheckch.value){
                  alert("비밀번호가 상이합니다");
                  passCheck.value = "";
                  passCheckch.value = "";
                  passCheck.focus();
                  return false;
             }
             return true;
          }
     </script>
  </head>
  <body onload="changeColor()" id="body">
  	<form action="join2.jsp" method="post" onsubmit="return Check()">
    	<table border="1">
	        <tr>
	            <td colspan="2" align="center" bgcolor="9cceff"><font size="5"><b>
	                회원 기본 정보</b></font>
	            </td>
	        </tr>
	        <tr>
	            <td align="center" bgcolor="cde6ff" ><font size="4"><b>아이디</b></font></td>
	            <td><input type="text" AUTOCOMPLETE="off" name="ID" id="ID" size="20"><B> *4~12자의 영문 대소문자와 숫자로만 입력</B></td>
	        </tr>
	        <tr>
	            <td align="center" bgcolor="cde6ff"><font size="4"><b>비밀번호</b></font></td>
	            <td><input type="password" AUTOCOMPLETE="off" name="pass" id="pass"  size="21"><B> *4~12자의 영문 대소문자와 숫자로만 입력</B></td>
	        </tr>
	        <tr>
	            <td align="center" bgcolor="cde6ff"><font size="4"><b>비밀번호확인</b></font></td>
	            <td><input type="password" AUTOCOMPLETE="off" name ="passch" id="passch"  size="21"></td>
	        </tr>
        </table>
		<!-- <marquee behavior="alternate" scrollamount="300"> -->
		<input type="submit" value="회원 가입">
		<input type="reset" value="다시 입력">	<!-- </marquee> -->
	</form>
  </body>
</html>
