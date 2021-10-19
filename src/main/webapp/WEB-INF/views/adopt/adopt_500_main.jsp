<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="author" content="" />
<title>Insert title here</title>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/main.css" rel="stylesheet" />

<!-- Bootstrap core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />



<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

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

.btn-link:active:focus, .btn-link.active:focus {
	background-color: rgba(0, 0, 0, .05);
}

$
red: #ff3252 ;

.like-button {
	display: inline-block;
	position: relative;
	font-size: 32px;
	cursor: pointer; 
	
	&::before { 
	font-size: 3em;
	color: #000;
	content: '♥';
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	}

	&::after {
	font-size: 3em;
	color: $red;
	content: '♥';
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%) scale(0);
	transition: transform 0.2s;
}

	&.liked::after {
	transform: translate(-50%, -50%) scale(1.1);
	}
}
</style>

</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

		<div class="h-75" style="background-color: #1c7cff;">
			<div class="mask d-flex align-items-center h-100">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
							<div class="card mb-2">
								<div class="card-body d-flex justify-content-between py-2">
									<div class="input-group input-group-lg">
										 <input type="text"
											class="form-control form-control-lg rounded"
											placeholder="지역, 품종, 보호상태 검색" aria-label="Search"
											aria-describedby="basic-addon2" />
											<span class="input-group-text border-0 px-1" id="basic-addon2">
											<i class="fas fa-search fa-lg" style="color: #939597;"></i>
										</span>
									</div>
									<p class="mb-0 d-flex flex-row align-self-center"
										style="color: #939597;"></p>
								</div>
							</div>
							<div class="card">
								<div class="card-body p-4">
									<h6 class="mt-3 mb-4" style="color: #939597;">상세 검색</h6>
									<div class="row">
										<div class="col-md-4 mb-3">
											<div class="dropdown">
												<a
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle"
													href="#" role="button" id="dropdownMenuLink"
													data-mdb-toggle="dropdown" aria-expanded="false"> 축종 </a>
												<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle"
													href="#" role="button" id="dropdownMenuLink1"
													data-mdb-toggle="dropdown" aria-expanded="false"> 품종 </a>
												<ul class="dropdown-menu"
													aria-labelledby="dropdownMenuLink1">
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle"
													href="#" role="button" id="dropdownMenuLink2"
													data-mdb-toggle="dropdown" aria-expanded="false"> 색 </a>
												<ul class="dropdown-menu"
													aria-labelledby="dropdownMenuLink2">
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle"
													href="#" role="button" id="dropdownMenuLink3"
													data-mdb-toggle="dropdown" aria-expanded="false"> 보호소
													위치 </a>
												<ul class="dropdown-menu"
													aria-labelledby="dropdownMenuLink3">
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle"
													href="#" role="button" id="dropdownMenuLink4"
													data-mdb-toggle="dropdown" aria-expanded="false"> 성별 </a>
												<ul class="dropdown-menu"
													aria-labelledby="dropdownMenuLink4">
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle"
													href="#" role="button" id="dropdownMenuLink5"
													data-mdb-toggle="dropdown" aria-expanded="false"> 공고 날짜
												</a>
												<ul class="dropdown-menu"
													aria-labelledby="dropdownMenuLink5">
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
										class="d-flex justify-content-between align-items-center mt-4">
										<div>
											<button type="button" class="btn btn-dark btn-rounded">검색</button>
											<button type="button" class="btn btn-link btn-rounded"
												style="color: #939597;" data-mdb-ripple-color="dark">
												삭제</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<main>

	<div class="album py-5 bg-light">
		<div class="container">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<button class="like-button"></button>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<svg class="bd-placeholder-img card-img-top" width="100%"
							height="225" xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						<div class="card-body">
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
								</div>
								<small class="text-muted">9 mins</small>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</main>

	<!-- Footer-->
	<jsp:include page="../_module/copyright.jsp"></jsp:include>

	<!-- Core theme JS-->
	<script src="../js/main.js"></script>

	<script src="../js/bootstrap.bundle.min.js"></script>
</body>
</html>