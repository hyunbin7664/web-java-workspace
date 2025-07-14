<%@page import="kr.co.jhta.vo.Board"%>
<%@page import="kr.co.jhta.util.MybatisUtils"%>
<%@page import="kr.co.jhta.mapper.BoardMapper"%>
<%@page import="kr.co.jhta.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청정보
			요청 URL
				/mybatis/board/detail.jsp?no=xxx
			요청 파라미터
				name	value
				-----------------------
				no		게시글 번호
	*/
	int no = StringUtils.strToInt(request.getParameter("no"));
	BoardMapper boardMapper = MybatisUtils.getMapper(BoardMapper.class);
	Board board = boardMapper.getBoardByNo(no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>애플리케이션</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1>게시글 상세정보</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th>제목</th>
							<td><%=board.getTitle() %></td>
							<th>글번호</th>
							<td><%=board.getNo() %></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><%=board.getWriter() %></td>
							<th>조회수</th>
							<td><%=board.getViewCnt() %></td>
						</tr>
						<tr>
							<th>등록일</th>
							<td><%=board.getCreatedDate() %></td>
							<th>최종수정일</th>
							<td><%=board.getUpdatedDate() %></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3"><%=board.getContent() %></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<a href="modify-form.jsp" class="btn btn-warning">수정</a>
				<a href="delete.jsp" class="btn btn-danger">삭제</a>
				<a href="list.jsp" class="btn btn-primary float-end">목록</a>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
</html>