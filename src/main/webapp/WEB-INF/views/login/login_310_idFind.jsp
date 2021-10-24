<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
	<head>
	 <title>Thanks.com IdFind</title>
		<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />
		<link href="<c:url value="/css/login_300.css"/>" rel="stylesheet" />
	<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body class="text-center">
	<div class="form-signin ">
		<form>
			<img class="mb-4" src="../assets/img/Thanks.com_logo.png" alt="" width="130" height="130">
			<h1 class="h3 mb-3 fw-normal">Find ID</h1>
			<div class="form-floating form-bottom">
				<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"> 
				<label for="floatingInput">
					Enter Email
				</label>
			</div>

			<button class="form-bottom w-100 btn btn-lg btn-primary "
				type="submit">Confirm By Email</button>

			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" placeholder="Certification Number"> 
				<label for="floatingPassword">Certification Number</label>
			</div>

			<button class="w-100 btn btn-lg btn-primary" type="submit" onclick="location.href='/Thanks.com/autoLink/mainScreen_100_main'" >
				Certification Number Check!
			</button>
			<!-- <button onclick="location.href='index.html'" -->
			<!-- onclick="window.open('http://localhost:8080/Thanks.com/login/login_311_idVerify')"  -->
		</form>
		<footer>
			<jsp:include page="../_module/copyright.jsp"></jsp:include>	
		</footer>
	</div>
</body>
</html>