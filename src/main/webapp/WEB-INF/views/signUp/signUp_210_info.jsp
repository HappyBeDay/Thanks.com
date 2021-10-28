<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Thanks.com 회원가입</title>
<link href="<c:url value="/css/signUp_210.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />

<script src="../js/signUp_210_info.js"></script>
<jsp:include page="../_module/navibar.jsp"></jsp:include>

</head>
<body>
	<form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
		<h2>Sign Up</h2>
		<div class="textForm">
			<input type="text" class="id" placeholder="ID">
			<input type="button" class="btn" style="float: right; width: auto;"
			value="Duplicate ID check">
		</div>
		<div class="textForm">
			<input type="password" class="pw" placeholder="PassWord">
		</div>
		<div class="textForm">
			<input type="password" class="pw" placeholder="Password Check">
		</div>
		<div class="textForm">
			<input type="password" class="name" placeholder="Name">
		</div>
		<div class="textForm">
			<input type="text" class="email" placeholder="you@example.com">
		</div>
		<div class="textForm">
			<input name="nickName" type="text" class="birth" placeholder="ex)1994-04-01">
		</div>
		<div class="textForm">
			<input name="tel" type="number" class="cellphoneNo" placeholder="ex)010-1234-5678">
		</div>
		<input type="submit" class="btn" value="Thanks.com JOIN" />

		<jsp:include page="../_module/copyright.jsp"></jsp:include>
	</form>

</body>
</html>
