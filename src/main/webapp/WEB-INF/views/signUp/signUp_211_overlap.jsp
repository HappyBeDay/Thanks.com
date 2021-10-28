<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<title>Thanks.com 아이디 중복확인</title>
<link href="<c:url value="/css/login_300.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src=../_module/common.js></script>
<script>
	let ckId;
	let id;
	window.onload = function() {
		ckId = document.getElementById("ckId");
		id = opener.document.getElementsByClassName("id")[0];
		ckId.value = id.value;
		console.log(ckId);

		$("button").click(function(e) {
			e.preventDefault(e);
			console.log("button click");
			getAjax("idCk", duplicate, 'POST', {
				id : ckId.value
			});
		});
	}

	// true: no duplicate
	function duplicate(value) {
		console.log(value);
		if (value)
			setOpener();
		else
			alert("중복된 아이디입니다.");
	}

	// confirm
	function setOpener() {
		let ckValue = ckId.value;
		let result = confirm("사용가능한 아이디입니다.\n\'" + ckValue + "\'사용하시겠습니까?");
		if (result) {
			id.value = ckValue;
			//id.disabled = true;
			id.readOnly = true;
			window.close();
		}
	}
</script>
</head>
<body>
	<div class="form-signin">
		<form action="">
			<h3>아이디 중복 확인하기</h3>
			<div class="form-floating">
				<input type="text" class="form-control" id="ckId"
					value="${param.id}">
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">Check!</button>
		</form>
	</div>
</body>
</html>