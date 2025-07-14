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
	<h1>EL의 연산자 - 산술연산</h1>
<%
	request.setAttribute("num1", 100);
	request.setAttribute("num2", 5);
	
%>
	<dl>
		<dt>덧셈</dt><dd>${num1 + num2 }</dd>
		<dt>뺄셈</dt><dd>${num1 - num2 }</dd>
		<dt>곱셈</dt><dd>${num1 * num2 }</dd>
		<dt>나눗셈</dt><dd>${num1 div num2 }</dd><dd>${num1 / num2 }</dd>
		<dt>나머지 연산</dt><dd>${num1 mod num2 }</dd><dd>${num1 % num2 }</dd>
	</dl>
</body>
</html>