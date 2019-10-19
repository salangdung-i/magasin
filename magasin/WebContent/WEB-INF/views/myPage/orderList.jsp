<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/myPage/orderList.css"> 
</head>
<body>
<div class="ol-wrapper">

<h2 class="ol-wrapper-h2">주문내역조회 <span ><a href="#">취소/반품/교환내역</a></span> </h2>
<h3 class="ol-wrapper-h3">주문내역</h3>
<table class="ol-table">
	<thead class ="ol-thead">
	<tr>
		<th>주문일자<br>[주문번호]</th>
        <th>이미지</th>
        <th>상품정보</th>
        <th>수량</th>
        <th>상품구매금액</th>
        <th>주문처리상태</th>
        <th>취소/반품</th>
	</tr>
	</thead>
	<tbody  class ="ol-tbody">
	<tr>
		<td class="ol-list-1">2019-10-27<br>[20191017-000511]</td>
        <td class="ol-list-2"><a href="#"><img src="/img/myPage/product1.jpg"></a></td>
        <td class="ol-list-3">
        	<ul>
        		<li class="ol-list-3-li-1" ><strong>베이직 미니 가디건</strong></li>
        		<li class="ol-list-3-li-2" >[옵션:아이보리]</li>
        	</ul>
        </td>
   
        <td class="ol-list-4">1	</td>
        <td class="ol-list-5">39,000</td>
        <td class="ol-list-6">입금 전</td>
         <td class="ol-list-7"><a href="#">주문취소</a></td>
	</tr>
	</tbody>
	</table>
		<div class ="ol-pageNavi">
		<a href="#"><img src="/img/myPage/pn_btn_page_first.gif"></a>
		<a href="#"><img src="/img/myPage/pn_btn_page_prev.gif"></a>
		<ul class="ol-navi-ul"><li><a href="#">1</a></li></ul>
		<a href="#"><img src="/img/myPage/pn_btn_page_next.gif"></a>
		<a href="#"><img src="/img/myPage/pn_btn_page_last.gif"></a>
		
		</div>

	</div>



</body>
</html>