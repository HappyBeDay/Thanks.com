<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset=utf-8 />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Thanks.com</title>
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link 
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>

<!-- Core theme JS-->
<script src="../js/main.js"></script>

</head>

<body id="page-top">
	<!-- Navigation 1-->
		<jsp:include page="../_module/navibar.jsp"></jsp:include>
	<!-- Masthead-->
	<header class="masthead">
		<video autoplay muted loop id="myVideo">
			<source src="../assets/video/dogmain.mp4" type="video/mp4">
		</video>
		<div class="container px-4 px-lg-5 h-100">
			<div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-8 align-self-end">
					<h1 class="text-white font-weight-bold">동물들이 뛰어노는 세상을 꿈꿉니다.</h1>
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 mb-5">Thanks.com은 인간과 동물이 평화롭게 공존하는 세상을
						만들고자 노력하고 있습니다.</p>
					<!--  <a class="btn btn-primary btn-xl" href="#about">Find Out More</a> -->
				</div>
			</div>
		</div>
	</header>
	<!-- About-->
	<section class="page-section bg-primary" id="about">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-xl-4 col-lg-5">
					<img class="img-fluid mb-3 mb-lg-0"
						src="../assets/img/intro.png" alt="...">
				</div>
				<div class="col-xl-8 col-lg-7">
					<h1 class="text-gray mt-0">Thanks.com</h1>
					<h2 class="text-white mt-0">회사소개</h2>
					<br> <br>
					<p class="text-white-75 mb-4">저희는 유기동물들이 새로운 가족을 만날 수 있도록 도움을
						드리고 있습니다. 동물과 공존하는 행복한 세상! 여러분의 관심과 사랑이 함께하면 현실이 됩니다. 유기동물을 돕는
						방법에는 입양, 자원봉사, 후원 등이 있습니다. 입양센터 홈페이지에 있는 센터 아이들을 입양하실 수 있고, '자원봉사
						신청'을 통해 희망하는 일자에 봉사활동을 하실 수 있습니다. 또한 '후원하기'를 통해 입양센터를 후원하실 수 있습니다.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Statistics-->
	<section class="page-section bg-white" id="services">
		<div class="container px-4 px-lg-5">
			<h2 class="text-center mt-0">오늘의 통계</h2>
			<div class="row gx-4 gx-lg-5">
				<div class="col-lg col-md-4 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-building fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">33</h3>
						<p class="text-muted mb-0">입소</p>
					</div>
				</div>
				<div class="col-lg col-md-4 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-house-door fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">156</h3>
						<p class="text-muted mb-0">귀가</p>
					</div>
				</div>
				<div class="col-lg col-md-4 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-heart fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">168</h3>
						<p class="text-muted mb-0">입양</p>
					</div>
				</div>
				<div class="col-lg col-md-4 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-emoji-frown fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">98</h3>
						<p class="text-muted mb-0">안락사</p>
					</div>
				</div>
				<div class="col-lg col-md-4 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<i class="bi-cloud-rain fs-1 text-primary"></i>
						</div>
						<h3 class="h4 mb-2">102</h3>
						<p class="text-muted mb-0">자연사</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
		<jsp:include page="../_module/copyright.jsp"></jsp:include>
	
	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
       
	<!-- SimpleLightbox plugin JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	
</body>
</html>