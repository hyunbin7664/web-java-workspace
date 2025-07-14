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
	Map<String, String> info = new HashMap<>();
	info.put("name", "도서 대여 시스템");
	info.put("desc", "도서 대여/반납/기부 기능이 포함된 웹 애플리케이션 시스템입니다.");
	info.put("members", "김유신, 강감찬, 이순신");
	
	pageContext.setAttribute("project", info);
%>

	<dl>
		<dt>프로젝명</dt><dd>${project.name }</dd>
		<dt>설명</dt><dd>${project.desc }</dd>
		<dt>구성원</dt><dd>${project.members }</dd>
	</dl>
	
</body>
</html>