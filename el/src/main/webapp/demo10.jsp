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
	<h1>EL의 연산자 - 비교 연산</h1>
<%
	request.setAttribute("num1", 10);
	request.setAttribute("num2", 20);
	request.setAttribute("str1", "홍길동");
	request.setAttribute("str2", "홍길동");
	request.setAttribute("str3", "김유신");
%>
	<dl>
		<dt>숫자값 비교</dt>
		<dd>10 gt 20 : ${num1 gt num2 }</dd>
		<dd>10 ge 20 : ${num1 ge num2 }</dd>
		<dd>10 lt 20 : ${num1 lt num2 }</dd>
		<dd>10 le 20 : ${num1 le num2 }</dd>
		<dd>10 eq 20 : ${num1 eq num2 }</dd>
		<dd>10 ne 20 : ${num1 ne num2 }</dd>
		<dd>10 > 20 : ${num1 > num2 }</dd>
		<dd>10 >= 20 : ${num1 >= num2 }</dd>
		<dd>10 < 20 : ${num1 < num2 }</dd>
		<dd>10 <= 20 : ${num1 <= num2 }</dd>
		<dd>10 == 20 : ${num1 == num2 }</dd>
		<dd>10 != 20 : ${num1 != num2 }</dd>
		
		<dt>String값 비교</dt>
		<dd>"홍길동" eq "홍길동" : ${str1 eq str2 }</dd>
		<dd>"홍길동" ne "홍길동" : ${str1 ne str2 }</dd>
		<dd>"홍길동" eq "김유신" : ${str1 eq str3 }</dd>
		<dd>"홍길동" ne "김유신" : ${str1 ne str3 }</dd>
		<dd>"홍길동" == "홍길동" : ${str1 == str2 }</dd>
		<dd>"홍길동" != "홍길동" : ${str1 != str2 }</dd>
		<dd>"홍길동" == "김유신" : ${str1 == str3 }</dd>
		<dd>"홍길동" != "김유신" : ${str1 != str3 }</dd>
		
	</dl>
</body>
</html>