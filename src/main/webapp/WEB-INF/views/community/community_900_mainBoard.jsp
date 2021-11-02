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

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
/* function fnGoBoardDetail(listseq){
	  $('#frmSeq').val(listseq);
	  $('#frmList').attr({action : "/board/boardDetail.do"}).submit();
} */	  
$(function() {
	$("tr#a").click(function() {
		/* document.location.href = 'community_900_mainBoard?boardcode=${board.get(0).boardCode}'  */
	 	alert("${board.get(0).boardCode}"); 
	});
});
</script>
</head>
<body id="page-top">
<%-- ${board.get(0).boardCode} --%>
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
	<div class="container" style="margin-top: 100px;">
		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="community_900_mainBoard" class="nav-link px-2 link-secondary"><b>커뮤니티
						게시판</b></a></li>
			<li><a href="community_920_raise" class="nav-link px-2 link-dark"><b>양육
						커뮤니티</b></a></li>
			<li><a href="community_930_care" class="nav-link px-2 link-dark"><b>돌폼
						서비스 신청</b></a></li>
		</ul>
	</div>

	<div class="container" style="margin-top: 70px;">
		<form role="form" method="post" action="community_900_mainBoard">
			<div class="row">
				<table class="table table-striped"
					style="border: 1px solid #dddddd; width: 100%;">
					<thead style="background-color: #fff;">
						<tr style="text-align: center;">
							<th style="text-align: center;">게시글 코드</th>
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center;">작성일</th>
							<th style="text-align: center;">조회수</th>
						</tr>
					</thead>
						<tbody style="background-color: #fff;">
					<c:forEach items="${board}" var="list" >
					 <a href="/community_900_mainBoard?no=${list.boardCode}"></a>
							<tr>
								<td id="boardCode;" style="text-align: center;">${list.boardCode}</td>
								<td style="text-align: left;">${list.boardTitle}</td>
								<td style="text-align: center;">${list.memberCode}</td>
								<td style="text-align: center;">${list.boardDate}</td>
								<td style="text-align: center;">${list.boardHit}</td>
							</tr>			
					</c:forEach>
						</tbody>
				</table>
			</div>
		</form>
		<a href="community_9113_mainWrite" class="btn btn-primary pull-right"
			style="width: 100px; position: relative;">글쓰기</a> <a
			href="community_9112_report" class="btn btn-primary pull-right"
			style="width: 100px; margin-left: 2px;">문의/신고</a>

		<!-- Paging -->
		<jsp:include page="../_module/pagination.jsp"></jsp:include>
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