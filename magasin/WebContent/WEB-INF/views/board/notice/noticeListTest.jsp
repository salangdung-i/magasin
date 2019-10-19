<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>***notice***</title>
<link rel="stylesheet" href="/css/board_css/notice.css">
</head>
<body>
	<section>
			<div class="noticeContainer">
				<p id="writeNotice"><a href="#" class="btn writeBtn">Write</a></p>
				<ul id="notice">
					<li>Notice</li>
				</ul>
				<div class="table-wrapper">
					<table class="table table-hover list-table">
						<thead>
							<tr>
								<th style="width: 5%;">No.</th>
								<th style="width: 55%;">Subject</th>
								<th style="width: 20%;">Writer</th>
								<th style="width: 10%;">Date</th>
								<th style="width: 10%;">조회수</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (int i = 1; i < 100; i++) {
							%>
							<tr>
								<td>No.<%=i%></td>
								<td><a href="/views/test_board/notice/noticeViewTest.jsp" class="content">Title<%=i%></a></td>
								<td><img src="/common_img/footerlogo2.png" height="27"></td>
								<td>19/10/10</td>
								<td>0</td>
							</tr>
							<%
								}
							%>
						
						<tfoot>
							<!-- 페이징할거에요~~~~~ -->
							<tr>
								<td colspan="5"><a href="#" class="btn btn-sm">1</a> <a
									href="#" class="btn btn-sm">2</a> <a href="#"
									class="btn btn-sm">3</a></td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
	</section>
</body>
</html>