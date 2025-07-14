<%@page import="kr.co.board.vo.Board"%>
<%@page import="kr.co.board.dao.BoardDao"%>
<%@page import="kr.co.board.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int boardNo = StringUtils.strToInt(request.getParameter("bno"));

	BoardDao boardDao = new BoardDao();
	Board board = boardDao.getBoardByNo(boardNo);
	
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	boardDao.updateBoardByNo(board);
	
	response.sendRedirect("detail.jsp?bno=" + boardNo);
%>