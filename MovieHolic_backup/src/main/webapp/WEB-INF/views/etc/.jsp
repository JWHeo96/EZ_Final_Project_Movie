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
	top: 50%;
	left: 35%;
	transform: translate(-50%, -50%);
	color: #ffffff;
	font-size: 45px;
	font-weight: bold;
	text-align: center;
	z-index: 2;
}
.text2 {
	position: absolute;
	top: 50%;
	left: 59%;
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
		<img src="images/re.jpg" alt="Your Image" class="image">
	</div>
	<div class="text">
		인재채용<br></div>
		<div class="text2">    	
      	무비홀릭과 함께 내일을 만들어갈 인재를 기다립니다.
    </div>
</body>
</html>
<%@ include file="../footer.jsp"%>