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
    
    <link rel="stylesheet" href="${contextPath}/resources/css/serviceEsidence_detail.css" />
</head>
<body>
<%@include file ="header.jsp" %>
    <!-- Page Header Start -->
    <div
      class="container-fluid header_img py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 animated slideInDown">
          농지&거주지 상세 정보
        </h1>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
      <main class="container">
        <div
          class="text-center mx-auto pb-4 wow fadeInUp"
          data-wow-delay="0.1s"
          style="max-width: 500px"
        >
          <p class="section-title bg-white text-center text-primary px-3">
            Our Services
          </p>
          <h1 class="mb-5 sub_title">
            농지&거주지 상세정보를<br />확인 해보세요!
          </h1>
        </div>
        <h1 class="esidence_small_title wow fadeInUp" data-wow-delay="0.5s">
          농지 및 거주지 상세 정보
        </h1>
        <div class="content wow fadeInUp" data-wow-delay="0.5s">
          <!-- <div class="logo_img_box"><a href="esidence.jsp"><img class="logo_img" src="${contextPath}/resources/img/home.png" alt="농지 및 거주지 페이지"></a>
                  <div style="font-size: 10px;">
                    돌아가기
                  </div>
                </div> -->
          <div class="farmland_detail_list_box">
            <div class="farmland_detail_list">
              <table class="farmland_detail_table">
                <colgroup>
                  <col style="width: 25%" />
                  <col style="width: 45%" />
                  <col style="width: 13%" />
                  <col style="width: 17%" />
                </colgroup>
                <thead>
                  <tr>
                    <th style="background-color: #80b276" colspan="4">
                      세부내역
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>용지 종류</th>
                    <td colspan="3">주택/농지</td>
                  </tr>
                  <tr>
                    <th>공부 지목</th>
                    <td>대</td>
                    <th>실지목</th>
                    <td>대</td>
                  </tr>
                  <tr>
                    <th>판매 구분</th>
                    <td>전라남도 무안군 청계면 월선리 695-1</td>
                    <th>매매/임대가</th>
                    <td>180.000.000원</td>
                  </tr>
                  <tr>
                    <th>판매자 이름</th>
                    <td>홍길동</td>
                    <th>판매자 연락처</th>
                    <td>010-1234-5678</td>
                  </tr>
                  <tr>
                    <th>담당자 이름(부서)</th>
                    <td>김길동</td>
                    <th>담당자 연락처</th>
                    <td>02-123-456</td>
                  </tr>
                  <tr>
                    <th>진행 현황</th>
                    <td>진행중</td>
                    <th>등록일</th>
                    <td>2023-03-16</td>
                  </tr>
                  <tr>
                    <th>특이사항</th>
                    <td colspan="3">없음</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <div id="carousel_box" class="col-xs-12">
            <div class="arrow" id="carousel_left">&lang;</div>
            <div class="arrow" id="carousel_right">&rang;</div>
          </div>
          <div class="farmland_map col-xs-12">
            <img src="${contextPath}/resources/img/mapex.PNG" class="farmland_map_img" alt="지도 설정" />
          </div>
        </div>
      </main>
    </div>
    <!-- Service End -->
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
    <script src="${contextPath}/resources/js/serviceEsidence_detail.js"></script>
    <script src="${contextPath}/resources/js/choice_map.js"></script>
    </body>
</html>