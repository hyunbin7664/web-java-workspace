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
	<h1>요청 헤더 정보 표현하기</h1>
	
	<dl>
		<dt>Accept</dt><dd>${header.Accept }</dd>
		<dt>Accept-Language</dt><dd>${header['Accept-Laguage'] }</dd>
		<dt>Host</dt><dd>${header.Host }</dd>
		<dt>User-Agent</dt><dd>${header['User-Agent'] }</dd>
	</dl>
	
</body>
</html>