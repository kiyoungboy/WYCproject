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
<%@include file="header.jsp" %>

    <!--Header Moving Picture Start-->
    <div
      class="container-fluid header_img py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 animated slideInDown">
          지역축제 & 문화행사
        </h1>
      </div>
    </div>
    <!--Header Moving Picture End-->

    <!-- Event Service Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div
          class="text-center mx-auto wow fadeInUp"
          data-wow-delay="0.1s"
          style="max-width: 500px"
        >
          <p class="section-title bg-white text-center text-primary px-3">
            Local Festival & Cultural Event
          </p>
          <h1 class="mb-5">
            전라남도에서 제공하는<br />다양한 농촌 체험 활동을<br />즐겨보세요.
          </h1>
        </div>
        <div class="row gx-4">
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.1s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="https://ggeutdeul.modoo.at/">
                  <img class="img-event" src="${contextPath}/resources/img/event-1.jpeg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a class="d-block h5" href="https://ggeutdeul.modoo.at/"
                  >섬진강 끝들마을</a
                >
              </div>
            </div>
          </div>
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.3s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="http://www.xn--hq1b37i55ll3as6p.kr/">
                  <img class="img-event" src="${contextPath}/resources/img/event-2.jpg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a class="d-block h5" href="http://www.xn--hq1b37i55ll3as6p.kr/"
                  >완도 신학마을</a
                >
              </div>
            </div>
          </div>
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.5s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="https://ecowg.modoo.at/">
                  <img class="img-event" src="${contextPath}/resources/img/event-3.jpeg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a class="d-block h5" href="https://ecowg.modoo.at/"
                  >에코왕곡마을</a
                >
              </div>
            </div>
          </div>
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.7s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="http://echovill.com/">
                  <img class="img-event" src="${contextPath}/resources/img/event-4.jpg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a class="d-block h5" href="http://echovill.com/"
                  >메아리 창조마을</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Event Service End -->

    <!-- Festival Service Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div
          class="text-center mx-auto wow fadeInUp"
          data-wow-delay="0.1s"
          style="max-width: 500px"
        >
          <p class="section-title bg-white text-center text-primary px-3">
            Local Festival & Cultural Event
          </p>
          <h1 class="mb-5">
            전라남도에서 제공하는 <br />문화행사를 경험해보세요.
          </h1>
        </div>
        <div class="row gx-4">
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.1s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="https://www.gokseong.go.kr/tour/festivity">
                  <img class="img-festival" src="${contextPath}/resources/img/festival-1.jpg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a
                  class="d-block h5"
                  href="https://www.gokseong.go.kr/tour/festivity"
                  >곡성 세계 장미축제</a
                >
                <span class="text-primary me-1">23.05.20 ~ 23.05.29</span>
              </div>
            </div>
          </div>
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.3s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="http://www.bspdanoje.co.kr/">
                  <img class="img-festival" src="${contextPath}/resources/img/festival-2.png" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a class="d-block h5" href="http://www.bspdanoje.co.kr/"
                  >영광 법성포 단오제</a
                >
                <span class="text-primary me-1">23.06.22 ~ 23.06.25</span>
              </div>
            </div>
          </div>
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.5s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="https://www.gokseong.go.kr/tour/festivity/icecream">
                  <img class="img-festival" src="${contextPath}/resources/img/festival-3.jpg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a
                  class="d-block h5"
                  href="https://www.gokseong.go.kr/tour/festivity/icecream"
                  >곡성 아이스크림 페스티벌</a
                >
                <span class="text-primary me-1">23.07.14 ~ 23.07.16</span>
              </div>
            </div>
          </div>
          <div
            class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp"
            data-wow-delay="0.7s"
          >
            <div class="product-item">
              <div class="position-relative">
                <a href="https://festival.jangheung.go.kr/festival">
                  <img class="img-festival" src="${contextPath}/resources/img/festival-4.jpg" alt="" />
                </a>
              </div>
              <div class="text-center p-4">
                <a
                  class="d-block h5"
                  href="https://festival.jangheung.go.kr/festival"
                  >정남진 장흥 물축제</a
                >
                <span class="text-primary me-1">23.07.29 ~ 23.08.06</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Festival Service End -->

<%@include file="footer.jsp"%>
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