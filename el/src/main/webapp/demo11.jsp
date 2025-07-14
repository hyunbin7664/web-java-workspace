<%@page import="demo.Customer"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<h1>EL 연산자 - 논리연산자와 empty 연산자</h1>
<%
	request.setAttribute("운행거리", 20000);
	request.setAttribute("사용기간	", 3);

	String[] names = {"홍길동"};
	List<String> categories = new ArrayList<>();
	Map<String, Object> condition = new HashMap<>();
	Customer cust = new Customer();
	
	request.setAttribute("keyword", "");
	request.setAttribute("names", names);
	request.setAttribute("categories", categories);
	request.setAttribute("condition", condition);
	request.setAttribute("cust", cust);
%>
	<h3>논리연산자</h3>
	<p>
		운행거리가 5만km 미만, 사용기간이 3년 미만인 경우 무상수리
	</p>
	<p>무상 수리 여부 : ${운행거리 < 50000 and 사용기간 < 3 }</p>
	<p>무상 수리 여부 : ${(운행거리 lt 50000) and (사용기간 lt 3) }</p>	<!--괄호 없어도 가능-->
	
	<h3>empty 연산자</h3>
	<dl>
		<dt>null 인 경우</dt><dd>${not empty loginUserId }</dd>
		<dt>빈 문자열인 경우</dt><dd>${not empty keyword }</dd>
		<dt>빈 배열인 경우</dt><dd>${not empty names }</dd>
		<dt>빈 List인 경우</dt><dd>${not empty categories }</dd>
		<dt>빈 Map인 경우</dt><dd>${not empty condition }</dd>
		<!--<dt>빈 Map인 경우</dt><dd>${empty cust }</dd>-->	<!--자바빈즈는 해당하지 않으므로 이렇게 쓰면 안된다. default 값 때문!-->
	</dl>
	
</body>
</html>