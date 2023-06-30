<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>	 
 <link rel="stylesheet" href="css/qna.css" />
<br><br><br>
<div class="container2" id="container2">
	   <h1 class="loginh1">1:1 고객 게시판</h1>
  
    	<h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>
	     <hr width="50%"><br>
		<form name="formm" method="post" action="qna_write">
			
			<div>
				<input type="text" name="title" id="title" size="60"  placeholder="제목" maxlength="60">
			</div>
			<div>   
				 <textarea rows="20" cols="62" name="content" id="content" placeholder="내용"  maxlength="255"></textarea>
			</div>
		    <br><br>
		
		    <div>
			  	<button type="submit" class="submit" onclick="validateInput()">글쓰기</button>
		 		<button type="button" class="submit" onclick="location.href='qna_list'">목록보기</button><br><br>
			
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
	<br>
<%@ include file="../footer.jsp" %>