<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP 연습</h1>
	<p>JSP 연습용 웹 애플리케이션입니다.</p>
	
<%
	Date date = new Date();
%>
	<p>현재 날짜와 시간 : <%=date %> </p>
</body>
</html>