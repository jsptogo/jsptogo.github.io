<%@  page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!doctype html>  <!--   loginCheck.jsp  --> 
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>body {font-family: Verdana, sans-serif; font-size:0.8em}
header,nav,section,article,footer{border:1px solid gray; margin:5px; padding:8px}
nav ul{margin:0; padding:0;} nav ul li{display:inline; margin:5px}
section{height:350px;} #id_form{width:150px; height:14px; color:red;}
#label_form{display: inline-block; width:60px; height:14px; color:red;} </style>
<title>ajax 실습</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%!
boolean isSessionOn(String str)
{ 
  if( (str == null) || str.equals("")) return false;
  return true;   }
%>
</head>
<body>
<%
if(!isSessionOn(request.getParameter("user_id"))  || !isSessionOn(request.getParameter("user_passwd")))
{    response.sendRedirect("axhome.html"); }
String userId = "admin";    String userPasswd = "admin";
// 아이디 오류
if (request.getParameter("user_id").equals(userId) &&   request.getParameter("user_passwd").equals(userPasswd) )
{  // 세션 변수 및 값 설정 
   session.setAttribute("sid", request.getParameter("user_id"));
   session.setAttribute("spasswd", request.getParameter("user_passwd"));
   response.sendRedirect("loginMember.jsp");
} else {
response.sendRedirect("userLogin.html");
}
%>
</body></html>


