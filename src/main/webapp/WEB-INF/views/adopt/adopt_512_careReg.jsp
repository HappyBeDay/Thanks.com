<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset=utf-8 />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta name="theme-color" content="#7952b3">
<title>Thanks.com</title>
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/heroes/">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/checkout/">
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Core theme JS-->
<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script src="../js/main.js"></script>
<style>
</style>
</head>
<body id="page-top">
	<!-- Navigation 1-->
	<jsp:include page="../_module/navibar.jsp"></jsp:include>

	<div class="container col-xl-10 col-xxl-8 px-4 py-5">
		<div class="row align-items-center g-lg-5 py-5">
			<div class="col-lg-7 text-center text-lg-start">
				<h1 class="display-4 fw-bold lh-1 mb-3">μμ‘ μλΉμ€</h1>
				<p class="col-lg-10 fs-4">
					Thanks.comμ μ¬μ§ μκ³  μμνλ λ¬Ένλ₯Ό λ§λ­λλ€.<br> λλ¬Όμ μμνκ³  μΆμ§λ§ μκ°μ΄ μλ λΆλ€μ
					μν΄ μμ‘ μλΉμ€λ₯Ό ν΅ν΄ μΌν°μμ μ§μ  μΌμ΄λ₯Ό ν΄μ€λλ€.<br>

				</p>
			</div>
			<div class="col-md-10 mx-auto col-lg-5">
				<h1 class="mb-3">κ²°μ μ λ³΄</h1>

				<div class="my-3">
					<div class="form-check">
						<input id="credit" name="paymentMethod" type="radio"
							class="form-check-input" checked required> <label
							class="form-check-label" for="credit">μ κΈ°</label>
					</div>
					<div class="form-check">
						<input id="debit" name="paymentMethod" type="radio"
							class="form-check-input" required> <label
							class="form-check-label" for="debit">μΌμ</label>
					</div>
				</div>

				<div class="row gy-3">
					<div class="col-md-6">
						<label for="cc-name" class="form-label">μ μ©μΉ΄λμ¬</label> <input
							type="text" class="form-control" id="cc-name" placeholder=""
							required>
					</div>
					<div class="col-md-6">
						<label for="cc-name" class="form-label">λͺμμλͺ</label> <input
							type="text" class="form-control" id="cc-name" placeholder=""
							required>
						<div class="invalid-feedback">λͺμμλͺ νμ!</div>
					</div>

					<div class="col-md-6">
						<label for="cc-number" class="form-label">μ μ©μΉ΄λλ²νΈ</label> <input
							type="text" class="form-control" id="cc-number" placeholder=""
							required>
						<div class="invalid-feedback">μ μ©μΉ΄λλ²νΈ νμ!</div>
					</div>

					<div class="col-md-3">
						<label for="cc-expiration" class="form-label">μ ν¨κΈ°κ°</label> <input
							type="text" class="form-control" id="cc-expiration"
							placeholder="" required>
						<div class="invalid-feedback">μ ν¨κΈ°κ° νμ!</div>
					</div>

					<div class="col-md-3">
						<label for="cc-cvv" class="form-label">CVV</label> <input
							type="text" class="form-control" id="cc-cvv" placeholder=""
							required>
						<div class="invalid-feedback">CVV λ²νΈ νμ!</div>
					</div>
					<div class="col-md-7">
						<label for="cc-cvv" class="form-label">μλμμΌ/μ¬μμλ±λ‘λ²νΈ</label> <input
							type="text" class="form-control" id="cc-cvv" placeholder=""
							required>
						<div class="invalid-feedback">μλμμΌ/μ¬μμλ±λ‘λ²νΈ νμ!</div>
					</div>
					<div class="col-md-6">
						<label for="cc-cvv" class="form-label">λ§€μ κ²°μ μΌ</label> <input
							type="text" class="form-control" id="cc-cvv" placeholder=""
							required> <small class="text-muted"> μ€μκ° μΉμΈ(κ²°μ )μ΄ μ΄λ£¨μ΄μ§λ©°, μ΅μλΆν° λ§€μ ν΄λΉμΌμ μλκ²°μ  λ©λλ€.</small>
					</div>
					<div class="col-md-6">
						<label for="cc-cvv" class="form-label">κ²°μ κΈμ‘</label> <input
							type="text" class="form-control" id="cc-cvv" placeholder=""
							required>
						<div class="invalid-feedback">κ²°μ κΈμ‘ νμ!</div>
					</div>
				</div>
				<hr class="my-4">
				<button class="w-100 btn btn-primary btn-lg" type="submit">μμ‘
					μ μ²­νκΈ°</button>
			</div>
		</div>
		</div>

		<jsp:include page="../_module/copyright.jsp"></jsp:include>

		<!-- Bootstrap core JS-->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

		<!-- SimpleLightbox plugin JS-->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>

		<script src="../js/mainScreen/mainScreen_100_main.js"></script>
		<script src="form-validation.js"></script>
</body>
</html>