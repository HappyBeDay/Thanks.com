<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Insert title here</title>
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />
<script src="../js/main.js"></script>
</head>

<body id="page-top">
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="container" style="margin-top: 150px;">
		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="#" class="nav-link px-2 link-secondary"><b>전체 세미나 </b></a></li> 
			<li><a href="#" class="nav-link px-2 link-secondary"><b>| </b></a></li> 
			<li><a href="#" class="nav-link px-2 link-dark"><b>전문가 초청간담회</b></a></li>
		</ul>
	</div>

	<div style="margin-right:300px" >
	<input type="text" style="float:right;" placeholder="검색어 입력">
		<a href=""target=blank><img src="../assets/img/Search_icon.png" style="float:right;" height="40px" width="43px;"></a>
	</div>

	<div class="container" style="margin-top: 70px;">
		<div class="row">
			<table class="table table-striped"
				style="border: 1px solid #dddddd; width: 100%;">
				<thead style="background-color: #adb5bd">
					<tr style="text-align: center;">
						<th style="text-align: center;">번호</th>
						<th style="text-align: center;">세미나명</th>
						<th style="text-align: center;">강사</th>
						<th style="text-align: center;">게시일</th>
						<th style="text-align: center;">조회수</th>
						<th style="text-align: center;">신청</th>					
					</tr>
				</thead>
				<tbody style="background-color: #eeeeee">
					<tr>
						<td style="text-align: center;">1</td>
						<td style="text-align: left;">방탄은 처음이지?</td>
						<td style="text-align: center;">BTS</td>
						<td style="text-align: center;">2020-06-17</td>
						<td style="text-align: center;">3억뷰</tds>
						<td style="text-align: center;">
						<input style="text-align: center;" type="button" class=" btn btn-primary" value="신청"></td>
					</tr>
				</tbody>
				<tbody style="background-color: #eeeeee">
					<tr>
						<td style="text-align: center;">2</td>
						<td style="text-align: left;">난 흥탄소년단~</td>
						<td style="text-align: center;">BTS</td>
						<td style="text-align: center;">2020-06-17</td>
						<td style="text-align: center;">1억 뷰</tds>
						<td style="text-align: center;">
						<input style="text-align: center;" type="button" class=" btn btn-primary" value="신청"></td>
					</tr>
				</tbody>
			</table>
			<div>
				<a href="../_module/write" class="btn btn-primary pull-right" style="width: 100px; position: relative;">글쓰기</a>
				<a href="community_9112_report" class="btn btn-primary pull-right" style="width: 100px;">문의/신고</a>
			</div>
				<jsp:include page="../_module/pagination.jsp"></jsp:include>
		</div>

	</div>

	<!-- Footer-->
	<jsp:include page="../_module/copyright.jsp"></jsp:include>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
</body>
</html>