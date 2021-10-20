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

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

.btn-link:active:focus, .heart-link.active:focus {
	background-color: rgba(0, 0, 0, .05);
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
  font-size:15px;
  cursor: pointer;
}
.fa-heart-o {
  color: #1c7cff;
  font-size:30px;
  cursor: pointer;
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
											<i class="fa fa-search fa-lg" style="color: #939597;"></i>
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
													class="btn btn-outline-dark btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
											<button type="button" class="btn btn-dark btn-rounded ripple-surface" style="min-width:90px;">검색</button>
											<button type="button" class="btn btn-link btn-rounded ripple-surface ripple-surface-dark"
												style="color: rgb(147,149,151); min-width:90px;" data-mdb-ripple-color="dark">
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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
							<p class="card-text">
								<div><i class="fa fa-heart" aria-hidden="true" ></i>품종</div>
								<div><i class="fa fa-venus-mars" aria-hidden="true" ></i>성별</div>
								<div><i class="fa fa-map-marker" aria-hidden="true" ></i>위치</div>
							</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">입양
										예약</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">양육
										신청</button>
								</div>
								<span id=heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
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

	
</body>
</html>