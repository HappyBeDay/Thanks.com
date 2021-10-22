<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">

<title>Thanks.com sign in</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/signin/">

<!-- Bootstrap core CSS -->
<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" />
<link href="<c:url value="/css/login_300.css"/>" rel="stylesheet" />

<!-- Custom styles for this template -->
</head>
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