<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>***review***</title>
<link rel="stylesheet" href="/css/board_css/review.css">
</head>
<body>
<section>
			<div class="reviewContainer">
				<!-- <p id="writeNotice"><a href="#" class="btn writeBtn">Write</a></p> -->
				<ul id="review">
					<li>review</li>
				</ul>
				<div class="table-wrapper">
					<table class="table table-hover review-table">
						<thead>
							<tr>
								<th style="width: 5%;">No.</th>
								<th style="width: 10%;">Product</th>
								<th style="width: 45%;">Subject</th>
								<th style="width: 15%;">
								<img src="/views/test_board/test_img/yellowstar1.png" width="12">
								</th>
								<th style="width: 10%;">Writer</th>
								<th style="width: 5%;">Date</th>
								<th style="width: 10%;">조회</th>
							</tr>
						</thead>
						<tbody>
					
							<%
								for (int i = 1; i < 10; i++) {
							%>
							
							<tr>
								<td style="width: 8%;">No.<%=i %></td>
								<td style="width: 10%;">
								<img src="/views/test_board/test_img/testimg.png" width="70">
								Product<%=i %>
								</td>
								<td style="width: 42%;"><span>review Title</span>
								<br><span class="lookReview" onclick="lookContent(this);">내용보기</span>
							
							
								<!-- contents 보이기 -->
							
								<div class="review-contents">		
									<div class="review-con">
									<h1>내용</h1>
									</div>
									<div class="review-img-container">
									<!-- 리뷰작성때 업로드한 이미지 있으면, 없으면 안생김 또는 사진 없음 X표시 -->
										<div class="review-img-div">
										<img src="/views/test_board/test_img/images/07bc0f7cf69c4248576799346decb819 (1).jpg" width="100px;"> 
										</div>
										<div class="review-img-div">
										<img src="/views/test_board/test_img/images/07bc0f7cf69c4248576799346decb819 (1).jpg" width="100px">
										</div>
									</div>
								</div>
								</td>
								<td style="width: 15%;">
								<img src="/views/test_board/test_img/yellowstar1.png" width="12">
								<img src="/views/test_board/test_img/yellowstar1.png" width="12">	
								<img src="/views/test_board/test_img/yellowstar1.png" width="12">
								<img src="/views/test_board/test_img/star11.png" width="12">
								<img src="/views/test_board/test_img/star11.png" width="12">
								</td>
								<td style="width: 10%;">Writer</td>
								<td style="width: 5%;">Date</td>
								<td style="width: 10%;">조회수</td>
							</tr>
								
							<%
								}
							%>
								<script>
									
								function lookContent(obj){
									console.log(obj);
									var index = $(".lookReview").index(obj);
									if($(".lookReview").eq(index).text()=="접기"){
										$(".review-contents").eq(index).hide(500);
										$(".lookReview").eq(index).text("내용보기");
									}else if($(".lookReview").eq(index).text()=="내용보기"){
										$(".review-contents").eq(index).show(500);	
										$(".lookReview").eq(index).text("접기");	
									}
									
								}	
									
																			
								</script>
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
	</section>
</body>
</html>