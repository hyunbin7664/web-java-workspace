<%@page import="demo.Car"%>
<%@page import="demo.Customer"%>
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
	<h1>속성 표현하기</h1>
	
<%
	Car car = new Car();
	car.setName("쏘나타");
	car.setCompany("현대자동차");
	car.setPrice(50000000);

	Customer customer = new Customer();
	customer.setNo(100);
	customer.setName("홍길동");
	customer.setTel("010-1234-5678");
	// customer.setAddress("서울특별시 종로구 봉익동 100-5");
	customer.setDeleted(false);
	customer.setMyCar(car);
	
	pageContext.setAttribute("cust", customer);
%>
	<dl>
		<dt>고객번호</dt><dd>${cust.no }</dd>
		<dt>고객명</dt><dd>${cust.name }</dd>
		<dt>연락처</dt><dd>${cust.tel }</dd>
		<dt>주소</dt><dd>${cust.address }</dd>
		<dt>삭제여부</dt><dd>${cust.deleted }</dd>
		<dt>보유차량 이름</dt><dd>${cust.myCar.name }</dd>
		<dt>보유차량 제조회사</dt><dd>${cust.myCar.company }</dd>
		<dt>보유차량 가격</dt><dd>${cust.myCar.price }</dd>
		<dt>보유차량 할인가격</dt><dd>${cust.myCar.discountPrice }</dd>
	</dl>
</body>
</html>