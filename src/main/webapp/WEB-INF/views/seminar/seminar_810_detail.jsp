<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<title>Insert title here</title>

<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />
<link href="../css/features.css" rel="stylesheet">
<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

<body id="page-top">
	<div style="margin: 100px;">
		<h1 class="con" style="margin: 50px;">세미나 내용</h1>
			<section class="article-detail table-common con row"
	style="border: solid silver; border-width: thin; border-radius: 5px;">
	
	<div class="row" style="margin-top: 30px; margin-right: 30px; margin-left: 30px;">
		<span class="col-sm-6" style="font-size: 30px;"> <span><b>제목 :</b></span>
			<span>BTS UN 연설!!</span>
		</span>
	</div>
	<div class="row" style="margin-right: 30px; margin-left: 30px;">
		<span class="col-sm-6"> <span><b>글쓴이 :</b></span> <span>ARMY</span></span> 
		<span class="col-sm-6"> <span><b>조회수 :</b></span> <span>12,040,000</span></span>
	</div>
	<div class="row" style="margin-right: 30px; margin-left: 30px;">
		<span class="col-sm-6"> <span><b>날짜 :</b></span> <span>2020/07/07</span>
		</span> <span class="col-sm-6"> <span><b>좋아요 :</b></span> <span>32,040,000</span>
		</span>
	</div>
		<div class="container" style="margin: 30px;">
		<img src="../assets/img/sampleimg.jpg" class="container-image" alt="image"
			style="width: 300px; height: 300px; display: block; margin-left: auto; 
			margin-right: auto;">
		</div>
		<div>
			<div class="article-body" style="margin: 30px;">
				<div>
				방탄소년단의 universe를 감상하면서 UN연설을 들어보아요이것이 방탄스타일~ 난 좀 쩔어~~
				</div>
			</div>
		</div>
	</section>		
	</div>
</body>
	<jsp:include page="../_module/copyright.jsp"></jsp:include>
</html>