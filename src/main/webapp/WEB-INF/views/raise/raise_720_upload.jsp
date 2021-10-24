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
	
	<?$board_id=$_GET['board_id'];?>
	<div id="board_write">
		<h4>게시글 작성</h4>
		<div id="write_area">
			<form enctype="multipart/form-data"
				action="write_ok.php?board_id=<?echo $board_id;?>" method="post">
				<div id="in_title">
					<textarea name="title" id="utitle" rows="1" cols="55"
						placeholder="제목" maxlength="100" required></textarea>
				</div>

				<div class="wi_line"></div>
				<div id="in_content">
					<textarea name="content" id="ucontent" placeholder="내용" required></textarea>
				</div>

				<input type="file" name="SelectFile" />


				<div class="bt_se">
					<button type="submit">글 작성</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>


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