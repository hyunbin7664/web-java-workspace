<%@page import="kr.co.book.dao.BookDao"%>
<%@page import="kr.co.book.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청정보
			- 요청 URL
				/web/book/delete.jsp?bno=xxxxx
			- 요청파라미터
				name 	value
				------------------------
				bno		책번호
	*/
	
	// 1. 요청파라미터값을 조회한다.
	int bookNo = StringUtils.strToInt(request.getParameter("bno"));

	// 2. BookDao객체를 생성하고, 삭제기능 실행하기
	BookDao bookDao = new BookDao();
	bookDao.deleteBookByNo(bookNo);
	
	// 3. 웹브라우저에 list.jsp를 재요청하게하는 응답보내기
	response.sendRedirect("list.jsp");
%>