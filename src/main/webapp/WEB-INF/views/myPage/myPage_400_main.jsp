<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
  <head>
    <title>My Page</title>
		<link href="<c:url value="/css/myPage_400.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/css/main.css"/>" rel="stylesheet"/>
	<script src="../js/main.js"></script>
</head>
	<jsp:include page="../_module/navibar.jsp"></jsp:include>
<body>
<div class="container top-empty">
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
      <h1 class="display-4 fw-normal">MyPage</h1>
   </div>
  <div>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h2 class="my-0 fw-normal">Member Information</h2>
          </div>
          <div class="card-body">
            <h3 class="card-title pricing-card-title">Information Modify</h3>
            <ul class="list-unstyled mt-3 mb-4">
              <li>information</li>
              <li>Password</li>
              <li>Adress</li>
              <li>Email</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary" 
            onClick="location.href='myPage_410_personalInfo'">Go to Information</button>
          </div>
        </div>
      </div>
        
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h2 class="my-0 fw-normal">Chatting Room</h2>
          </div>
          <div class="card-body">
            <h2 class="card-title pricing-card-title">Chatting Information</h2>
            <ul class="list-unstyled mt-3 mb-4">
              <li>Chatting List</li>
              <li>Chatting History</li>
              <li>Send a DM</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary"
            onClick="location.href='myPage_420_chat'">Go to Chatting Room</button>
          </div>
        </div>
      </div>
      
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm border-primary">
          <div class="card-header py-3 text-white bg-primary border-primary">
            <h2 class="my-0 fw-normal">Activity History</h2>
          </div>
          <div class="card-body">
            <h2 class="card-title pricing-card-title">Active Information</h2>
            <ul class="list-unstyled mt-3 mb-4">
              <li>Send Like Animal</li>
              <li>Adoption Animal List</li>
              <li>Parenting Animal List</li>
              <li>board List</li>
              <li>Missing, Witness List</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary">Go to Active History</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>    
  </body>
  <jsp:include page="../_module/copyright.jsp"></jsp:include>
</html>
