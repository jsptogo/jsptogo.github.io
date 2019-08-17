<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!doctype  html>  <!--     yesno.jsp    -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>폼 테스트</title></head>
<body>
<section>
  <h2>JSP form</h2>
  <section>
    <h2>입력한 내용 : <%= request.getParameter("question01")%> <br/></h2>
  </section>
</section>
</body></html>