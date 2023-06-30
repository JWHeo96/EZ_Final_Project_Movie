<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="css/admin/noticeWrite.css" />

<body>
	<main class="page-content">
	<div class="container-fluid">
		<h1 align="center">공지사항 작성</h1>
	  	<hr>
	  	<br>
		<form name="formm" method="post" action="notice_write">
			<fieldset align="center">

				<label>제목</label>
				<br> 
				<input type="text" name="title" id="title" size="63"  maxlength="60">
				<br>
				<br> 
				<label>내용</label>
				<br>
				<textarea rows="20" cols="65" name="content" id="content" maxlength="255"></textarea>
				<br>
				
			</fieldset>
			<br>
			<div id="buttons" align="center">
				<input type="submit" value="글쓰기" class="submit" onclick="validateInput()"> 
				<input type="button" value="목록보기" class="submit" onclick="location.href='notice_list_admin'">
			</div>
		</form>
		<script>
	      function validateInput() {
	          var title = document.getElementById("title").value;
	          var filteredTitle = title.replace(/</g, ""); // '<' 문자를 빈 문자열로 대체
	          document.getElementById("title").value = filteredTitle;
	          
	          var content = document.getElementById("content").value;
	          var filteredContent = content.replace(/</g, ""); // '<' 문자를 빈 문자열로 대체
	          document.getElementById("content").value = filteredContent;
	      }
	      </script>
	</div>
	</main>
</body>