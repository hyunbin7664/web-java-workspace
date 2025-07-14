<%@page import="kr.co.jhta.util.MybatisUtils"%>
<%@page import="kr.co.jhta.mapper.BoardMapper"%>
<%@page import="kr.co.jhta.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청 정보
			요청 URL
				/mybatis/board/add.jsp
			요청 파라미터
				name 		value
				-----------------------	
				title		제목
				writer		작성자
				content		게시글
	*/
	
	// 요청파라미터값을 조회한다.
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	// Board객체 생성해서 값 담기
	Board board = new Board();
	board.setTitle(title);
	board.setWrtier(writer);
	board.setContent(content);
	
	// BoardMapper 인터ㅠㅔ이스 구현객체 획득하기
	BoardMapper boardMapper = MybatisUtils.getMapper(BoardMapper.class);
	// 새 게시글 정보 저장시키기
	boardMapper.insertBoard(board);
	
	// list.jsp를 재요청하는 응답 보내기
	response.sendRedirect("list.jsp");
	
%>