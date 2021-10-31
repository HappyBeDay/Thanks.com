<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="author" content="" />
<title>Insert title here</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/features/">

<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />

<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />

<!-- font awesome icon (heart, 위치 등) -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<!-- Custom styles for this template -->
<link href="../css/features.css" rel="stylesheet">

<!-- Core theme JS-->
<script src="../js/main.js"></script>

<style>
/* search box shadow */
.searchbar:hover {
	box-shadow: 0 0 11px rgba(33, 33, 33, .6);
}
</style>
</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="container" style="margin-top: 100px; margin-bottom: 70px;">
		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="community_900_mainBoard" class="nav-link px-2 link-dark"><b>커뮤니티
						게시판</b></a></li>
			<li><a href="community_920_raise" class="nav-link px-2 link-secondary"><b>양육
						커뮤니티</b></a></li>
			<li><a href="community_930_care" class="nav-link px-2 link-dark"><b>돌폼
						서비스 신청</b></a></li>
		</ul>
	</div>

	<div class="h-25" style="background-color: #1c7cff;">
		<div class="mask d-flex align-items-center h-100">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
						<div class="searchbar card mb-2">
							<div class="card-body d-flex justify-content-between py-2">
								<div class="input-group input-group-lg">
									<input type="text" class="form-control form-control-lg rounded"
										placeholder="날짜, 태그, 게시글 검색" aria-label="Search"
										aria-describedby="basic-addon2" /> <span
										class="input-group-text border-0 px-1" id="basic-addon2">
										<i class="fa fa-search fa-lg" style="color: #939597;"></i>
									</span>
								</div>
								<p class="mb-0 d-flex flex-row align-self-center"
									style="color: #939597;"></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../_module/animalRaiseResult.jsp"></jsp:include>

	<!-- Footer-->
	<jsp:include page="../_module/copyright.jsp"></jsp:include>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
</body>
</html>