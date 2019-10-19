<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" href="/css/myPage/myInfoUpdate.css"> 

</head>
<body>
	<div class="miu-wrapper">
	<div class="miu-div-1">
	<h3>저의 쇼핑몰을 이용해주셔서 감사합니다. <span>임은지</span>님은 <span>[VVIP]</span> 회원이십니다.</h3>
	</div> 
		<div class="miu-div-2">
	
	<h3 class="miu-div-2-h3">기본정보</h3>
	
	
	<table class="miu-div-2-table">
		<tbody>
			<tr >
				<th>아이디  </th><td><input type="text"> (영문소문자/숫자,4~16자)</td>
			</tr>
			<tr>
				<th>비밀번호  </th><td><input type="text"> (영문 대소문자/숫자/특수문자 중 2가지이상 조합 8~16자)</td>
			</tr>
						<tr>
				<th>비밀번호 확인 </th><td><input type="text"></td>
			</tr>
						<tr>
				<th>이름</th><td><input type="text"></td>
			</tr>
				<tr>
				<th >주소 </th>
				<td>
				<!-- 다음주소찾기 api사용  -->
				   <ul class="mif-table-addr">
					    <li>
					     <input id="mif-postCode" type="text"  class="form-control" readonly>
					     <button id="mif-addrSearchBtn" onclick="addrSearch();" class="btn btn-primary" >주소검색</button>
					    </li>
					    <li>
					     <input id="mif-roadAddr"  type="text"  class="form-control" readonly> 기본주소
					    <!--  <input id="jibunAddr" style="width:400px; display:inline-block;" type="text"  class="form-control" readonly>
					      -->
					    </li>
					    <li>
					     <input id="mif-detailAddr"  type="text"  class="form-control"> 나머지주소
					    </li>
    
   					</ul> 	
				</td>
					</tr>
						<tr>
				<th>휴대전화 </th>
				<td>
				<select id="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
				</select>
				<input id="phone2" type="text"> - <input  id="phone3" type="text"></td>
			</tr>
						<tr>
				<th>이메일 </th><td><input type="text"> @ <input type="text">
					<select id="mif-email">
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="hotmail.com">hotmail.com</option>
					<option value="yahoo.com">yahoo.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="etc">직접입력</option>
				</select></td>
			</tr> 
<!-- 						<tr>
				<th>이메일 수신여부 </th><td></td>
			</tr> -->
			
		</tbody>
	</table>
	</div>
		<div class="miu-div-3">
		<ul>
			<li class=" miu-div-3-li1"><a>회원 정보 수정</a></li>
			<li class=" miu-div-3-li2"><a>취소</a></li>
			<li class=" miu-div-3-li3"><a>회원탈퇴</a></li>
		</ul>
	</div>
	</div>
</body>
</html>