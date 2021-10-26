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
	href="https://getbootstrap.com/docs/5.1/examples/dropdowns/">
<!-- Google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap) -->
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />
<!-- Calendar dropdown CSS -->
<link href="<c:url value="/resources/css/dropdowns.css"/>"
	rel="stylesheet">

<!-- SimpleLightbox plugin CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- font awesome icon (heart, 위치 등) -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Paging -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Core theme JS-->
<script src="../js/main.js"></script>

<script type="text/javascript">
	/* $(document).ready(function(){
	 $("#heart").click(function(){
	 if($("#heart").hasClass("liked")){
	 $("#heart").html('<i class="fa fa-heart-o" aria-hidden="true"></i>');
	 $("#heart").removeClass("liked");
	 }else{
	 $("#heart").html('<i class="fa fa-heart-o" aria-hidden="true"></i>');
	 $("#heart").addClass("liked");
	 }
	 });
	 }); */
</script>

<!-- search bar & filter -->
<style>
html, body, .intro {
	height: 100%;
}

.form-control {
	border-color: transparent;
}

.input-group>.form-control:focus {
	border-color: transparent;
	box-shadow: inset 0 0 0 1px transparent;
}

.btn-link:hover {
	background-color: rgba(0, 0, 0, .05);
}

.btn-link:active, .btn-link.active {
	background-color: rgba(0, 0, 0, .05);
}

.btn-link:focus, .btn-link.focus {
	background-color: rgba(0, 0, 0, .05);
}

.btn-link:active:focus, .heart-link.active:focus {
	background-color: rgba(0, 0, 0, .05);
}

.btn-out-secondary {
	color: none;
}

.btn-out-secondary:hover {
	color: #fff;
	background-color: #1c7cff;
	border-color: #1c7cff;
}
/* #heart-link:hover {
	background-color: rgba(0, 0, 0, .05);
}

#heart-link:active, #heart-link.active {
	background-color: rgba(0, 0, 0, .05);
}

#heart-link:focus, #heart-link.focus {
	background-color: rgba(0, 0, 0, .05);
}

#heart-link:active:focus, #heart-link.active:focus {
	background-color: rgba(0, 0, 0, .05);
} */

/* font awesome icon */
.fa-heart, .fa-venus-mars, .fa-map-marker {
	color: #1c7cff;
	font-size: 15px;
	cursor: pointer;
}

.fa-heart-o {
	color: #1c7cff;
	font-size: 30px;
	cursor: pointer;
}
</style>

</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="h-75" style="background-color: #1c7cff;">
		<div class="mask d-flex align-items-center h-100">
			<div class="container" style="margin-top: 100px;">
				<div class="pricing-header p-3 pb-md-4 mx-auto text-center">
					<div class="display-4 fw-normal" style="font-size: 30px;">실종
						및 목격 동물</div>
				</div>
				<div class="row">
					<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
						<div class="card mb-2">
							<div class="card-body d-flex justify-content-between py-2">
								<div class="input-group input-group-lg">
									<input type="text" class="form-control form-control-lg rounded"
										placeholder="지역, 품종, 보호상태 검색" aria-label="Search"
										aria-describedby="basic-addon2" /> <span
										class="input-group-text border-0 px-1" id="basic-addon2">
										<i class="fa fa-search fa-lg" style="color: #939597;"></i>
									</span>
								</div>
								<p class="mb-0 d-flex flex-row align-self-center"
									style="color: #939597;"></p>
							</div>
						</div>
						<div class="card">
							<div class="card-body p-4">
								<h6 class="mt-1 mb-2" style="color: #939597;">상세 검색</h6>
								<div class="row">
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" type="button" id="dropdownMenuLink"
												data-bs-toggle="dropdown" aria-expanded="false"> 축종 </a>
											<ul class="dropdown-menu"
												aria-labelledby="dropdownMenuButton1">
												<li><a class="dropdown-item" href="#">Action</a></li>
												<li><a class="dropdown-item" href="#">Another
														action</a></li>
												<li><a class="dropdown-item" href="#">Something
														else here</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink1"
												data-bs-toggle="dropdown" aria-expanded="false"> 품종 </a>
											<ul class="dropdown-menu"
												aria-labelledby="dropdownMenuButton2">
												<li><a class="dropdown-item" href="#">Action</a></li>
												<li><a class="dropdown-item" href="#">Another
														action</a></li>
												<li><a class="dropdown-item" href="#">Something
														else here</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink2"
												data-bs-toggle="dropdown" aria-expanded="false"> 색 </a>
											<ul class="dropdown-menu"
												aria-labelledby="dropdownMenuButton3">
												<li><a class="dropdown-item" href="#">Action</a></li>
												<li><a class="dropdown-item" href="#">Another
														action</a></li>
												<li><a class="dropdown-item" href="#">Something
														else here</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink3"
												data-bs-toggle="dropdown" aria-expanded="false"> 지역 </a>
											<ul class="dropdown-menu"
												aria-labelledby="dropdownMenuButton4">
												<li><a class="dropdown-item" href="#">Action</a></li>
												<li><a class="dropdown-item" href="#">Another
														action</a></li>
												<li><a class="dropdown-item" href="#">Something
														else here</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink4"
												data-bs-toggle="dropdown" aria-expanded="false"> 상태 </a>
											<ul class="dropdown-menu"
												aria-labelledby="dropdownMenuButton4">
												<li><a class="dropdown-item" href="#">Action</a></li>
												<li><a class="dropdown-item" href="#">Another
														action</a></li>
												<li><a class="dropdown-item" href="#">Something
														else here</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink4"
												data-bs-toggle="dropdown" aria-expanded="false"> 특징 </a>
											<ul class="dropdown-menu"
												aria-labelledby="dropdownMenuButton4">
												<li><a class="dropdown-item" href="#">Action</a></li>
												<li><a class="dropdown-item" href="#">Another
														action</a></li>
												<li><a class="dropdown-item" href="#">Something
														else here</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-2">
									<div>
										<button type="button"
											class="btn btn-dark btn-rounded ripple-surface"
											style="min-width: 90px;">검색</button>
										<button type="button"
											class="btn btn-link btn-rounded ripple-surface ripple-surface-dark"
											style="color: rgb(147, 149, 151); min-width: 90px;"
											data-mdb-ripple-color="dark">삭제</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../_module/animalAdoptResult.jsp"></jsp:include>

	<!-- Footer-->
	<jsp:include page="../_module/copyright.jsp"></jsp:include>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>

	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>