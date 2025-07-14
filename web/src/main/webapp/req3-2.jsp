<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>GET방식으로 전달된 요청파라미터 읽기</h1>
	
	<%
		String id = request.getParameter("userid");
	
	%>
	
	<h3>요청파라미터 정보</h3>
	<p><%=id %></p>
</body>
</html>