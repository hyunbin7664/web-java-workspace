<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립틀릿 연습</h1>
	<p>스트립틀릿으로 반복작업 수행하기</p>
<%	
	List<String> names = List.of("홍길동", "김유신", "강감찬", "이순신");
%>	
	<h3>직원 목록</h3>
	<ul>
	
<%
	for (String name : names) {
%>
		<li><%=name %></li>
<%
	}
%>
	</ul>
	

</body>
</html>