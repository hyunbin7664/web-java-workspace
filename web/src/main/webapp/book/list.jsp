<%@page import="kr.co.book.util.StringUtils"%>
<%@page import="kr.co.book.vo.Book"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.book.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청정보
			- 요청 URL
				/web/book/list.jsp?page=xxx
			- 요청 파라미터
				name	value
				--------------------------
				page	요청하는 페이지번호
	*/
	
	// 한번에 표시할 도서 개수
	int rows = 10;
	
	// 요청파라미터(요청한 페이지번호)값 조회
	int pageNo = StringUtils.strToInt(request.getParameter("page"), 1);
	
	// 오프셋 계산
	int offset = (pageNo - 1)*rows;
	
	// BookDao객체를 생성하고, 요청한 페이지에 맞는 책목록 조회하기
	BookDao bookDao = new BookDao();
	List<Book> books = bookDao.getBooks(offset, rows);
	
	// 총 데이터개수 조회하기
	int totalRows = bookDao.getTotalRows();
	
	// 총 페이지개수 계산하기
	int totalPages = (int)(Math.ceil((double)totalRows/rows));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 
	bootstrap에서 미리 정의해놓은 다양한 스타일시트 파일을 우리 JSP에 포함시킨다.
 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>도서관리 애플리케이션</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1>도서 목록</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12">

				<table class="table">
					<thead>
						<tr class="table-dark">
							<th>번호</th>
							<th>제목</th>
							<th>출판사</th>
							<th>가격</th>
							<th>재고현황</th>
						</tr>
					</thead>
					<tbody>
<%
	for (Book book : books) {
%>
						<tr>
							<td><%=book.getNo() %></td>
							<td>
								<a href="detail.jsp?bno=<%=book.getNo()%>&page=<%=pageNo %>"><%=book.getTitle() %></a>
							</td>
							<td><%=book.getPublisher() %></td>
							<td><%=book.getPrice() %> 원</td>
							<td><%=book.getStock() %> 권</td>
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
						<li class="page-item <%= pageNo <= 1 ? "disabled" : ""%>">
						<a class="page-link" 
							href="list.jsp?page=<%=pageNo - 1 %>">이전</a></li>
<%
	for (int num=1; num<=totalPages; num++) {
%>
						<li class="page-item <%=num == pageNo ? "active" : "" %>">
						<a class="page-link" 
							href="list.jsp?page=<%=num %>"><%=num %></a>
						</li>
<%
	}
%>
						<li class="page-item <%= pageNo >= totalPages ? "disabled" : ""%>">
						<a class="page-link" 
							href="list.jsp?page=<%=pageNo + 1 %>">다음</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-12 text-end">
				<a href="form.jsp" class="btn btn-primary">새 도서등록</a>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>
<!--
	/// container : 화면 중앙에 위치하도록 설정
	/// https://getbootstrap.kr/docs/5.3/getting-started/introduction/
			여기서 디자인 복붙하기
-->