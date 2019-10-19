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
				<div class="table-wrapper">
					<table class="table view-table">
						<thead>
							<tr>
								<th>subject</th>
								<td>제목제목</td>
							</tr>
							<tr>
								<th>Writer</th>
								<td><img src="/common_img/footerlogo2.png" height="27"></td>
							</tr>
							<tr>
								<th>Date</th>
								<td>19.10.17</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">
								<style>
									.noticeContents{
										margin: 0 auto;
										border-radius : 10px;
										width:90%;
									}
								</style>
								<div class="noticeContents">
									내용넣을거에요<br>
									내용 넣을 거 에 요<br>
									내용 넣을 거 에 요<br>
									내용 넣을 거 에 요<br>
									내용 넣을 거 에 요<br>
									내용 넣을 거 에 요<br>
									내용 넣을 거 에 요
								</div>
								</td>
							</tr>
					</table>
				</div>
				<div class="notice-view-btn">
					<br>
				
					<a href="/views/test_board/notice/noticeListTest.jsp" class="btn btn-default btn-md" >List</a>
					<a href="#" class="btn btn-default btn-md" >삭제</a>
					<a href="#" class="btn btn-default btn-md" >수정</a>
					
				</div>
			</div>
	</section>
	
</body>
</html>