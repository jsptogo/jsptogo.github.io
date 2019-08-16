<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!doctype  html>  <!--     survey3.jsp    -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>폼 테스트</title></head>
<body>
<section>
  <h2>JSP form</h2>
  <section>
    <h2>이름 : <%= request.getParameter("input1")%> <br/></h2>
    <h2>나이 : <%= request.getParameter("input2")%> <br/></h2>
    <h2>이메일 : <%= request.getParameter("input3")%> <br/></h2>
    <h2>전화번호 : <%= request.getParameter("input4")%> <br/></h2>
    <h2>성별 : <%= request.getParameter("gender")%> <br/></h2>

    <h2>question01 : <%= request.getParameter("question01")%> <br/></h2>
    <h2>question02 : <%= request.getParameter("question02")%> <br/></h2>
    <h2>question03 : <%= request.getParameter("question03")%> <br/></h2>
  </section>
</section>
</body></html>