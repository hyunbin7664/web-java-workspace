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
	String[] categories = request.getParameterValues("category");
	String opt = request.getParameter("opt");
	String keyword = request.getParameter("keyword");
	%>
	<h3>요청파라미터로 전달받은 값</h3>
	<%
		for(String category : categories) {
	%>
	<p>카테고리 : <%=category %></p>
	
	<%
		}
	%>
	
	<h3>요청파라미터로 전달받은 값</h3>
	<p>검색옵션 : <%=opt %></p>
	<p>검색어 : <%=keyword %></p>
	
</body>
</html>