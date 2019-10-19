<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>**INCLUDE 틀**</title>
	<link rel="stylesheet" href="/css/common_css/layout.css">
	<link rel="stylesheet" href="index-list.css">
</head>
<body id="body1">
	<div class="wrapper">
		<header>
			<div class="header">
				<%@include file="/WEB-INF/views/common/header.jsp"%>
			</div>
		</header>
		<section>
			<div class="mainContainer">
				<div class="side-nav">
					<%@include file="/WEB-INF/views/common/nav.html"%>
				</div>
				<div class="mainContent" style="width: 943px;">
					<!-- 만드신 콘텐츠 넣으세요!!!!!!!!!!!!!!!!width 반드시 943!!!!!!!!!!!!!!!!!!!!!!!!!! -->
					<div class="windowContainer">
						<div class="main-div">
							<div class="main-title">
								<div class="title-top">
									<a href=#>home</a>><a href="#">OUTER</a>
								</div>
								<div class="title-middle">
									<div class="title-text">
										<h3>OUTER</h3>
									</div>
									<div class="title-category">
										<ul class="subCategory">
											<li><span><a href="#">JACKET</a>(109)</span></li>
											<li><span><a href="#">CARDIGAN</a>(109)</span></li>
											<li><span><a href="#">TRENCH COAT</a>(109)</span></li>
											<li><span><a href="#">JUMPER / MUSTANG</a>(109)</span></li>
											<li><span><a href="#">COAT</a>(109)</span></li>
										</ul>
									</div>
								</div>
								<div class="title-bottom">
									<h3>best in category</h3>
								</div>
							</div>
							<div class="window">
								<div class="window-cloths">
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/07bc0f7cf69c4248576799346decb819 (1).jpg"></a>
									</div>
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-title">
										<a href="/views/exdetail.jsp">latte v-neck cable cardigan</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
										<div class="color3"></div>
										<div class="color4"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_28.gif"><img
												src="img/product/custom_26.gif">
										</div>
										<div class="cloths-review">
											Review : <span></span>
										</div>
									</div>
								</div>

								<div class="window-cloths">
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/0ccb0f59a6411d7649dae3285209cbbc.jpg"></a>
										<div class="cloths-event" style="display: none;">[ADE]</div>
										<div class="cloths-review" style="display: none;"></div>
									</div>
									<div class="cloths-title">
										<a href="#">button golgi crop cardigan</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_28.gif"><img
												src="img/product/custom_26.gif">
										</div>
										<div class="cloths-review">
											Review : <span>987</span>
										</div>
									</div>
								</div>

								<div class="window-cloths">
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/13c5a41d33552691a85f284bb34e99f0.jpg"></a>
									</div>
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-title">
										<a href="#">FRESH A standard jacket (5 colors)</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_28.gif"><img
												src="img/product/custom_26.gif">
										</div>
										<div class="cloths-review">
											Review : <span>0</span>
										</div>
									</div>
								</div>

								<div class="window-cloths">
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/082a653adedb983a627445653600a6ad.jpg"></a>
									</div>
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-title">
										<a href="#">belted half trench coat</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_28.gif"><img
												src="img/product/custom_26.gif">
										</div>
										<div class="cloths-review">
											Review : <span>1</span>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="sub-main">
							<div class="sub-title">
								<div class="sub-top">
									<div>
										new arrivalcategory have <strong>241</strong> product
									</div>
									<div>
										<a href="#">low price</a> |<a href="#">high price</a> |<a
											href="#">new arrival</a>
									</div>
								</div>
							</div>

							<div class="cate-window">
								<div class="window-cloths">
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/081f1a7aa4e4579414d6390716fb73ab.jpg"></a>
									</div>
									<div class="cloths-title">
										<a href="#">latte v-neck cable cardigan</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
										<div class="color3"></div>
										<div class="color4"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_43.gif">
										</div>
										<div class="cloths-review">
											Review : <span></span>
										</div>
									</div>
								</div>

								<div class="window-cloths">
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/081f1a7aa4e4579414d6390716fb73ab.jpg"></a>
									</div>
									<div class="cloths-title">
										<a href="#">latte v-neck cable cardigan</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
										<div class="color3"></div>
										<div class="color4"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_43.gif">
										</div>
										<div class="cloths-review">
											Review : <span></span>
										</div>
									</div>
								</div>

								<div class="window-cloths">
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/081f1a7aa4e4579414d6390716fb73ab.jpg"></a>
									</div>
									<div class="cloths-title">
										<a href="#">latte v-neck cable cardigan</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
										<div class="color3"></div>
										<div class="color4"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_43.gif">
										</div>
										<div class="cloths-review">
											Review : <span></span>
										</div>
									</div>
								</div>

								<div class="window-cloths">
									<div class="cloths-event" style="display: none;"></div>
									<div class="cloths-img">
										<a href="#"><img
											src="img/product/081f1a7aa4e4579414d6390716fb73ab.jpg"></a>
									</div>
									<div class="cloths-title">
										<a href="#">latte v-neck cable cardigan</a>
									</div>
									<div class="cloths-price">
										<span>32,000</span><span>28,800</span>
									</div>
									<div class="cloths-color">
										<div class="color1"></div>
										<div class="color2"></div>
										<div class="color3"></div>
										<div class="color4"></div>
									</div>
									<div class="cloths-new">
										<div class="imgs">
											<img src="img/product/custom_43.gif">
										</div>
										<div class="cloths-review">
											Review : <span></span>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="move">
							<a href="#"><img src="img/product/prnx2.jpg"></a> <a
								href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
							<a href="#">5</a> <a href=""><img src="img/product/prnx3.jpg"></a>
						</div>
					</div>

				</div>
			</div>
		</section>
		<footer>
			<div class="footer">
				<%@include file="/WEB-INF/views/common/footer.jsp"%>
			</div>
		</footer>
	</div>
</body>
</html>