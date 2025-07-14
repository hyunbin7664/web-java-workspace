<%@page import="kr.co.book.vo.Book"%>
<%@page import="kr.co.book.dao.BookDao"%>
<%@page import="kr.co.book.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청정보
		- 요청 URL
			/web/book/detail.jsp?bno=xxxxxx&page=x
		- 요청파라미터
			name 	value
			------------------------
			bno		책번호
			page	페이지번호
	*/
	// 1. 쿼리스트링으로 전달된 요청파라미터값 조회하기
	int bookNo = StringUtils.strToInt(request.getParameter("bno"));
	int pageNo = StringUtils.strToInt(request.getParameter("page"), 1);


	// 2. DAO를 사용해서 Book 객체 조회
	BookDao bookDao = new BookDao();
	Book book = bookDao.getBookByNo(bookNo);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>애플리케이션</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1>도서 상세 정보</h1>
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
							<th class="table-dark p-3">제목</th>
							<td class="p-3" colspan="3"><%=book.getTitle() %></td>
						</tr>
						<tr>
							<th class="table-dark p-3">번호</th>
							<td class="p-3"><%=book.getNo() %></td>
							<th class="table-dark p-3">출판일</th>
							<td class="p-3"><%=book.getPubDate() %></td>
						</tr>
						<tr>
							<th class="table-dark p-3">저자</th>
							<td class="p-3"><%=book.getAuthor() %></td>
							<th class="table-dark p-3">출판사</th>
							<td class="p-3"><%=book.getPublisher() %></td>
						</tr>
						<tr>
							<th class="table-dark p-3">가격</th>
							<td class="p-3"><strong class="text-danger"><%=book.getPrice() %></strong> 원</td>
							<th class="table-dark p-3">재고수량</th>
							<td class="p-3"><span class="text-primary"><%=book.getStock() %></span> 개</td>
						</tr>
						<tr>
							<th class="table-dark p-3">등록일자</th>
							<td class="p-3"><%=book.getCreatedDate() %></td>
							<th class="table-dark p-3">최종수정일자</th>
							<td class="p-3"><%=book.getUpdatedDate() %></td>
						</tr>
						<tr>
							<th class="table-dark p-3">설명</th>
							<td class="p-3" colspan="3"><%=book.getSummary() %></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<a href="modify-form.jsp?bno=<%=book.getNo() %>" class="btn btn-warning">수정</a>
				<button class="btn btn-danger" data-book-no="<%=book.getNo() %>" id="btn-del-book">삭제</button>
				<%-- 방법1
				<a href="delete.jsp?bno=<%=book.getNo() %>" 
					class="btn btn-danger" 
					id="link-delete-book">삭제</a>
				--%>
				<a href="list.jsp?page=<%=pageNo %>" class="btn btn-primary float-end">목록</a>
			</div>
		</div>
	
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script type="text/javascript">
		// 버튼으로 confirm창 표시하고 확인받기
		$("#btn-del-book").click(function() {
			let result = confirm("이 책을 삭제하시겠습니까?");
			if (result) {
				let bookNo = $(this).attr("data-book-no");
				// 주소창의 url을 변경해서 delete.jsp를 요청하게 한다.
				location.href = 'delete.jsp?bno=' + bookNo;
			}
		});
		
		// 링크로 confirm창 표시하고 확인 받기
		/*
		$("#link-delete-book").click(function() {
			return confirm("이 책을 삭제하시겠습니까?");
		});
		*/
	</script>
</body>
</html>