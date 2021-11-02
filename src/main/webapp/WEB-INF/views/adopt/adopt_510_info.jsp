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
<title>동물 소개</title>

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
	<script src="../js/_module/animal/adopt_510_info.js"></script>
	<div class="list" style="display: flex; align-items: center;">
		<div style="margin: 50px;"></div>

		<div style="margin: 50px;">
			<img src="${list.ABPIC}" class="container-image"
				alt="image" style="width: 300px;">
		</div>

		<div class="container px-4" id="icon-grid"
			style="margin: 50px; padding-top: 4rem !important;">
			<h2 class="pb-2 border-bottom">동물 소개</h2>
			<div
				class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-5">
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">축종</h5>
						<p>${list.BREEDTYPENAME}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">품종</h5>
						<p>${list.BREEDNAME}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">나이</h5>
						<p id="age">${list.ABAGE}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">성별</h5>
						<p id="sex">${list.SEX}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">색</h5>
						<p>${list.COLOR}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">체중</h5>
						<p>${list.ABWEIGHT}kg</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">특징</h5>
						<p>${list.ABFEAT}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">보호소 이름</h5>
						<p>${list.ABSHELTERNAME}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">보호소 전화번호</h5>
						<p id="tel">${list.ABSHELTERTEL}</p>
					</div>
				</div>
			</div>
			<div
				class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-4">
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">발견 날짜</h5>
						<p lang="date">${list.FINDDATE}!</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">발견 장소</h5>
						<p>${list.FINDLOC}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">보호 상태</h5>
						<p>${list.STATENAME}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">공고 종료일</h5>
						<p lang="date">${list.NOTICEENDDATE}</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div>
						<h5 class="fw-bold mb-0">공고 시작일</h5>
						<p lang="date">${list.NOTICESTARTDATE}</p>
					</div>
				</div>
			</div>
			<div class="d-flex justify-content-around"
				style="display: flex; padding-top: 2rem !important;">
				<div>
					<a class="btn btn-secondary" lang="${no}" href="adopt_511_adoptReg" target="_blank"
						style="width: 170px;">입양 예약</a>
				</div>
				<div>
					<a class="btn btn-secondary" href="adopt_512_careReg" target="_blank"
						style="width: 170px;">양육 신청</a>
				</div>
			</div>
		</div>
		<div style="margin: 50px;"></div>
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