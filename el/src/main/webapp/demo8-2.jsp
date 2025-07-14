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
	
	<h1>속성과 스코프 연습1 : demo8-2.jsp</h1>
	
	<dl>
		<dt>pageScope</dt><dd>${a1 }</dd>
		<dt>requestScope</dt><dd>${b1 }</dd>
		<dt>sessionScope</dt><dd>${c1 }</dd>
		<dt>applicationScope</dt><dd>${d1 }</dd>
	</dl>
	
</body>
</html>