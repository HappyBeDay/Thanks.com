<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav">
				<div class="sb-sidenav-menu-heading">Menu</div>
				<a class="nav-link" href="index.html">
					<div class="sb-nav-link-icon"></div> 회원관리
				</a> 
				<a class="nav-link" href="index.html">
					<div class="sb-nav-link-icon"></div> 유기동물관리
				</a> <a class="nav-link" href="index.html">
					<div class="sb-nav-link-icon"></div> 실종/목격 관리
				</a> <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayouts" aria-expanded="false"
					aria-controls="collapseLayouts">
					<div class="sb-nav-link-icon"></div> 커뮤니티
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayouts"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="layout-board.html">메인 게시판</a> <a
							class="nav-link" href="layout-report.html">문의/신고</a> <a
							class="nav-link" href="layout-care.html">돌봄 서비스</a>
					</nav>
				</div>
				<a class="nav-link" href="index.html">
					<div class="sb-nav-link-icon"></div> 세미나
				</a> <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapsePages" aria-expanded="false"
					aria-controls="collapsePages">
					<div class="sb-nav-link-icon"></div> 양육
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapsePages"
					aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav accordion"
						id="sidenavAccordionPages">
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#pagesCollapseAuth" aria-expanded="false"
							aria-controls="pagesCollapseAuth"> 결제 내역
							<div class="sb-sidenav-collapse-arrow"></div>
						</a> <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#pagesCollapseError" aria-expanded="false"
							aria-controls="pagesCollapseError"> 갤러리
							<div class="sb-sidenav-collapse-arrow"></div>
						</a>
					</nav>
				</div>
				</a> 
				<a class="nav-link" href="index.html">
					<div class="sb-nav-link-icon"></div> 업데이트</a>  
					<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapsePages" aria-expanded="false"
					aria-controls="collapsePages">
					<div class="sb-nav-link-icon">
					</div> 양육
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapsePages"
					aria-labelledby="headingTwo">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#pagesCollapseAuth" aria-expanded="false"
							aria-controls="pagesCollapseAuth"> 결제 내역
							<div class="sb-sidenav-collapse-arrow">
							</div>
						</a>
						<div class="collapse" id="pagesCollapseAuth"
							aria-labelledby="headingOne">
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#pagesCollapseError" aria-expanded="false"
							aria-controls="pagesCollapseError"> 갤러리
							<div class="sb-sidenav-collapse-arrow">
							</div>
						</a>
						<div class="collapse" id="pagesCollapseError"
							aria-labelledby="headingOne">
						</div>
					</nav>
				</div> -->
			</div>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Logged in as:</div>
			Thanks.com
		</div>
	</nav>
</div>