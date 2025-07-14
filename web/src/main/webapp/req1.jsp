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
	<p>요청메시지에서 웹브라우저/서버관련 정보 조회하기</p>
	
	<%
	// 요청방식(GET, POST)을 조회
	String method = request.getMethod();
	
	// 요청 URI를 조회
	String uri = request.getRequestURI();
	
	// 클라이언트의 ip주소 조회
	String ip = request.getRemoteAddr();
	%>
	
	<dl>
		<dt>요청방식</dt><dd><%=method %></dd>
		<dt>요청URI</dt><dd><%=uri %></dd>
		<dt>IP주소</dt><dd><%=ip %></dd>
	</dl>

</body>
</html>