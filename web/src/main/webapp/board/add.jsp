<%@page import="kr.co.board.dao.BoardDao"%>
<%@page import="kr.co.board.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	Board board = new Board();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	BoardDao boardDao = new BoardDao();
	boardDao.insertBoard(board);
	
	response.sendRedirect("list.jsp");
%>