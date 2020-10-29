<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!doctype  html>  <!--     yesno.jsp    -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>폼 테스트</title></head>
<body>
<section>
  <h3>입력 결과</h3>
  <section>
    <h3>입력한 내용 : <%= request.getParameter("question01")%> <br/></h3>
    <h3>전화번호 : <%= request.getParameter("input4")%> <br/></h3>
  </section>
</section>
</body></html>