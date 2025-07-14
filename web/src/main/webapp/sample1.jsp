<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립틀릿 연습</h1>
	
<%
	String name = "홍길동";
	int age = 30;
	String email = "hong@gmail.com";
	String tel = "010-1111-1111";
%>
	
	<h3>사용자 정보</h3>
	<dl>
		<dt>이름</dt><dd><%=name %></dd>
		<dt>나이</dt><dd><%=age %></dd>
		<dt>이메일</dt><dd><%=email %></dd>
		<dt>전화번호</dt><dd><%=tel %></dd>
	</dl>

</body>
</html>