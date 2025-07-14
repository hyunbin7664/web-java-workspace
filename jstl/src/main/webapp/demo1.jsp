<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% // @ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("msg1", "안녕하세요");

	String content = "";
	content += "<script>";
	content += "alert('정보가 유실되었습니다.');";
	content += "</script>";
	request.setAttribute("msg2", content);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애플리케이션</title>
</head>
<body>
	<h1>Core 태그 라이브러리</h1>
	
	<h2>out 태그</h2>
	
	<!--<p>${msg1 }</p>-->
	<!--<p><c:out value="${msg1 }" /></p>-->
	
	<p>${msg2 }</p>
	<p>&lt;p&gt;태그는 단락태그입니다.</p>
	<p><c:out value="${msg2 }" /></p>
</body>
</html>