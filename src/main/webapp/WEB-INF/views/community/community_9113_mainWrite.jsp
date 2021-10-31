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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	$("input#submitPost").click(function() {
		//제약사항 
		$("form").submit();
	});
});
</script>
</head>
<c:set var="boardcode" value="${param.boardCode}"></c:set>
<c:set var="boardtitle" value="${param.boardTitle}"></c:set>
<c:set var="boardcontent" value="${param.boardContent}"></c:set>
<c:set var="boardpic" value="${param.boardPic}"></c:set>
<c:set var="boarddate" value="${param.boardDate}"></c:set>

<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="list" id="board_write" style="margin: 200px;">
		<h2>커뮤니티 게시글 작성</h2>
		
		<div id="write_area">
		<form action="community_900_mainBoard" enctype="multipart/form-data" method="post" name="insertFrm">
			
			<table>
			<div class="mb-3">
				<label for="title" style="padding-top: 50px;">제목</label>
				 <input	type="text" class="form-control" name="title" id="boardtitle" placeholder="제목을 입력해 주세요">
			</div>
			
			<div class="mb-3">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" name="content" id="boardcontent" placeholder="내용을 입력해 주세요"></textarea>
					<%-- <input type="hidden" name="id" value="${id}"> --%>
						<%-- <c:choose> --%>
								<%-- <c:when test="${boardTitle eq '' or boardTitle==null}">
									<input type="hidden" value="new" name="boardtitle">
								</c:when> --%>
								<%-- <c:otherwise> --%>
									<input type="hidden" value=${boardCode } name="boardcode">
									<input type="hidden" value=${boardTitle } name="boardtitle">
									<input type="hidden" value=${boardContent } name="boardcontent">
									<input type="hidden" value=${boardPic } name="boardpic">
									<input type="hidden" value=${boardDate } name="boarddate">
								<%-- </c:otherwise> --%>
							<%-- </c:choose> --%>	</div>
			</table>
			
			<div class="mb-3">
				<input type="file" name="file" value="첨부파일" placeholder="첨부파일" />
			</div>
			<div class="mb-3">
				<input id="submitPost" type="submit" value="글 작성" />
			</div>
		</form>
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