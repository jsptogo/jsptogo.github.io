<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!doctype  html>  <!--     survey.jsp    -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>테스트</title></head>
<body>
<section>
  <h3>입력 결과</h3>
  <section>
    <h3>question01 : <%= request.getParameter("question01")%> <br/></h3>
    <h3>question02 : <%= request.getParameter("question02")%> <br/></h3>
    <h3>question03 : <%= request.getParameter("question03")%> <br/></h3>
    <h3>question04 : <%= request.getParameter("question04")%> <br/></h3>
    <h3>question05 : <%= request.getParameter("question05")%> <br/></h3>
    <h3>question06 : <%= request.getParameter("question06")%> <br/></h3>
    <h3>question07 : <%= request.getParameter("question07")%> <br/></h3>
    <h3>question08 : <%= request.getParameter("question08")%> <br/></h3>
    <h3>question09 : <%= request.getParameter("question09")%> <br/></h3>
    <h3>question10 : <%= request.getParameter("question10")%> <br/></h3>
    <h3>question11 : <%= request.getParameter("question11")%> <br/></h3>
    <h3>question12 : <%= request.getParameter("question12")%> <br/></h3>
    <h3>성별 : <%= request.getParameter("gender")%> <br/></h3>
    <h3>교육수준 : <%= request.getParameter("edu")%> <br/></h3>
    <h3>근무연수(연) : <%= request.getParameter("input1")%> <br/></h3>
    <h3>근무연수(월) : <%= request.getParameter("input2")%> <br/></h3>
    <h3>나이 : <%= request.getParameter("input3")%> <br/></h3>
  </section>
</section>
</body></html>
