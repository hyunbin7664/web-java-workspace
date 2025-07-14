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
	<h1>회원가입</h1>
	<form method="post" action="register.do">
		<div>
			아이디 : <input type="text" name="id" />
		</div>
		<div>
			비밀번호 : <input type="text" name="pwd" />
		</div>
		<div>
			이름 : <input type="text" name="name" />
		</div>
		<button type="submit">회원가입</button>
	</form>
</body>
</html>