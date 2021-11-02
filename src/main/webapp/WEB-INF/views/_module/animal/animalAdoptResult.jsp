<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	let sido = ${sido};
	let breed = ${breed};
	let animal = ${animal};
</script>
<script src="../js/_module/animal/animalAdoptResult.js"></script>


<div class="album py-5 bg-light">
	<div class="container">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<c:forEach var="list" items="${animal}">
			<div class="col">
				<div class="card shadow-sm">
					<img alt="Thumbnail" src="${list.abPic}" height="300" lang="${list.abanimalCode}" style="cursor: pointer;">
					<!-- 
					<svg class="bd-placeholder-img card-img-top" width="100%"
						height="225" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: Thumbnail"
						preserveAspectRatio="xMidYMid slice" focusable="false"
						>
						
						<title>Placeholder</title>
							<img alt="Thumbnail" src="${animal[0].abThumbPic }">
							<rect width="100%" height="100%" fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">	Thumbnail </text> 
					</svg>
					-->
					<div id="_card" class="card-body">
						<p class="card-text">
						<div>
							<i class="fa fa-paw" aria-hidden="true"></i>
							<span class="data">품종 : ${list.breedCode}</span>
						</div>
						<div class="data">
							<i class="fa fa-venus-mars" aria-hidden="true"></i>
							<span class="data">성별 : ${list.sex}</span>
						</div>
						<div class="data">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
							<span class="data">위치 : ${list.abShelterCode}</span>
						</div>
						</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">입양
									예약</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">양육
									신청</button>
							</div>
							<i onclick="myFunction(this)" class="fa fa-heart"></i>
						</div>
					</div>
				</div>
					
			</div>
				</c:forEach>
		</div>	
	</div>
</div>
