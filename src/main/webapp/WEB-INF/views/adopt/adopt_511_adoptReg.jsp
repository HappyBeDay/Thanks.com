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

<!-- Custom styles for this template -->
<link href="../css/features.css" rel="stylesheet">

<!-- Core theme JS-->
<script src="../js/main.js"></script>

</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="list" style="display: flex; align-items: center;">
		<div class="container px-4" id="icon-grid"
			style="padding-top: 4rem !important;">
			<div class="py-5 my-5 text-center">
				<h1 class="display-5 fw-bold">입양 예약</h1>
				<div class="col-lg-6 mx-auto">
					<p class="lead mb-4">
						<div style="font-size: 20px;">
						<div>
						입양을 희망하시는 분들은 로그인 후 입양하기 버튼을 통해 해당 동물을 찜하실 수 있습니다.</div> 
						<div>
						해당 동물이 보호하고 있는 센터에 유선으로 방문 예약을 진행해주시기 바랍니다.</div>
						<div style="margin: 10px;">한 마리에게 여러 명의 입양희망자가 생길 경우 센터 관리자들이 회의를 거쳐 선정하게 됩니다.</div>
						<div>선택이 안 되더라도 양해해 주시기 바랍니다.</div>
						</div>
					</p>
				</div>
			</div>
			<div style="margin-left: 100px; margin-right: 100px; margin-bottom: 100px;">
				<h2 class="pb-2 border-bottom">보호소 소개</h2>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-5">
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">센터</h5>
							<p>강아지</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">관리기관</h5>
							<p>요크셔테리어</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">센터 유형</h5>
							<p>3살</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">센터 지정일자</h5>
							<p>여자</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">전화번호</h5>
							<p>흰색</p>
						</div>
					</div>
				</div>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-4">
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">수의사 인원수</h5>
							<p>2021년 10월 22일</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">사양관리사 인원수</h5>
							<p>강남구</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">구조운반용 차량보유 대수</h5>
							<p>매우 건강</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">진료실 수</h5>
							<p>2021년 12월 22일</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">사육실 수</h5>
							<p>2021년 10월 22일</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">격리실 수</h5>
							<p>2021년 10월 22일</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">사료 보관실 수</h5>
							<p>2021년 10월 22일</p>
						</div>
					</div>
				</div>
				<h3 class="pb-2" style="margin-top: 70px;">평일</h3>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-2 g-4 py-4">
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">운영시간</h5>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">분양시간</h5>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<p>09:00-18:00</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<p>09:00-18:00</p>
						</div>
					</div>
				</div>
				<h3 class="pb-2">주말</h3>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-2 g-4 py-4">
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">운영시간</h5>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<h5 class="fw-bold mb-0">분양시간</h5>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<p>10:00-15:00</p>
						</div>
					</div>
					<div class="col d-flex align-items-start">
						<div>
							<p>10:00-15:00</p>
						</div>
					</div>
				</div>
				<h3 class="pb-2" style="margin-top: 30px;">휴무</h3>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-2 g-4 py-4">
					<div class="col d-flex align-items-start">
						<div>
							<p>월, 화
							<p>
						</div>
					</div>
				</div>
			<div class="d-flex justify-content-around"
				style="display: flex; padding-top: 2rem !important;">
				<div>
					<a class="btn btn-secondary" href="#" target="_blank"
						style="width: 170px;">입양 예약</a>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>


<!-- Footer-->
<jsp:include page="../_module/copyright.jsp"></jsp:include>

<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- SimpleLightbox plugin JS-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
</html>