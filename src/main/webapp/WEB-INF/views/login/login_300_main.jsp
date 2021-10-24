<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
	<head>
	<title>Thanks.com sign-in main </title>
		<link href="<c:url value="/css/login_300.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
	<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body class="text-center">
	<div class="form-signin">
	<form action="login">
		<img class="mb-4" src="../assets/img/Thanks.com_logo.png" alt="" width="130" height="130">
		<h1 class="h3 mb-3 fw-normal">Please Sign In</h1>
		<div class="form-floating">
			<input name="id" type="text" class="form-control" id="floatingInput" placeholder="name@example.com"> <label for="floatingInput">Enter ID</label>
		</div>
		<div class="form-floating">
			<input name="pw" type="password" class="form-control" id="floatingPassword"
				placeholder="Password"> <label for="floatingPassword">Enter Password</label>
		</div>
		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me"> Remember ID </label>
		</div>
		<button class="w-100 btn btn-lg btn-primary" type="submit">Check!</button>
		<div class="search-signin">
			<a href="login_310_idFind">Search ID</a> | <a href="login_320_pwFind">Search PW</a> |
			<a href="memberRegist">Sign Up</a>
		</div>
	</form>
		<jsp:include page="../_module/copyright.jsp"></jsp:include>
    </div>	
</body>	
</html>