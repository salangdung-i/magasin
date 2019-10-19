<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>***Quewstion View***</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/board_css/qna.css">
</head>
<body>
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 일반 문의 등록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

	<section>
			<div class="qnaContainer">
			
				<ul id="qna">
					<li>Q&A</li>
				</ul>
				<div class="table-wrapper">
					<table class="table qna-view-table">
						<thead>
							<tr>
								<th>Category</th>
								<td>
								<!-- qCategory 값 받아오기 -->
								<select>
									<option>배송</option>
									<option>주문</option>
									<option>환불</option>
									<option>지랄</option>
								</select>
								</td>
							</tr>
							<tr>
								<th>subject</th>
								<td><input type="text" name="qTitle" class="inputText"></td>
							</tr>
							<tr>
								<th>Writer</th>
								<td> 글쓴놈
									<input type="hidden" name="qWriter" value="몰라이놈아">
								</td>
							</tr>
							
						</thead>
						<tbody>
							<tr>
							<td colspan="2">
								<div>
								<textarea name="qContent" placeholder="내용 써" cols="100" rows="10"></textarea>
								</div>
								
								</td>
							</tr>
					</table>
				</div>
				<div class="qna-btn">
					<br>
					
					<a href="/views/test_board/qna/qnaListTest.jsp" class="btn btn-default btn-md" >List</a>
					<!-- 관리자일때 -->
					<a href="#" class="btn btn-default btn-md" >답변</a>
					<!-- 글쓴이 일때 -->
					<a href="#" class="btn btn-default btn-md" >삭제</a>
					<a href="#" class="btn btn-default btn-md" >수정</a>
					
				</div>
			</div>
	</section>
	
</body>
</html>