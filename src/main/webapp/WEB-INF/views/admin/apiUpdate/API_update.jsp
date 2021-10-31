<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/admin_styles.css"/>"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../../_module/adminNavbar.jsp"></jsp:include>
	<div id="layoutSidenav">
		<jsp:include page="../../_module/adminMenu.jsp"></jsp:include>
		<div id="layoutSidenav_content">
			<div class="row">
				<h2>Update</h2>
				<button style="width: 100px">Sido</button>
				<button style="width: 100px">Sigungu</button>
				<button style="width: 100px">Shelter</button>
				<button style="width: 100px">Breed</button>
				<button style="width: 100px">Abandoned Animal</button>
			</div>
</body>
</html>