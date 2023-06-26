<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	position: relative;
	width: 100%;
	height: 100vh; /* 화면 전체 높이에 맞게 설정 */
	overflow: hidden;
}

.overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5); /* 반투명한 검정색 */
	z-index: 1;
}

.image {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	z-index: 0;
}

.text {
	position: absolute;
	top: 45%;
	left: 39%;
	transform: translate(-50%, -50%);
	color: #ffffff;
	font-size: 45px;
	font-weight: bold;
	text-align: center;
	z-index: 2;
}
.text2 {
	position: absolute;
	top: 52%;
	left: 55%;
	transform: translate(-50%, -50%);
	color: #ffffff;
	font-size: 24px;
	font-weight: bold;
	text-align: center;
	z-index: 2;
}
</style>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="container">
		<div class="overlay"></div>
		<img src="images/partner.jpg" alt="Your Image" class="image">
	</div>
	<div class="text">
		제휴ㆍ광고ㆍ부대사업 문의<br></div>
		<div class="text2">    	
      	서비스 제휴 및 광고, 부대사업에 대한 문의를 할 수 있는 공간입니다.
    </div>
</body>
</html>
<%@ include file="../footer2.jsp"%>