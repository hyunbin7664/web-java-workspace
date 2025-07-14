<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>POST방식으로 전달된 요청파라미터 읽기</h1>
	
	<%
	String id = request.getParameter("id");
	String password = request.getParameter("pwd");
	%>
	
	<h3>post의 방식으로 전달된 요청파라미터</h3>
	<p>아이디: <%=id %></p>
	<p>비밀번호: <%=password %></p>
</body>
</html>