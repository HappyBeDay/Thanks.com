<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Bootstrap core CSS -->
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/signin/">
<link href="<c:url value="/css/signUp_210.css"/>" rel="stylesheet"/>
<link href="<c:url value="/css/bootstrap"/>" rel="stylesheet"/>
<title>Thanks.com 회원가입</title>
</head>
<body>
	<form action="doJoin" method="POST" class="joinForm"
		onsubmit="DoJoinForm__submit(this); return false;">
		<h2>Sign Up</h2>
		<div class="textForm">
			<input name="loginId" type="text" class="id" placeholder="ID">
			<input type="button">
			</input>
		</div>
		<div class="textForm">
			<input name="loginPw" type="password" class="pw"
				placeholder="PassWord">
		</div>
		<div class="textForm">
			<input name="loginPwConfirm" type="password" class="pw"
				placeholder="Password Check">
		</div>
		<div class="textForm">
			<input name="name" type="password" class="name" placeholder="Name">
		</div>
		<div class="textForm">
			<input name="email" type="text" class="email"
				placeholder="you@example.com">
		</div>
		<div class="textForm">
			<input name="nickname" type="text" class="birth"
				placeholder="ex)1994-04-01">
		</div>

		<div class="textForm">
			<input name="cellphoneNo" type="number" class="cellphoneNo" placeholder="ex)010-1234-5678">
		</div>
		<input type="submit" class="btn" value="Thanks.com JOIN" />

	</form>
</body>
</html>
