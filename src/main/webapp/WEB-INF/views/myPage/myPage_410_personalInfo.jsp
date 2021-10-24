<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
   <title>Information</title>

		<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet"/>
    	<link href="<c:url value="/resources/css/myPage410.css"/>" rel="stylesheet"/>
    <script src="../js/main.js"></script>   
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body>
<div class="container" style="margin-top: 100px;">
  <div>
    <div class="py-5 text-center">
   		<h3>Member Information</h3>
    </div>
    
      <div class="h3">
        <form class = "margin-plus">
          <div class="row">
            <div>
              <label for="Name" class="form-label">Password</label>
              <input type="text" class="form-control" id="firstName" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="UserId" class="form-label">Password check</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="username" placeholder="Username" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="CP" class="form-label">C.P</label>
              <input type="text" class="form-control" id="address2" placeholder="010-1234-4567">
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
          </div>
          <hr class="my-4">
          <button class="w-100 btn btn-primary btn-lg" type="submit">Modify</button>
        </form>
      </div>
    </div>
  </div>
  <footer class="text-muted text-center text-small">
     <jsp:include page="../_module/copyright.jsp"></jsp:include>
      <a href="#">회원 탈퇴</a>
  </footer>
</html>
