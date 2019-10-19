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
<link rel="stylesheet" href="/css/board_css/qna.css">
<title>***Q&A***</title>
</head>
<body>
	<section>
			<div class="qnaContainer">
				
				
				<div class="q-category-container">
					 <ul class="q-category">
						<li>일반 문의</li>
						<li>상품 관련 문의</li>
					</ul> 
				</div>
				<p id="writeQ"><a href="#" class="btn writeBtn">Write</a></p>
				
				<div class="qnaListContainer">
				<ul id="qna">
					<li>Q&A</li>
				</ul>
				<div class="table-wrapper normalQue">
					<table class="table table-hover qnalist-table">
						<thead>
							<tr>
								<th style="width: 10%;">Category</th>
								<th style="width: 55%;">Subject</th>
								<th style="width: 20%;">Writer</th>
								<th style="width: 10%;">Date</th>
							</tr>
						</thead>
						 <tbody>
							<%
								for (int i = 1; i < 10; i++) {
							%>
							<tr>
								<td>카테고리</td>
								<td><a href="#" class="content">Title<%=i%></a></td>
								<td>Writer</td>
								<td>19/10/10</td>
							</tr>
							<!-- 답변 있으면 밑에 뜨게 해주쇼 -->
							<% int aIs = 1;
								if(aIs ==1 ){
							%>
								<tr>
									<td>
									</td>
									<td>
									<!-- 제목 -->
									<img src="/views/test_board/test_img/realRe.png">
									<a href="/views/test_board/qna/aViewTest.jsp">A Title</a>
									</td>
									<td>
									<img src="/common_img/footerlogo2.png" height="27">
								<input type="hidden" name="noticeWriter" class="inputText"
								value="admin">
									</td>
									<td>글작성 날짜</td>
								</tr>
							
							<%} %>
							<%
								}
							%>
							
						<tfoot>
							<tr>
								<td colspan="5"><a href="#" class="btn btn-sm">1</a> <a
									href="#" class="btn btn-sm">2</a> <a href="#"
									class="btn btn-sm">3</a></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- 제품 문의... -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				
				<script>
					$(document).ready(function(){
						$(".normalQue").show();
						$(".productQue").hide();
						
						$(".q-category>li").eq(0).click(function(){
							$(".productQue").hide();
							$(".normalQue").show();
						
						});
						$(".q-category>li").eq(1).click(function(){
							$(".normalQue").hide();
							$(".productQue").show();
						});
					});
				</script>
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				<!-- *************************************** -->
				
				<div class="table-wrapper productQue">
					<table class="table table-hover qnalist-table">
						<thead>
							<tr>
								<th style="width: 10%;">Category</th>
								<th style="width:20%;">Product</th>
								<th style="width: 45%;">Subject</th>
								<th style="width: 15%;">Writer</th>
								<th style="width: 10%;">Date</th>
							</tr>
						</thead>
						 <tbody>
							<%
								for (int i = 1; i < 10; i++) {
							%>
							<tr>
								<td>카테고리</td>
								<td>
								<img src="/views/test_board/test_img/testimg.png" width="70">
								<br>
								Product<%=i %>
								</td>
								<td><a href="#" class="content">Title<%=i%></a></td>
								<td>Writer</td>
								<td>19/10/10</td>
							</tr>
							<!-- 답변 있으면 밑에 뜨게 해주쇼 -->
							<% int aIs = 1;
								if(aIs ==1 ){
							%>
								<tr>
									<td>
									</td>
									<td></td>
									<td>
									<!-- 제목 -->
									<img src="/views/test_board/test_img/realRe.png">
									<a href="/views/test_board/qna/aViewTest.jsp">A Title</a>
									</td>
									<td>
									<img src="/common_img/footerlogo2.png" height="27">
								<input type="hidden" name="noticeWriter" class="inputText"
								value="admin">
									</td>
									<td>글작성 날짜</td>
								</tr>
							
							<%} %>
							<%
								}
							%>
							
						<tfoot>
							<tr>
								<td colspan="5"><a href="#" class="btn btn-sm">1</a> <a
									href="#" class="btn btn-sm">2</a> <a href="#"
									class="btn btn-sm">3</a></td>
							</tr>
						</tfoot>
					</table>
				</div>
				
				
				
				</div>
			</div>
	</section>
</body>
</html>