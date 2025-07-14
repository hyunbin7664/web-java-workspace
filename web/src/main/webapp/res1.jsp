<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>HttpServletResponse 객체</h1>
	
	<%
	// 응답컨텐츠의 타입을 설정하기
	// JSP 기반의 웹 애플리케이션은 page 지시어에 설정된 값으로 자동으로 설정된다.
	// response.setContentType("text/htmll charset=utf-8");
	
	// 응답컨텐츠의 길이를 설정한다.
	// 주로, 파일을 다운로드할 때, 다운로드되는 파일의 크기를 지정한다.
	// response.setContentLength(1000);
	
	// HTTP 상태코드를 설정한다.
	// JSP 기반의 웹 애플리케이션은 자동으로 설정된다.
	// response.setStatus(HttpServletResponse.SC_OK);
	%>
</body>
</html>