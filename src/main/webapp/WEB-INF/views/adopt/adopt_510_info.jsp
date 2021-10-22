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

<!-- Bootstrap core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="list" style="display: flex; align-items: center;">
		<div style="margin: 30px;"></div>

		<div style="margin: 50px;">
			<img src="../assets/img/sampleimg.jpg" class="container-image"
				alt="image" style="width: 300px;">
		</div>

		<div class="container px-4 py-5" id="icon-grid" style="margin: 50px;">
			<h2 class="pb-2 border-bottom">상세 정보</h2>
			<div
				class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-5">
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">축종</h4>
						<p>강아지</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">품종</h4>
						<p>요크셔테리어</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">나이</h4>
						<p>3살</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">성별</h4>
						<p>여자</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">색</h4>
						<p>흰색</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">체중</h4>
						<p>2.5 kg</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">발견 날짜</h4>
						<p>2021년 10월 22일</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">발견 장소</h4>
						<p>강남구</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">보호센터명</h4>
						<p>댕스닷컴</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">보호소 주소</h4>
						<p>강남역</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">보호 상태</h4>
						<p>매우 건강</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">특징</h4>
						<p>애교 많고 눈이 큼</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">특이사항</h4>
						<p>매우 좋음</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">공고 시작일</h4>
						<p>2021년 10월 22일</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h4 class="fw-bold mb-0">공고 종료일</h4>
						<p>2021년 12월 22일</p>
					</div>
				</div>
			</div>
			<div class="d-flex justify-content-around" style="display: flex;">
				<div>
					<a class="btn btn-secondary" href="#"
						target="_blank" style="width: 170px;">양육서비스 신청</a>
				</div>
				<div>
					<a class="btn btn-secondary" href="#"
						target="_blank" style="width: 170px;">입양 예약</a>
				</div>
			</div>
		</div>
		<div style="margin: 30px;"></div>
	</div>


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