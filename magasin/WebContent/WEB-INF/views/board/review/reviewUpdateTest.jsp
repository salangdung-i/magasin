<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>***reviewView***</title>
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

		<ul id="review">
			<li>review</li>
		</ul>
		<form action="#" method="post" enctype="multipart/form-data">
			<div class="table-wrapper">
				<table class="table view-table">
					<thead>
						<tr>
							<th>subject</th>
							<td><input type="text" name="reviewTitle" class="inputText" value="값내놔 ㅅㅂ"></td>
						</tr>
						<tr>
							<th>Writer</th>
							<td>유저 Id 고정
							<input type="hidden" value="유저아이디 고정값" name="reviewWriter">
							</td>
							
						</tr>
						<tr>
							<th>별점</th>
							<td>
							<%for(int i=0; i<5;i++){
								int count =3;
								if(count>0 && i<count){
							%>			
								<img src="/views/test_board/test_img/yellowstar1.png" width="20" onclick="changeStar(this);" class="stars">
								
							<%count--;
							}else{%>
									
								<img src="/views/test_board/test_img/star1.png" width="20" onclick="changeStar(this);" class="stars">
							<%}	%>
								<input type="hidden" name="point" value="<%=count %>">
								<% } %>
								
							</td>
							<script>
								var count = 3;/* db POINT값 받아오기 */
								function changeStar(obj){
									var index= $(".stars").index(obj);
									if($(".stars").eq(index).attr("src")=="/views/test_board/test_img/star1.png"){
										$(".stars").eq(index).attr("src","/views/test_board/test_img/yellowstar1.png");	
										count++;
										console.log(count);
									}else if($(".stars").eq(index).attr("src")=="/views/test_board/test_img/yellowstar1.png"){
										$(".stars").eq(index).attr("src","/views/test_board/test_img/star1.png");
										count--;
										console.log(count);
									}
									
								}
							</script>
						</tr>
					</thead>
					<tbody>
						
						<tr>
							<th>
									<div class="product-div" style="border:1px solid black;width:100%;">

										<img src="/views/test_board/test_img/testimg.png" width="150"><br>
										<p id="productName" style="width:100%;text-align:center;">product명</p>
								</div>
								
							</th>
							<td>

								<div class="review-content-div">
									<textarea placeholder="값받아오기" name="reviewContent" cols="90" rows="10"></textarea>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<p style="text-align:left;">Photo Upload <span style="font-size:7px;color:navy;">*두장까지 가능해요*</span></p>
								<p>받아온 파일 담겨있어야 함 지금은 못해 ㅅㅂ </p>
								<!-- 받아온 파일 담겨있어야 함 지금은 못해 ㅅㅂ -->
								<input type="file" name="filename1">
								<input type="file" name="filename2">
							</td>
						</tr>
						</tbody>
				</table>
			</div>
			<div class="review-btn">
				<br>

					<a href="/views/test_board/review/reviewListTest.jsp"
						class="btn btn-default btn-md">List</a>
					<a href="#"
						class="btn btn-default btn-md">수정완료</a>


				</div>

			</form>
		</div>
	</section>

</body>
</html>