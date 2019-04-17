<%@  page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" import="org.json.simple.*" import="org.json.simple.parser.*" import="java.util.*" %>
<%
//결과를 json형태로 저장하기 위한 객체
JSONObject obj=new JSONObject();
obj.put("user_id","admin");
obj.put("user_passwd","1234");
//json으로 응답하기
out.println(obj.toJSONString());
//response.setContentType("text/plain;charset=utf-8");
//response.getWriter().write(obj.toString());
%>
