<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!doctype  html>  <!--     survey3.jsp    -->
<html><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>폼 테스트</title></head>
<body>
<section>
  <h2>JSP form</h2>
  <section>
    <h2>question01 : <%= request.getParameter("question01")%> <br/></h2>
    <h2>question02 : <%= request.getParameter("question02")%> <br/></h2>
    <h2>question03 : <%= request.getParameter("question03")%> <br/></h2>
    <h2>question04 : <%= request.getParameter("question04")%> <br/></h2>
    <h2>question05 : <%= request.getParameter("question05")%> <br/></h2>
    <h2>question06 : <%= request.getParameter("question06")%> <br/></h2>
    <h2>question07 : <%= request.getParameter("question07")%> <br/></h2>
    <h2>question08 : <%= request.getParameter("question08")%> <br/></h2>
    <h2>question09 : <%= request.getParameter("question09")%> <br/></h2>
    <h2>question10 : <%= request.getParameter("question10")%> <br/></h2>
    <h2>question11 : <%= request.getParameter("question11")%> <br/></h2>
    <h2>question12 : <%= request.getParameter("question12")%> <br/></h2>
    <h2>question13 : <%= request.getParameter("question13")%> <br/></h2>
    <h2>question14 : <%= request.getParameter("question14")%> <br/></h2>
    <h2>question15 : <%= request.getParameter("question15")%> <br/></h2>
    <h2>question16 : <%= request.getParameter("question16")%> <br/></h2>
    <h2>question17 : <%= request.getParameter("question17")%> <br/></h2>
    <h2>question18 : <%= request.getParameter("question18")%> <br/></h2>
    <h2>question19 : <%= request.getParameter("question19")%> <br/></h2>
    <h2>question20 : <%= request.getParameter("question20")%> <br/></h2>
  </section>
    <% 
      int a1 = Integer.parseInt(request.getParameter("question01"));
      int a2 = Integer.parseInt(request.getParameter("question02"));
      int a3 = Integer.parseInt(request.getParameter("question03"));
      int a4 = Integer.parseInt(request.getParameter("question04"));
      int a5 = Integer.parseInt(request.getParameter("question05"));
      int a6 = Integer.parseInt(request.getParameter("question06"));
      int a7 = Integer.parseInt(request.getParameter("question07"));
      int a8 = Integer.parseInt(request.getParameter("question08"));
      int a9 = Integer.parseInt(request.getParameter("question09"));
      int a10= Integer.parseInt(request.getParameter("question10"));
      int a11= Integer.parseInt(request.getParameter("question11"));
      int a12= Integer.parseInt(request.getParameter("question12"));
      int a13= Integer.parseInt(request.getParameter("question13"));
      int a14= Integer.parseInt(request.getParameter("question14"));
      int a15= Integer.parseInt(request.getParameter("question15"));
      int a16= Integer.parseInt(request.getParameter("question16"));
      int a17= Integer.parseInt(request.getParameter("question17"));
      int a18= Integer.parseInt(request.getParameter("question18"));
      int a19= Integer.parseInt(request.getParameter("question19"));
      int a20= Integer.parseInt(request.getParameter("question20"));
      int a = a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15+a16+a17+a18+a19+a20;      
      if(a >= 80) {
          out.println("중독 중증");
          out.println("인터넷이 일상생활에 심각한 문제를 야기할 수 있음");
          out.println("어떤 악영향과 문제점이 있는지 진단해야 함");
      } else if(score<80 && score>=50) {
          out.println("중독 초기");
          out.println("인터넷 때문에 겪는 문제가 일상생활에 끼치는 악영향을 고려해야함");
      } else {
          out.println("평범한 이용자");
          out.println("가끔 인터넷을 오래 쓰기도 하지만 자기 통제가 가능");
      }
    %>
  <section>
  </section>
</section>
</body></html>