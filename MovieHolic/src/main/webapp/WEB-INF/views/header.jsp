<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
<style>
    /* 헤더 스타일 */
    header {
      background-color: #333;
      color: #fff;
      padding: 10px;
      height: 100px
    }

    header h1 {
      margin: 0;
      font-size: 24px;
    }

    header ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    header ul li {
      display: inline-block;
      margin-right: 50px;
      margin-left: 400px;
    }

    header ul li a {
      color: #fff;
      text-decoration: none;
    }
	




.et-hero-tabs-container {
    display: flex;
    flex-direction: row;
    position: absolute;
    top:100px;
    width: 100%;
    height: 70px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    background: #fff;
    z-index: 10;
    &--top {
        position: fixed;
        top: 0;
    }
}

.et-hero-tab {
    display: flex;
    justify-content: center;
    align-items: center;
    flex: 1;
    color: #000;
    letter-spacing: 0.1rem;
		transition: all 0.5s ease;
		font-size: 20px;
	  &:hover {
			color:white;
      background: rgba(102,177,241,0.8);
			transition: all 0.5s ease;
    }
}

.et-hero-tab-slider {
    position: absolute;
    bottom: 0;
    width: 0;
    height: 6px;
    background: #66B1F1;
    transition: left 0.3s ease;
}


</style>
</head>
<body>

  <header>
    <h1>MOVIE HOLIC</h1>
    <ul>
      <li><a href="#">홈</a></li>
      <li><a href="#">고객센터</a></li>
      <li><a href="#">회원가입</a></li>
      <li><a href="#">로그인</a></li>
    </ul>
  </header>
  

  <!-- Hero -->
 

    <div class="et-hero-tabs-container">
      <a class="et-hero-tab" href="ticketingView">예매</a>
      <a class="et-hero-tab" href="#tab-react">극장</a>
      <a class="et-hero-tab" href="#tab-angular">영화</a>
      <a class="et-hero-tab" href="#tab-other">이벤트</a>
      <span class="et-hero-tab-slider"></span>
    </div>


</body>
</html>