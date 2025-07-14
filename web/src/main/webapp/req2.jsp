<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request 내장객체</h1>
	<p>요청메시지의 헤더 정보 조회하기</p>
	
	<%
	// 클라이언트의 브라우저가 지원하는 데이터형식 조회
	String accept = request.getHeader("Accept");
	// 클라이언트의 브라우저가 지원하는 압충방식 조회
	String encoding = request.getHeader("Accept-Encoding");
	// 클라이언트의 브라우저가 지원하는 언어 조회
	String language = request.getHeader("Accept-Language");
	// 클라이언트의 브라우저 정보 조회
	String agent = request.getHeader("User-Agent");
	%>
	
	<h3>요청 메시지의 헤더정보</h3>
	<dl>
		<dt>지원하는 컨텐츠 유형</dt><dd><%=accept %></dd>
		<dt>지원하는 압축방식</dt><dd><%=encoding %></dd>
		<dt>지원하는 언어</dt><dd><%=language %></dd>
		<dt>웹브라우저 정보</dt><dd><%=agent %></dd>
	</dl>

</body>
</html>