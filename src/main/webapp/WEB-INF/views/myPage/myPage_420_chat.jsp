<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Thanks.com Chatting</title>

		<link href="<c:url value="/resources/css/myPage_420.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
	<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body>
<div id = "container" style ="margin-top: 100px;">
	<aside>
		<header>
			<input type="text" placeholder="search">
		</header>
		<ul>
			<li>
				<img src="../assets/img/anya9.jpg" style = "width : 60px;  height : 60px;" alt="">
				<div>
					<h2>Anya</h2>
					<h3>
						<span class="status orange"></span>
						offline
					</h3>
				</div>
			</li>
			<li>
				<img src="../assets/img/KakaoTalk_20211024_142003237_01.jpg" style = "width : 60px;  height : 60px;" alt="">
				<div>
					<h2>이러다 다~죽어</h2>
					<h3>
						<span class="status green"></span>
						online
					</h3>
				</div>
			</li>
				<li>
				<img src="../assets/img/20190804_141247_724.jpg" style = "width : 60px;  height : 60px;" alt="">
				<div>
					<h2>자칭바보</h2>
					<h3>
						<span class="status green"></span>
						online
					</h3>
				</div>
			</li>
		</ul>
	</aside>
	
	<main>
		<header>
			<img src="../assets/img/KakaoTalk_20211024_142003237_02.jpg" style = "width : 60px;  height : 60px;" alt="">
			<div>
				<h2>Chat with 김태라 과장</h2>
				<h3>already 2 messages</h3>
			</div>
			<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_star.png" alt="">
		</header>
		<ul id="chat">
			<li class="you">
				<div class="entete">
					<span class="status green"></span>
					<h2>Vincent</h2>
					<h3>12:12PM, Today</h3>
				</div>
				<div class="triangle"></div>
				<div class="message">
					민제야 css 안먹혀 해결좀 해 똑바로 안할래?? 내일보자. 카톡 답장하지마
				</div>
			</li>
			<li class="me">
				<div class="entete">
					<h3>01:22AM, Today</h3>
					<h2>SONG mj</h2>
					<span class="status blue"></span>
				</div>
				<div class="triangle"></div>
				<div class="message">
					죄송합니다 똑바로 하겠습니다 제가 실수를 해서 그렇습니다 죄송합니다
				</div>
			</li>
		</ul>
		
		<footer>
			<textarea placeholder="Type your message"></textarea>
			<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_picture.png" alt="">
			<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_file.png" alt="">
			<a href="#">Send</a>
		</footer>

	</main>
</div>
			<jsp:include page="../_module/copyright.jsp"></jsp:include>
</body>
</html>