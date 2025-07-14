<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setAttribute("score", 100);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>애플리케이션</title>
</head>
<body>
	<h1>Core 태그 라이브러리</h1>
	
	<h2>if 태그</h2>
	
	<c:if test="${score ge 60}">
		<p>합격입니다.</p>
	</c:if>
</body>
</html>