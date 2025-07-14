<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>req3-1.jsp로 요청 파라미터 보내기</h1>
	
	<h2>GET 방식 요청에서 요청파라미터 보내기</h2>
	
	<h3>쿼리스트링으로 요청파라미터 보내기</h3>
	<ul>
		<li><a href="req3-2.jsp?userid=hong">홍길동</a></li>
		<li><a href="req3-2.jsp?userid=kim">김유신</a></li>
		<li><a href="req3-2.jsp?userid=kang">강감찬</a></li>
		<li><a href="req3-2.jsp?userid=lee">이순신</a></li>
	</ul>
	
	<h3>form 입력값을 GET방식으로 보내기</h3>
	<form method="get" action="req3-3.jsp">
	<div>
		<input type="checkbox" name="category" value="100" />국내도서
		<input type="checkbox" name="category" value="101" />외국도서
		<input type="checkbox" name="category" value="102" />전자책
		<input type="checkbox" name="category" value="103" />논문
	</div>
		<select name="opt">
			<option value="title" selected> 제목</option>
			<option value="writer"> 저자</option>
			<option value="publisher"> 출판사</option>
			<option value="content"> 내용</option>
		</select>
		<input type="text" name="keyword" />
		<button type="submit">검색</button>
	</form>
	
	<h2>POST 방식으로 요청파라미터 보내기</h2>
	<form method="post" action="req3-4.jsp">
		<div>
			<label>아이디</label><br />
			<input type="text" name="id" />
		</div>
		<div>
			<label>비밀번호</label><br />
			<input type="password" name="pwd" />
		</div>
		<button type="submit">로그인</button>
	</form>
	
</body>
</html>

<!--
	클라이언트가 서버로 요청을 보내는 방식
	
	GET 방식
	- 요청메시지의 바디부에 값을 담아서 보낼 수 없는 방식
	- 발생하는 경우
		1. 주소창에 직접 URL을 입력해 요청하는 경우
		2. 링크를 클릭해 요청하는 경우
		3. <form method="get">설정하고
		   submit 버튼을 눌러서 폼입력값을 서버로 제출하는 경우
	- 사용하는 경우
		- 서버로부터 웹페이지를 조회할 때
	- 특징
		- 요청파라미터 정보를 URL 뒤에 붙여서 보낸다.
		- 서버로 보내는 요청파라미터 정보의 길이에 제한이 있다.
		- 서버로 보내는 요청파라미터 정보가 웹브라우저의 주소창에 그대로 노출된다.
		- <form> 태그없이 간단한 요청파라미터정보를 서버로 쉽게 전달할 수 있다.
		
	POST 방식
	- 요청메시지의 바디부에 값을 담아 보낼 수 있는 방식
	- 발생하는 경우
		1. <form method="get">설정하고
		   submit 버튼을 눌러서 폼입력값을 서버로 제출하는 경우
	- 사용하는 경우
		- 입력폼에 값을 입력하고 서버에 등록을 요청할 때
	- 특징
		- 폼입력값이 요청메시지의 바디부에 포함되어 보낸다.
		- 서버로 전달하는 정보의 길이에 제한이 없다.
		- 요청메시지의 바디부에 포함되어 전달되기 때문에 주소창에 값이 노출되지 않는다.
-->