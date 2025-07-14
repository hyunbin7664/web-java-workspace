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
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1>새 도서 등록폼</h1>
			</div>

		</div>
		<div class="row">
			<div class="col-12">
				<form class="border p-3 bg-light"
					method="post"
					action="add.jsp"
					id="form-register-book">
					<div class="mb-3">
						<label for="book-title" class="form-label">제목</label> 
						<input
							type="text" 
							class="form-control" 
							id="book-title" 
							name="title" />
					</div>
					<div class="mb-3">
						<label for="book-author" class="form-label">저자</label> 
						<input
							type="text" 
							class="form-control" 
							id="book-author" 
							name="author" />
					</div>
					<div class="mb-3">
						<label for="book-publisher" class="form-label">출판사</label> 
						<input
							type="text" 
							class="form-control" 
							id="book-publisher" 
							name="publisher" />
					</div>
					<div class="mb-3">
						<label for="book-price" class="form-label">가격</label> 
						<input
							type="text" 
							class="form-control" 
							id="book-price" 
							name="price" />
					</div>
					<div class="mb-3">
						<label for="book-pub-date" class="form-label">출판일</label> 
						<input
							type="text" 
							class="form-control" 
							id="book-pub-date" 
							name="pub-date" />
					</div>
					<div class="mb-3">
						<label for="book-summary" class="form-label">설명</label> 
						<textarea rows="5" 
							class="form-control" 
							id="book-summary" 
							name="summary"></textarea>
					</div>
					<div class="mb-3 text-end">
						<button type="submit" class="btn btn-primary">등록</button>
					</div>
				</form>
			</div>
		</div>

	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script type="text/javascript">
		// 이름이 한글2글자 이상
		let nameRegExp = /^[가-힣a-zA-Z\s\(\)]{2,}$/
		// 가격은 숫자로만 구성
		let priceRegExp = /^[1-9][0-9]{0,}$/
	
		$("#form-register-book").submit(function() {
			// 제목 검증
			let title = $("input[name=title]").val();
			if (title == "") {
				alert("제목은 필수입력값입니다.");
				$("input[name=title]").focus();
				return false;
			}
			
			// 저자 검증
			let author = $("input[name=author]").val();
			if (!author) {
				alert("저자는 필수입력값입니다.");
				$("input[name=author]").focus();
				return false;
			}
			if (!nameRegExp.test(author)) {
				alert("저자는 한글 2글자 이상 입력해야합니다.");
				$("input[name=author]").focus();
				return false;
			}
			
			// 출판사 검증
			let publisher = $("input[name=publisher]").val();
			if (!publisher) {
				alert("출판사는 필수입력값입니다.");
				$("input[name=publisher]").focus();
				return false;
			}
			
			// 가격 검증
			let price = $("input[name=price]").val();
			if (!price) {
				alert("가격은 필수입력값입니다.");
				$("input[name=price]").focus();
				return false;
			}
			if (!priceRegExp.test(price)) {
				alert("가격은 숫자값입니다.");
				$("input[name=price]").focus();
				return false;
			}
			
			// 출판일 검증
			let pubDate = $("input[name=pub-date]").val();
			if (!pubDate) {
				alert("출판일은 필수입력값입니다.");
				$("input[name=pub-date]").focus();
				return false;
			}
			
			// 줄거리 검증
			let summary = $("textarea[name=summary]").val();
			if (!summary) {
				alert("줄거리는 필수입력값입니다.");
				$("textarea[name=summary]").focus();
				return false;
			}
			
			return true;
		});
	</script>
</body>
</html>