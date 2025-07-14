<%@page import="kr.co.book.dao.BookDao"%>
<%@page import="kr.co.book.vo.Book"%>
<%@page import="kr.co.book.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   // 1. 요청파라미터로 전달된 값 조회하기
   String title = request.getParameter("title");
   String author = request.getParameter("author");
   String publisher = request.getParameter("publisher");
   int price = StringUtils.strToInt(request.getParameter("price"));
   String pubDate = request.getParameter("pubDate");
   String summary = request.getParameter("summary");
   
   // 2. Book 객체를 생성해서 요청파라미터값을 담는다.
   Book book = new Book();
   book.setTitle(title);
   book.setAuthor(author);
   book.setPublisher(publisher);
   book.setPrice(price);
   book.setPubDate(pubDate);
   book.setSummary(summary);
   
   // 3. BookDao의 신규도서 등록기능을 호출해서 저장시킨다.
   BookDao bookDao = new BookDao();
   bookDao.insertBook(book);
   
   // 4. 웹브라우저에게 list.jsp를 재요청하게 하는 응답을 보낸다ㅏ.
   response.sendRedirect("list.jsp");
   %>