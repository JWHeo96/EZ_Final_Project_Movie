<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style>
footer {
  background-color: black;
  color: white;
  padding: 20px 0;
}

.container {

    display: flex;
  justify-content: center;
}

.row {
  display: flex;
  justify-content: space-between;
}

.col-md-4 {
  flex: 0 0 calc(33.333333% - 50px);
  max-width: calc(33.333333% - 50px);
  margin-right: 50px;
}

.col-md-4:last-child {
  margin-right: 0;
}

</style>
</head>
<body>
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h4>회사 정보</h4>
        <p>MOVIE HOLIC</p>
        <p>서울시 행복구 사랑동 1004-7</p>
        <p>02-000-0000</p>
        <p>heven123@gmail.com</p>
      </div>
      <div class="col-md-4">
        <h4>이용 안내</h4>
        <ul>
          <li><a href="#">상영 시간표</a></li>
          <li><a href="#">예매 방법</a></li>
          <li><a href="#">취소 및 환불</a></li>
          <li><a href="#">이용 약관</a></li>
        </ul>
      </div>
      <div class="col-md-4">
        <h4>소셜 미디어</h4>
        <ul>
          <li><a href="https://www.facebook.com/영화관페이스북페이지" target="_blank">Facebook</a></li>
          <li><a href="https://www.twitter.com/영화관트위터계정" target="_blank">Twitter</a></li>
          <li><a href="https://www.instagram.com/영화관인스타그램계정" target="_blank">Instagram</a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>
</body>
</html>