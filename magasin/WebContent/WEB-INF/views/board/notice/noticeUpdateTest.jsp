<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>	
<link rel="stylesheet" href="/css/board_css/notice.css">
</head>
<body>
	<section>
			<div class="noticeContainer">
			
				<ul id="notice">
					<li>Notice</li>
				</ul>
				<form action="/noticeInsert" method="get">
				
				<div class="table-wrapper">
					<table class="table view-table">
						<thead>
							<tr>
								<th>subject</th>
								<!-- 원래 Title 받아올거에요~ -->
								<td><input type="text" name="noticeTitle" class="inputText" value="원래값"></td>
							</tr>
							<tr>
								<th>Writer</th>
								<td><img src="/common_img/footerlogo2.png" height="27">
								<!-- 관리자 넘겨줄거에요~ -->
								<input type="hidden" name="noticeWriter" class="inputText"
								value="admin">
								</td>
							</tr>
							
						</thead>
						<tbody>
							<tr>
								<td colspan="2">
									<textarea cols="120" rows="20" style="text-align: center;" 
									 name="noticeContent">원래글 받아오기</textarea>
								</td>
							</tr>
					</table>
				</div>
				
				<div class="notice-btn">
					<br>
					<a href="/views/test_board/noticeListTest.jsp" class="btn btn-md" >List</a>
					<button type="submit" class="btn btn-md">등록</button>
					
				</div>
				</form>
			</div>
	</section>
</body>
</html>