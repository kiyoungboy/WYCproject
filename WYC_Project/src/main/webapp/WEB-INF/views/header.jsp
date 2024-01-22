<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html lang="ko">
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>WYC - Turn to farming</title>
     <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${contextPath}/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Open+Sans:wght@400;500;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/header.css" rel="stylesheet">
    
</head>
<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5">
        <a href="index.jsp" class="navbar-brand d-flex align-items-center">
            <div class="m-0"><img src="${contextPath}/resources/img/logo.png" style="width:16vw;"></div>
        </a>
        <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="recommend" class="nav-item nav-link">추천서비스</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">수익 분석</a>
                    <div class="dropdown-menu bg-light m-0">
<!--                         <a href="revenue1.do" class="dropdown-item">매출 확인(농작물우선)</a> -->
<!--                         <a href="revenue2.do" class="dropdown-item">매출 확인(지역우선)</a> -->
						<div class="dropdown">
							<a href="#" class="dropdown-item dropdown-toggle plusUp" data-bs-toggle="dropdown">1.매출 분석</a>
							<div class="dropdown-menu plus">
								<a href="revenue1" class="dropdown-item">농작물 우선</a>
								<a href="revenue2" class="dropdown-item">지역 우선</a>
							</div>
						</div>
                        <a href="policyList" class="dropdown-item">2.비용 조회</a>
                        <a href="myProfit" class="dropdown-item">3.수익 확인</a>
                    </div>
                </div>
                <a href="servicePolicyCheck" class="nav-item nav-link">지원정책</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">커뮤니티</a>
                    <div class="dropdown-menu bg-light m-0">
<!--                         <a href="serviceEsidence.jsp" class="dropdown-item">농지 & 거주지 현황</a> -->
                        <a href="festival.jsp" class="dropdown-item">지역축제 & 문화행사</a>
                        <a href="success.jsp" class="dropdown-item">귀농 성공사례</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">회원관리</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="login.jsp" class="dropdown-item">로그인</a>
                        <a href="mypage.jsp" class="dropdown-item">마이 페이지</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <script>
		const plusUpLink = document.querySelector('.plusUp');
		const plusMenu = document.querySelector('.plus');
		
		plusUpLink.addEventListener('mouseover', () => {
		  plusMenu.style.display = 'block';
		});
		
		plusUpLink.addEventListener('mouseout', () => {
		  plusMenu.style.display = 'none';
		});
		
		plusMenu.addEventListener('mouseover', () => {
		  plusMenu.style.display = 'block';
		});
		
		plusMenu.addEventListener('mouseout', () => {
		  plusMenu.style.display = 'none';
		});
	</script>
    <!-- Navbar End -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${contextPath}/resources/lib/counterup/counterup.min.js"></script>
    <script src="${contextPath}/resources/lib/parallax/parallax.min.js"></script>
    <script src="${contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
	
    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/main.js"></script>
    </body>
    </html>