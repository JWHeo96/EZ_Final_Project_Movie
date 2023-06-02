<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 헤더 -->
<%@ include file="header.jsp"%>
<style>
.carousel {
	margin-left: 20%;
	margin-right: 20%;
	margin-top: 10%;
	margin-bottom: 10%;
}

ul.slides {
	display: block;
	position: relative;
	height: 600px;
	margin: 0;
	padding: 0;
	overflow: hidden;
	list-style: none;
}

.slides * {
	user-select: none;
	-ms-user-select: none;
	-moz-user-select: none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	-webkit-touch-callout: none;
}

ul.slides input {
	display: none;
}

.slide-container {
	display: block;
}

.slide-image {
	display: block;
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	opacity: 0;
	transition: all .7s ease-in-out;
}

.slide-image img {
	width: auto;
	min-width: 100%;
	height: 100%;
}

.carousel-controls {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 999;
	font-size: 100px;
	line-height: 600px;
	color: #fff;
}

.carousel-controls label {
	display: none;
	position: absolute;
	padding: 0 20px;
	opacity: 0;
	transition: opacity .2s;
	cursor: pointer;
}

.slide-image:hover+.carousel-controls label {
	opacity: 0.5;
}

.carousel-controls label:hover {
	opacity: 1;
}

.carousel-controls .prev-slide {
	width: 49%;
	text-align: left;
	left: 0;
}

.carousel-controls .next-slide {
	width: 49%;
	text-align: right;
	right: 0;
}

.carousel-dots {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 20px;
	z-index: 999;
	text-align: center;
}

.carousel-dots .carousel-dot {
	display: inline-block;
	width: 30px;
	height: 30px;
	border-radius: 50%;
	background-color: #fff;
	opacity: 0.5;
	margin: 10px;
}

input:checked+.slide-container .slide-image {
	opacity: 1;
	transform: scale(1);
	transition: opacity 1s ease-in-out;
}

input:checked+.slide-container .carousel-controls label {
	display: block;
}

input#img-1:checked ~ .carousel-dots label#img-dot-1, input#img-2:checked 
	~ .carousel-dots label#img-dot-2, input#img-3:checked ~ .carousel-dots label#img-dot-3,
	input#img-4:checked ~ .carousel-dots label#img-dot-4, input#img-5:checked 
	~ .carousel-dots label#img-dot-5, input#img-6:checked ~ .carousel-dots label#img-dot-6
	{
	opacity: 1;
}

input:checked+.slide-container .nav label {
	display: block;
}

/* 테이블 스타일 */
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
}

		.container {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
		}

		.movie-card {
			width: 300px;
			height: 500px;
			border: 1px solid black;
			margin-bottom: 20px;
			padding: 20px;
		}
</style>
<!-- 메인 -->
<body>






	<div>
		<div class="carousel">
			<ul class="slides">
				<input type="radio" name="radio-buttons" id="img-1" checked />
				<li class="slide-container">
					<div class="slide-image">
						<img
							src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Timisoara_-_Regional_Business_Centre.jpg">
					</div>
					<div class="carousel-controls">
						<label for="img-3" class="prev-slide"> <span>&lsaquo;</span>
						</label> <label for="img-2" class="next-slide"> <span>&rsaquo;</span>
						</label>
					</div>
				</li>
				<input type="radio" name="radio-buttons" id="img-2" />
				<li class="slide-container">
					<div class="slide-image">
						<img
							src="https://content.r9cdn.net/rimg/dimg/db/02/06b291e8-city-14912-171317ad83a.jpg?width=1750&height=1000&xhint=3040&yhint=2553&crop=true">
					</div>
					<div class="carousel-controls">
						<label for="img-1" class="prev-slide"> <span>&lsaquo;</span>
						</label> <label for="img-3" class="next-slide"> <span>&rsaquo;</span>
						</label>
					</div>

				</li>
			</ul>
		</div>
	</div>
<div class="container">
	<h1>최신 영화 목록</h1>
	</div>

	<div class="container">

	</div>
</html>


<!-- 푸터 -->
<%@ include file="footer.jsp"%>



