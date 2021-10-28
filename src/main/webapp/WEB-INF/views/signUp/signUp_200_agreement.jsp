<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 약관동의</title>
<link href="<c:url value="/css/signUp_200_agreement.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../js/signUp/signUp_200_agreement.js"></script>
<script src=../_module/common.js></script>
</head>
<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body>
	<form action="" id="joinForm">
		<ul class="join_box">
			<li class="checkBox">
				<ul class="clearfix" style="padding: 0px;">
					<li><h2>회원가입 약관동의</h2></li>
				</ul>
			<li class="checkBox ">
				<ul class="clearfix" style="padding: 0px;">
					<li>이용약관 동의(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="check">
					</li>
				</ul> <textarea lang="../content/agreement_content_01.html"></textarea>
			</li>
			<li class="checkBox ">
				<ul class="clearfix" style="padding: 0px;">
					<li>고유식별정보 수집 및 이용안내(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="check">
					</li>
				</ul> <textarea lang="../content/agreement_content_02.html"></textarea>
			</li>
			<li class="checkBox">
				<ul class="clearfix" style="padding: 0px;">
					<li>개인정보수집,이용동의(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="check">
					</li>
				</ul> <textarea lang="../content/agreement_content_03.html"></textarea>
			</li>
			<li class="checkBox ">
				<ul class="clearfix">
					<li class="checkBtn"><input type="checkbox" name="checkAll"
						style="padding: 0px;"> 모두 선택</li>
				</ul>
			</li>
		</ul>
		<!-- clearfix = 새로고침;; -->
		<ul class="footBtwrap clearfix" style="margin-right: 45px;">
			<li><button class="fpmgBt1">비동의</button></li>
			<li><button class="fpmgBt2">동의</button></li>
		</ul>
	</form>
	<jsp:include page="../_module/copyright.jsp"></jsp:include>
</body>
</html>

