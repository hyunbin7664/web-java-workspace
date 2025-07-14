<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>애플리케이션</title>
</head>
<body>
	<h1>속성값 표현하기</h1>
	
<%
	// PageContext 객체에 속성 저장하기
	pageContext.setAttribute("a", "AAA");

	// HttpServletRequest 객체에 속성 저장하기
	request.setAttribute("b", "BBB");
	
	// HttpSession 객체에 속성 저장하기
	session.setAttribute("c", "CCC");
	
	// ServletContext 객체에 속성 저장하기
	application.setAttribute("d", "DDD");
%>	
	<dl>
		<dt>PageContext</dt>
		<dd>${pageScope.a }</dd>
		<dd>${a }</dd>
	
		<dt>HttpServletRequest</dt>
		<dd>${requestScope.b }</dd>
		<dd>${b }</dd>
	
		<dt>HttpSession</dt>
		<dd>${sessionScope.c }</dd>
		<dd>${c }</dd>
	
		<dt>ServletContext</dt>
		<dd>${applicationScope.d }</dd>
		<dd>${d }</dd>

	</dl>
	
</body>
</html>