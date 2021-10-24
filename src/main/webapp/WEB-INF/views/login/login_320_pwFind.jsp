<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
	<head>
	<title>Thanks.com sign in</title>
		 <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />
		 <link href="<c:url value="/css/login_300.css"/>" rel="stylesheet" />
	<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body class="text-center">
	<div class="form-signin ">
		<form>
			<img class="mb-4" src="../assets/img/Thanks.com_logo.png" alt="" width="130" height="130">
			<h1 class="h3 mb-3 fw-normal">Find PassWord</h1>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" placeholder="Certification Number"> 
				<label for="floatingPassword">User ID</label>
			</div>
			<div class="form-floating form-bottom">
				<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"> 
				<label for="floatingInput">
					Enter Email
				</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" placeholder="Certification Number"> 
				<label for="floatingPassword">인증번호</label>
			</div>
			
			<button class="w-100 btn btn-lg btn-primary" type="submit">
				Check!
			</button>
		</form>
	<div>
		<jsp:include page="../_module/copyright.jsp"></jsp:include>	
	</div>
	</div>
</body>
</html>