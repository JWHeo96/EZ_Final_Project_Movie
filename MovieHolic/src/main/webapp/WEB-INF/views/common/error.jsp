<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면</title>
<style>
	body {
		background-color: #f2f2f2;
		color: #333333;
		font-family: Arial, sans-serif;
		margin: 0;
		padding: 0;
	}
	
	.container {
		max-width: 600px;
		margin: 0 auto;
		padding: 20px;
	}

	.error-box {
		background-color: #ffffff;
		border: 1px solid #dddddd;
		border-radius: 5px;
		padding: 20px;
		text-align: center;
	}

	.error-box h1 {
		color: #ff6600;
		font-size: 24px;
		margin-bottom: 20px;
	}

	.error-message {
		margin-top: 50px;
		font-size: 18px;
	}

	.error-link {
		display: inline-block;
		margin-top: 20px;
		color: #000000;
		text-decoration: none;
		border: 1px solid #dddddd;
		border-radius: 5px;
		padding: 10px 20px;
		background-color: #eeeeee;
	}

	.error-link:hover {
		background-color: #dddddd;
	}
</style>
</head>
<body>

<div class="container">
	<div class="error-box">
		<h1>기본 에러 화면입니다.</h1>
	</div>

	<div class="error-message">
		Message: ${exception.message}
	</div>

	<a class="error-link" href="index">메인 화면으로 이동</a>
</div>

</body>
</html>
