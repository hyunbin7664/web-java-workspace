<%@page import="kr.co.jhta.vo.Board"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.util.MybatisUtils"%>
<%@page import="kr.co.jhta.mapper.BoardMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardMapper boardMapper = MybatisUtils.getMapper(BoardMapper.class);
	List<Board> boards = boardMapper.getAllBoards();
	
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
				<h1>게시글 목록</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<table class="table">
					<colgroup>
						<col width="15%">
						<col width="*">
						<col width="15%">
						<col width="15%">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일자</th>
						</tr>
					</thead>
					<tbody>
<%
	for (Board board : boards) {
%>
						<tr>
							<td><%=board.getNo() %></td>
							<td><a href="detail.jsp?no=<%=board.getNo() %>"><%=board.getTitle() %></a></td>
							<td><%=board.getWriter() %></td>
							<td><%=board.getCreatedDate() %></td>
						</tr>
<%
	}
%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<nav aria-label="Page navigation example">
  					<ul class="pagination justify-content-center">
    					<li class="page-item"><a class="page-link" href="#">이전</a></li>
    					<li class="page-item"><a class="page-link" href="#">1</a></li>
    					<li class="page-item"><a class="page-link" href="#">2</a></li>
    					<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">다음</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-12 text-end">
				<a href="form.jsp" class="btn btn-primary">새 게시글 등록</a>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
</html>