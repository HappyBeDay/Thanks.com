<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="" />
<meta name="author" content="" />

<title>Adopt</title>

<!-- Google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap) -->
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />

<!--  Dropdown Filter CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

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
<script type="text/javascript">
	/* heart like */
	function myFunction(x) {
		x.classList.toggle("fa-heart-o");
	}
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

/* heart like */
.fa-heart {
	font-size: 30px;
	cursor: pointer;
	user-select: none;
}

.fa-heart:hover {
	color: #1c7cff;
}

/* font awesome icon */
.fa-paw, .fa-venus-mars, .fa-map-marker {
	color: #1c7cff;
	font-size: 15px;
	cursor: pointer;
}

.fa-heart-o {
	color: black;
	font-size: 30px;
	cursor: pointer;
}

/* search box shadow */
.searchbar:hover {
	box-shadow: 0 0 11px rgba(33, 33, 33, .6);
}
</style>
</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
	<script src="../js/adopt/adopt_500_main.js"></script>

	<div class="h-75" style="background-color: #1c7cff;">
		<div class="mask d-flex align-items-center h-100">
			<div class="container" style="margin-top: 100px;">
				<div class="pricing-header p-3 pb-md-4 mx-auto text-center">
					<div class="display-4 fw-normal" style="font-size: 30px;">입양
						대기 동물</div>
				</div>
				<div class="row">
					<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
						<div class="searchbar card mb-2">
							<div class="card-body d-flex justify-content-between py-2">
								<div class="input-group input-group-lg">
									<input type="text" class="form-control form-control-lg rounded"
										placeholder="색, 지역, 품종, 보호상태 검색" aria-label="Search"
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
											<button
												class="btn btn-rounded btn-lg btn-block dropdown-toggle "
												href="#" type="button" id="dropdownMenu1"
												data-bs-toggle="dropdown" aria-expanded="false">축종
											</button>
											<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
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
												class="btn btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuButton2"
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
									<!-- <div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
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
									</div> -->
								</div>
								<div class="row">
									<div class="col-md-4 mb-3">
										<div class="dropdown">
											<a
												class="btn btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink3"
												data-bs-toggle="dropdown" aria-expanded="false"> 보호소 위치
											</a>
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
												class="btn btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink4"
												data-bs-toggle="dropdown" aria-expanded="false"> 성별 </a>
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
												class="btn btn-rounded btn-lg btn-block dropdown-toggle ripple-surface"
												href="#" role="button" id="dropdownMenuLink5"
												data-bs-toggle="dropdown" aria-expanded="false"> 공고 날짜 </a>
											<div class="dropdown-menu p-2 shadow rounded-3"
												style="width: 340px" id="dropdownCalendar">
												<div class="d-grid gap-1">
													<div class="cal">
														<div class="cal-month">
															<button class="btn cal-btn" type="button">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor"
																	class="bi bi-arrow-left" viewBox="0 0 16 16">
  																	<path fill-rule="evenodd"
																		d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z" />
																</svg>
															</button>
															<strong class="cal-month-name">June</strong> <select
																class="form-select cal-month-name d-none">
																<option value="January">January</option>
																<option value="February">February</option>
																<option value="March">March</option>
																<option value="April">April</option>
																<option value="May">May</option>
																<option selected value="June">June</option>
																<option value="July">July</option>
																<option value="August">August</option>
																<option value="September">September</option>
																<option value="October">October</option>
																<option value="November">November</option>
																<option value="December">December</option>
															</select>
															<button class="btn cal-btn" type="button">
																<svg xmlns="http://www.w3.org/2000/svg" width="16"
																	height="16" fill="currentColor"
																	class="bi bi-arrow-right" viewBox="0 0 16 16">
  																	<path fill-rule="evenodd"
																		d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
																</svg>
															</button>
														</div>
														<div class="cal-weekdays text-muted">
															<div class="cal-weekday">Sun</div>
															<div class="cal-weekday">Mon</div>
															<div class="cal-weekday">Tue</div>
															<div class="cal-weekday">Wed</div>
															<div class="cal-weekday">Thu</div>
															<div class="cal-weekday">Fri</div>
															<div class="cal-weekday">Sat</div>
														</div>
														<div class="cal-days">
															<button class="btn cal-btn" disabled type="button">30</button>
															<button class="btn cal-btn" disabled type="button">31</button>

															<button class="btn cal-btn" type="button">1</button>
															<button class="btn cal-btn" type="button">2</button>
															<button class="btn cal-btn" type="button">3</button>
															<button class="btn cal-btn" type="button">4</button>
															<button class="btn cal-btn" type="button">5</button>
															<button class="btn cal-btn" type="button">6</button>
															<button class="btn cal-btn" type="button">7</button>

															<button class="btn cal-btn" type="button">8</button>
															<button class="btn cal-btn" type="button">9</button>
															<button class="btn cal-btn" type="button">10</button>
															<button class="btn cal-btn" type="button">11</button>
															<button class="btn cal-btn" type="button">12</button>
															<button class="btn cal-btn" type="button">13</button>
															<button class="btn cal-btn" type="button">14</button>

															<button class="btn cal-btn" type="button">15</button>
															<button class="btn cal-btn" type="button">16</button>
															<button class="btn cal-btn" type="button">17</button>
															<button class="btn cal-btn" type="button">18</button>
															<button class="btn cal-btn" type="button">19</button>
															<button class="btn cal-btn" type="button">20</button>
															<button class="btn cal-btn" type="button">21</button>

															<button class="btn cal-btn" type="button">22</button>
															<button class="btn cal-btn" type="button">23</button>
															<button class="btn cal-btn" type="button">24</button>
															<button class="btn cal-btn" type="button">25</button>
															<button class="btn cal-btn" type="button">26</button>
															<button class="btn cal-btn" type="button">27</button>
															<button class="btn cal-btn" type="button">28</button>

															<button class="btn cal-btn" type="button">29</button>
															<button class="btn cal-btn" type="button">30</button>
															<button class="btn cal-btn" type="button">31</button>
														</div>
													</div>
												</div>
											</div>
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
	<jsp:include page="../_module/animal/animalAdoptResult.jsp"></jsp:include>
	<!-- Paging -->
	<jsp:include page="../_module/pagination.jsp"></jsp:include>
	<!-- Footer-->
	<jsp:include page="../_module/copyright.jsp"></jsp:include>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>

	<%-- 없어도 되길래 일단 없애고 진행. 있으면 404 에러.
	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	--%>

	<!--  Dropdown filter -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous"></script>
</body>
</html>