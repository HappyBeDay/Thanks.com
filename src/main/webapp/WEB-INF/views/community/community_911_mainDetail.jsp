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

	<div style="margin: 100px;">
		<h1 class="con" style="margin: 50px;">커뮤니티 게시글 상세</h1>
		<section class="article-detail table-common con row"
			style="border: solid silver; border-width: thin; border-radius: 5px;">
			<div class="row"
				style="text-align: right; display: inline-block; margin-top: 10px;">
				<a href="community_9113_mainWrite" class="btn btn-primary"
					style="width: 100px; position: relative;">수정</a> <a
					href="community_9113_mainWrite" class="btn btn-primary"
					style="width: 100px; position: relative;">삭제</a> <a
					href="community_9111_mainReply" class="btn btn-primary"
					style="width: 100px; position: relative;">답글</a>
			</div>
			<div class="row"
				style="margin-top: 10px; margin-right: 30px; margin-left: 30px;">
				<span class="col-sm-6" style="font-size: 30px;"> <span><b>제목</b></span>
					<span>너무 귀여운 강아지!</span>
				</span>
			</div>
			<div class="row" style="margin-right: 30px; margin-left: 30px;">
				<span class="col-sm-6"> <span><b>글쓴이</b></span> <span>내용2_2</span>
				</span> <span class="col-sm-6"> <span><b>조회</b></span> <span>내용3_2</span>
				</span>
			</div>
			<div class="row" style="margin-right: 30px; margin-left: 30px;">
				<span class="col-sm-6"> <span><b>날짜</b></span> <span>내용4_2</span>
				</span> <span class="col-sm-6"> <span><b>좋아요</b></span> <span>내용5_2</span>
				</span>
			</div>
			<div class="container" style="margin: 30px;">
				<img src="../assets/img/sampleimg.jpg" class="container-image"
					alt="image"
					style="width: 300px; height: 300px; display: block; margin-left: auto; margin-right: auto;">
			</div>
			<div>
				<div class="article-body" style="margin: 30px;">
					<div>Lorem ipsum, dolor sit amet consectetur adipisicing
						elit. Sunt deleniti repellat aliquam quis labore est error iste
						obcaecati laborum illo? Distinctio dolorem quis at assumenda!
						Perferendis, libero earum! Ducimus, ratione!</div>
				</div>
			</div>
			<a href="community_9113_mainWrite" class="btn btn-primary"
				style="width: 100px; position: relative; margin-left: 650px; margin-bottom: 50px;">좋아요</a>
		</section>
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