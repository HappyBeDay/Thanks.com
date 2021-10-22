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

<!-- Core theme JS-->
<script src="../js/main.js"></script>

<style>
</style>

</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="list">
		<img src="../assets/img/logo.png" class="container-image"
			alt="image">

		<div class="pet-detail-page__info__pet">
			<div class="pet-detail-page__info__pet__group-one">
				<div class="pet-detail-page__info__pet__age">
					<p class="blue-tag">축종</p>
					<p>강아지</p>
				</div>
				<div class="pet-detail-page__info__pet__gender">
					<p class="blue-tag">품종</p>
					<p>요크셔테리어</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__group-one">
				<div class="pet-detail-page__info__pet__age">
					<p class="blue-tag">나이</p>
					<p>3살</p>
				</div>
				<div class="pet-detail-page__info__pet__gender">
					<p class="blue-tag">성별</p>
					<p>여자</p>
				</div>
				<div class="pet-detail-page__info__pet__color">
					<p class="blue-tag">색</p>
					<p>흰색</p>
				</div>
				<div class="pet-detail-page__info__pet__color">
					<p class="blue-tag">체중</p>
					<p>2.5 kg</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__group-one">
				<div class="pet-detail-page__info__pet__age">
					<p class="blue-tag">발견 날짜</p>
					<p>2021년 10월 22일</p>
				</div>
				<div class="pet-detail-page__info__pet__gender">
					<p class="blue-tag">발견 장소</p>
					<p>강남구</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__group-two">
				<div class="pet-detail-page__info__pet__size">
					<p class="blue-tag">보호센터명</p>
					<p>댕스닷컴</p>
				</div>
				<div class="pet-detail-page__info__pet__id">
					<p class="blue-tag">보호소 주소</p>
					<p>강남역</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__group-two">
				<div class="pet-detail-page__info__pet__size">
					<p class="blue-tag">보호 상태</p>
					<p>매우 좋음</p>
				</div>
				<div class="pet-detail-page__info__pet__id">
					<p class="blue-tag">특징</p>
					<p>꼬리가 길다</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__group-two">
				<div class="pet-detail-page__info__pet__size">
					<p class="blue-tag">특이사항</p>
					<p>매우 좋음</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__group-two">
				<div class="pet-detail-page__info__pet__size">
					<p class="blue-tag">공고 시작일</p>
					<p>2021년 10월 22일</p>
				</div>
				<div class="pet-detail-page__info__pet__id">
					<p class="blue-tag">공고 종료일</p>
					<p>2021년 12월 22일</p>
				</div>
			</div>
			<div class="pet-detail-page__info__pet__cta">
				<a class="btn btn-secondary btn__cta__link peacock-blue"
					href="mailto:adopt@azdawgz.org" target="_blank">양육서비스 신청</a>
			</div>
		</div>
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