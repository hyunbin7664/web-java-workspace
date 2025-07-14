<%@page import="kr.co.board.vo.Board"%>
<%@page import="kr.co.board.dao.BoardDao"%>
<%@page import="kr.co.board.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int boardNo = StringUtils.strToInt(request.getParameter("bno"));

BoardDao boardDao = new BoardDao();
Board board = boardDao.getBoardByNo(boardNo);
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
				<h1>게시글 수정폼</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<form class="border bg-light p-3"
					method="post"
					action="modify.jsp?bno=<%=board.getNo() %>">
					<div class="form-group mb-3">
						<label>제목</label>
						<input type="text" class="form-control" name="title" value="<%=board.getTitle() %>"/>
					</div>
					<div class="form-group mb-3">
						<label>작성자</label>
						<input type="text" class="form-control" name="writer" value="<%=board.getWriter() %>"/>
					</div>
					<div class="mb-3">
		  					<label for="book-summary" class="form-label">내용</label>
							<textarea rows="5" 
								class="form-control" 
								name="content"><%=board.getContent() %></textarea>
					</div>
					<div class="mb-3 text-end">
						<button type="submit" class="btn btn-primary">수정</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
</html>