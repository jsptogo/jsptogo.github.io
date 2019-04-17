<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>  <!-- axlogout.jsp --> 
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<% session.invalidate(); %>
<% response.sendRedirect("axhome.html"); %>
</body>
</html>
