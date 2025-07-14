<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>애플리케이션</title>
</head>
<body>
	<h1>요청 파라미터 표현하기</h1>
	
	<dl>
		<dt>페이지 번호</dt><dd>${param.page }</dd> 
		<dt>검색 옵션</dt><dd>${param.opt }</dd> 
		<dt>검색 키워드</dt><dd>${param.keyword }</dd> 
	</dl>
	
	<select name="opt">
		<option value="title" ${param.opt == 'title' ? 'selected' : '' }>제목 </option>
		<option value="writer" ${param.opt == 'writer' ? 'selected' : '' }>저자 </option>
		<option value="publisher" ${param.opt == 'publisher' ? 'selected' : '' }>출판사 </option>
	</select>
	<input type="text" name="keyword" value="${param.keyword }">
	
	
	<div>
		<span class="${param.page == 1 ? 'on' : '' }">1</span>
		<span class="${param.page == 2 ? 'on' : '' }">2</span>
		<span class="${param.page == 3 ? 'on' : '' }">3</span>
		<span class="${param.page == 4 ? 'on' : '' }">4</span>
		<span class="${param.page == 5 ? 'on' : '' }">5</span>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
</html>