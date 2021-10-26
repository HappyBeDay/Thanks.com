<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>세미나 신청 페이지</title>
		<link href="<c:url value="/css/signUp_210.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
	<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body>
	<form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
		<h2>세미나 신청</h2>
		<div class="textForm">
			<input name="loginId" type="text" class="id" placeholder="Name">	
		</div>
		<div class="textForm">
			<input name="cellphoneNo" type="number" class="cellphoneNo" placeholder="ex)010-1234-5678">
		</div>
		<div class="textForm">
			<input name="email" type="text" class="email" placeholder="you@example.com">
		</div>
		<div class="textForm">
			<input name="birth" type="text" class="birth" placeholder="ex)1994-04-01">
		</div>
		<div class="textForm">
			<input name="address" type="text" class="id" placeholder="ex)울산시 남구 도산로 77번길">
		</div>
	
		<input type="submit" class=" btn-lg btn-primary" value="신청하기" />
		
		<jsp:include page="../_module/copyright.jsp"></jsp:include>
	</form>	
</body>
</html>
