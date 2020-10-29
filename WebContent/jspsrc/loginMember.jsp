<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>  <!--  loginMember.jsp --> 
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Verdana, sans-serif; font-size:0.8em}
header,nav,section,article,footer {border:1px solid gray; margin:5px; padding:8px}
nav ul{margin:0; padding:0;} nav ul li{display:inline; margin:5px}
section{height:350px;} #id_form{width:150px; height:14px; color:red;}
#label_form{display: inline-block; width:60px; height:14px; color:red;} </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#logout").click(function(){
    $.ajax({    
                url:"userLogout.jsp",
                success: function(result){
                    $("#bodyContent").html(result);
           }});
  });
});
</script><title>ajax 실습</title>
<body id="bodyContent">
<%!
boolean isSessionOn(String str)
{
  if( (str == null) || str.equals("")) return false;
  return true;
}
%>
<header>
  <h2>실습을 환영합니다</h2></header>
<nav>
  <ul>
    <li id="logout">로그아웃</li>
  </ul></nav>
<section id="displayArea"><h4>회원영역입니다</h4></section>  
<footer><p>&copy; 20XX Made by Korea. All right reserved.</p></footer>
</body></html>
