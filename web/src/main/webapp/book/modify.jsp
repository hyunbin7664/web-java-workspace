<%@page import="kr.co.book.vo.Book"%>
<%@page import="kr.co.book.dao.BookDao"%>
<%@page import="kr.co.book.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청정보
		- 요청 URL
			/web/book/detail.jsp?bno=1000
		- 요청파라미터
		name		value
		-------------------------------
		bno			수정할 책번호		querystring
		title		수정된 제목		formdata
		author		저자				formdata
		publisher	출판사			formdata
		price		가격				formdata
		stock		재고수량			formdata
		pubDate		출판일			formdata
		summary		설명			formdata
	*/
	// 요청파라미터값 조회
	int bookNo = StringUtils.strToInt(request.getParameter("bno"));
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	int price = StringUtils.strToInt(request.getParameter("price"));
	int stock = StringUtils.strToInt(request.getParameter("stock"));
	String pubDate = request.getParameter("pubDate");
	String summary = request.getParameter("summary");
	
	// BookDao객체를 생성하고 수정 전 책 정보 조회하기
	BookDao bookDao = new BookDao();
	Book book = bookDao.getBookByNo(bookNo);
	
	// 수정 전 책정보에 수정된 정보를 반영한다.
	book.setTitle(title);
	book.setAuthor(author);
	book.setPublisher(publisher);
	book.setPrice(price);
	book.setStock(stock);
	book.setPubDate(pubDate);
	book.setSummary(summary);
	
	// 수정된 정보가 반영된 책정보를 테이블에 반영시킨다.
	bookDao.updateBook(book);
	
	// 웹브라우저에게 detail.jsp를 재요청하는 응답을 보낸다.
	response.sendRedirect("detail.jsp?bno=" + bookNo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>애플리케이션</title>
</head>
<body>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
</html>