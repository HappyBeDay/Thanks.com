<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Thanks.com 회원가입</title>
<link href="<c:url value="/css/signUp_210.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />

<jsp:include page="../_module/navibar.jsp"></jsp:include>
<script src="../js/signUp/signUp_210_info.js"></script>

</head>
<body>
	<form action="signUpAction" method="POST" class="joinForm">
		<h2>Sign Up</h2>
		<div class="form-inline">
		<div class="textForm">
			<input type="text" class="id" name="id" placeholder="ID">
		</div>
		<div>
			<input type="button" id="idCheck" lang="signUp_211_overlap" class="btn" 
			value="Duplicate ID check">
		</div>
		</div>
		<div class="textForm">
			<input type="password" class="pw" name="pw" placeholder="PassWord">
		</div>
		<div class="textForm">
			<input type="password" class="pw" placeholder="Password Check">
		</div>
		<div class="textForm">
			<input type="text" class="name" name="name" placeholder="Name">
		</div>
		<div class="textForm">
			<input type="email" class="email" name="email" placeholder="you@example.com">
		</div>
		<div class="textForm">
			<input type="number" class="birth" name="birth" placeholder="ex)19940401">
		</div>
		<div class="textForm">
			<input name="tel" type="number" class="cellphoneNo" placeholder="ex)01012345678">
		</div>
		<input type="submit" class="btn" value="Thanks.com JOIN" />

	</form>
		<jsp:include page="../_module/copyright.jsp"></jsp:include>

</body>
</html>
