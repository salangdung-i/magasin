<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>***Answer View***</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/board_css/qna.css">
</head>
<body>
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
<!-- @@@@@@@@@@@@@@@@@@@@@ 답변 쓰기 관리자만 @@@@@@@@@@@@@@@@@@@-->
	
	<section>
			<div class="qnaContainer">
			
				<ul id="qna">
					<li>Q&A</li>
				</ul>
				<form action="#" method="post">
					<div class="table-wrapper">
					<table class="table qna-view-table">
						<thead>
							<tr>
								<th>subject</th>
								<td>
									<img src="/views/test_board/test_img/realRe.png">
									<input type="text" name="aTitle" class="inputText">
								</td>
							</tr>
							<tr>
								<th>Writer</th>
								<td><img src="/common_img/footerlogo2.png" height="27">
								<input type="hidden" name="aWriter" class="inputText"
								value="admin"></td>
							</tr>
						
						</thead>
						<tbody>
							<tr>
							<td colspan="2">
								<textarea placeholder="내용 써라" name="aContent" cols="100" rows="10" ></textarea>
								</td>
							</tr>
					</table>
				</div>
				<div class="qna-btn">
					<br>
					
					<a href="/views/test_board/qna/qnaListTest.jsp" class="btn btn-default btn-md" >List</a>
					<button type="submit" class="btn btn-default btn-md" >등록</button>
					
				</div>
				</form>
			</div>
	</section>
	
</body>
</html>