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
	
	<h1>속성과 스코프 연습1 : demo7-2.jsp</h1>
	
	<dl>
		<dt>pageScope</dt><dd>${a }</dd>
		<dt>requestScope</dt><dd>${b }</dd>
		<dt>sessionScope</dt><dd>${c }</dd>
		<dt>applicationScope</dt><dd>${d }</dd>
	</dl>
	
</body>
</html>