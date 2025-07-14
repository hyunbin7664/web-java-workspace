<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	<h1>속성 표현하기</h1>
<%

	String[] names = {"홍길동", "김유신", "강감찬"};	
	List<String> categories = List.of("소설", "인문", "외국어");
	
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("categories", categories);
	
%>
	<ul>
		<li>${names[0] }</li>
		<li>${names[1] }</li>
		<li>${names[2] }</li>
	</ul>
	<ul>
		<li>${categories[0] }</li>
		<li>${categories[1] }</li>
		<li>${categories[2] }</li>
	</ul>
	
</body>
</html>