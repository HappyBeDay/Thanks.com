<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en" class="h-100">
	<head>
	 <title>Thanks.com email idVerify</title>
		<link href="<c:url value="/css/login_311.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/css/main.css"/>" rel="stylesheet"/>
</head>

<body onresize="parent.resizeTo(500,500)" onload="parent.resizeTo(500,400)" 
	class="d-flex h-100 text-center text-white bg-dark">
	<div class="cover-container d-flex w-100 h-100 p-3 flex-column">
		<div>
			 <img src="../assets/img/Thanks.com_logo.png">
			<p class="lead">이메일 인증이 완료되었습니다 .
				<div class="lead">해당 <b>메일로 이동</b>하여 <b>비밀번호를 재설정</b>해주시기 바랍니다.</div>
			<p class="lead">
				<a href="#" class="form-bottom btn btn-lg btn-primary ">확인</a>
			</p>
		</div>
	</div>
</body>
</html>
