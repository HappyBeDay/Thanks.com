<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<link href="<c:url value="/css/login_300.css"/>" rel="stylesheet"/>
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
<title>Thanks.com 아이디 중복확인</title>
</head>
<body onresize="parent.resizeTo(500,500)" onload="parent.resizeTo(500,400) class="text-center">
	<div class="form-signin">
		<form >
			<h3>아이디 중복 확인하기</h3>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" > 
			</div>
		<button class="w-100 btn btn-lg btn-primary" type="submit">Check!</button>
		</form>
	</div>	
</body>	
</html>