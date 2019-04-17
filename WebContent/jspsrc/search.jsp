<%@ page  language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>  <!-- axmember.jsp --> 
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- [if It IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js">
</script>
<![ENDif]-->
<style>
body {font-family: Verdana, sans-serif; font-size:0.8em}
header,nav,section,article,aside,footer {border:1px solid gray; margin:5px; padding:8px}
nav ul{margin:0; padding:0;}  nav ul li{display:inline; margin:5px}
section  {height:400px;}  #id_form{width:150px; height:14px; color:red;}
#label_form{display: inline-block; width:60px; height:14px; color:red;}     
table, th, td {  border:1px solid black; border-collapse: collapse; }  
table {width:100%; height:80%; }
th, td { text-align:center; padding:10px; vertical-align:bottom;}
tr:nth-child(odd) {  background-color: lightgray; }
th { background-color: gray; color:white;}
table.ex1 { table-layout: auto; } </style>
<title>ajax 실습</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#logout").click(function(){
    $.ajax({    
                url:"axlogout.jsp",
                success: function(result){
                    $("#bodyContent").html(result);
           }});
  });
  $("#search").click(function(){
    $("#displayArea").html($("#searchArea").html());
    });
  $("#searchArea").hide(function(){});  // 처음 화면 body 부분에 나오지 않도록.
});
</script>
<%!
boolean isSessionOn(String str)
{
  if( (str == null) || str.equals("")) return false;
  return true;
}
%>
<body id="bodyContent">
<header><h2>실습을 환영합니다</h2></header>
<nav><ul><li id="logout">로그아웃</li><li id="search">검색</li></ul></nav>
<section id="displayArea"> 
<%
if (!isSessionOn((String)session.getAttribute("sid")) ||
    !isSessionOn((String)session.getAttribute("spasswd")))
{     
  response.sendRedirect("axhome.html");
} else {
%>
<div id="searchArea">
<form action="search.jsp" method="post">
 <fieldset><legend>검색</legend>
 <select name="search_select">
   <option value="s_whole" selected>전체</option>
   <option value="s_name">이름</option>
   <option value="s_userid">성별</option>
   <option value="s_email">취미</option>
  </select>
  <input id="id_form" type="text" name="stud_search" size="20" maxlength="50"/>
  <input type="submit" value="검색">
 </fieldset>
</form></div>
<h4>검색결과</h4>
선택:
<%=request.getParameter("search_select")%>
입력값:
<%=request.getParameter("stud_search")%>
<!-- 자바 JDBC 코드 입력 -->
<div style="overflow-x:auto; overflow-y:auto;">     <!--   responsive table -->
  <table class="ex1">
    <tr><th> 이름</th><th>국어점수</th><th>영어점수</th><th>수학점수</th><th>물리점수</th><th>화학</th>
          <th>생물점수</th><th>기술점수</th><th>국사점수</th><th>한문점수</th><th>상식</th></tr>
    <tr><td>홍길동</td><td>95</td><td>77</td><td>67</td><td>80</td><td>85</td>
          <td>86</td><td>79</td><td>80</td><td>95</td><td>85</td></tr>
    <tr><td>이몽룡</td><td>90</td><td>87</td><td>87</td><td>70</td><td>95</td>
          <td>77</td><td>85</td><td>70</td><td>85</td><td>88</td></tr>
    <tr><td>변학도</td><td>85</td><td>79</td><td>75</td><td>86</td><td>55</td>
          <td>60</td><td>95</td><td>85</td><td>75</td><td>80</td></tr>
  </table></div>
<% } %>
</section><footer><p>&copy; 20XX Made by Korea. All right reserved.</p></footer>
</body></html>
