<%@page import="kr.co.board.util.StringUtils"%>
<%@page import="kr.co.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int boardNo = StringUtils.strToInt(request.getParameter("bno"));

	BoardDao boardDao = new BoardDao();
	boardDao.deleteBoardByNo(boardNo);
	
	response.sendRedirect("list.jsp");
%>