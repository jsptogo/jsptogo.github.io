<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!doctype  html>  <!--     menu1.jsp   -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>메뉴 확인</title></head>
<body>
<section><h2>JSP form</h2>
  <section>
    <h2>종류:<%= request.getParameter("menux")%>,
            메뉴:<%= request.getParameter("mealx")%><br/></h2>
  </section>
</section>
</body></html>
