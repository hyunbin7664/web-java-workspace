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
	<h1>EL로 초기화 파라미터 표현</h1>
	<dl>
		
		<dt>회사명</dt><dd>${initParam.companyName }</dd>
		<dt>관리자이메일</dt><dd>${initParam.adminEmail }</dd>
	</dl>
</body>
</html>