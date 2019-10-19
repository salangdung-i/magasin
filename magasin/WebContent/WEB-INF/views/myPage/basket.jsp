<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/myPage/basket.css"> 
</head>
<body>

<div class="bsk-wrapper">
<h2 class="bsk-wrapper-h2">장바구니 <span ><a href="/views/preBasket.jsp">최근 본 상품</a></span> </h2>
<h3 class="bsk-wrapper-h3">장바구니</h3>
<table class="bkt-table">
	<thead class ="bkt-thead">
	<tr>
		<th><input type="checkbox"></th>
        <th>이미지</th>
        <th>상품정보</th>
        <th>판매가</th>
        <th>수량</th>
        <th>합계</th>
        <th>선택</th>
	</tr>
	</thead>
	<tbody  class ="bkt-tbody">
	<tr>
		<td class="bkt-list-1"><input type="checkbox"></td>
        <td class="bkt-list-2"><a href="#"><img src="/img/myPage/product1.jpg"></a></td>
        <td class="bkt-list-3">
        	<ul>
        		<li class="bkt-list-3-li-1" ><strong>베이직 미니 가디건</strong></li>
        		<li class="bkt-list-3-li-2" >[옵션:아이보리]</li>
        		<li><a class="bkt-list-3-chg-btn">옵션변경</a></li>
        	</ul>
        </td>
        <td class="bkt-list-4">39,000</td>
        <td class="bkt-list-5">
			<ul>
				<li>
					<span class="bkt-list-5-span">
						<input size="2" value="1" type="text">
						<a href="#">
			         		<img class="bkt-list-5-img1" src="/img/myPage/up.gif" alt="수량증가" class="up">	
			          	</a>
			           	<a href="#">
			         		<img class="bkt-list-5-img2" src="/img/myPage/down.gif"  alt="수량감소" class="down">	
			         	</a>
					</span>
				</li>
				<li class="bkt-list-5-li"><a class="bkt-list-5-chg-btn">변경</a></li>
			</ul>
		</td>
        <td class="bkt-list-6">39,000</td>
        <td class="bkt-list-7">
		<ul>
            	<li> <a href="#" class="bkt-list-7-btn1">주문하기</a></li>
            	<li class="bkt-list-7-li"> <a href="#" class="bkt-list-7-btn2">삭제</a></li>
            </ul>
		</td>
	</tr>
		
		
		
	</tbody>
	<tfoot class="bkt-tfoot">
	<tr class="bkt-foot-tr">
		<th colspan="7">68,000 </th>
	</tr>
	</tfoot>

</table>
	<div class="bsk-m-div">
		<ul>
			<li class="bsk-m-div-li-1">선택상품을 </li>
			<li class="bsk-m-div-li-2"><a class="bsk-m-div-del-btn">삭제하기</a></li>
			<li class="bsk-m-div-li-3"><a class="bsk-m-div-clr-btn">장바구니 비우기 </a></li>
			
		</ul>
	
	
	</div>
	<div class="bsk-f-div">
		<table class="bsk-f-div-table">
		
				<tr>
					<th>결제예정금액</th>
				</tr>
			
			<tbody>
			<tr>
				<td>60,000</td>
			</tr>
			</tbody>
			
		</table>
		<ul class="bsk-f-ul">
			<li class="bsk-f-ul-li-1" ><a>전체상품주문</a></li>
			<li class="bsk-f-ul-li-2" ><a>선택상품주문</a></li>
			<li class="bsk-f-ul-li-3" ><a>쇼핑계속하기</a></li>
		</ul>

	</div>
</div>
</body>
</html>