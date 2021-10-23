<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">

<link rel="canonical" href="https://getbootstrap.com/docs/5.sd0/examples/signin/">
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
	
<!-- Bootstrap core CSS -->
<%-- <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet"/> --%>
<link href="<c:url value="/css/login_300.css"/>" rel="stylesheet"/>
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>

<script src="../js/main.js"></script>
<title>Thanks.com sign-in main </title>
</head>
<body class="text-center">
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
	<div class="form-signin">
	<form>
		<img class="mb-4" src="../assets/img/Thanks.com_logo.png" alt="" width="130" height="130">
		<h1 class="h3 mb-3 fw-normal">Please Sign In</h1>
		<div class="form-floating">
			<input type="text" class="form-control" id="floatingInput" placeholder="name@example.com"> <label for="floatingInput">Enter ID</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="floatingPassword"
				placeholder="Password"> <label for="floatingPassword">Enter Password</label>
		</div>
		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me"> Remember ID </label>
		</div>
		<button class="w-100 btn btn-lg btn-primary" type="submit">Check!</button>
		<div class="search-signin">
			<a href="memberId">Search ID</a> | <a href="memberPw">Search PW</a> |
			<a href="memberRegist">Sign Up</a>
		</div>
	</form>
	<!-- Footer-->
		<jsp:include page="../_module/copyright.jsp"></jsp:include>
	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	</div>	
</body>	
</html>