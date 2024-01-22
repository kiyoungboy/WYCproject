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
    
    <link rel="stylesheet" href="${contextPath}/resources/css/serviceEsidence.css" />
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
          농지 & 거주지 현황
        </h1>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
      <div
        class="text-center mx-auto pb-4 wow fadeInUp"
        data-wow-delay="0.1s"
        style="max-width: 500px"
      >
        <p class="section-title bg-white text-center text-primary px-3">
          농지 & 거주지 현황
        </p>
        <h1 class="mb-5">농지 & 거주지 현황을<br />검색해보세요.</h1>
      </div>

      <main class="container wow fadeInUp" data-wow-delay="0.3s">
        <div class="search_box">
          <h1 class="esidence_small_title">농지/거주지 검색</h1>
          <div class="search_box_inner border_default">
            <div class="col-sm-8 col-xs-8 select_area">
              <select
                id="select_si_do"
                name="select_si_do"
                class="col-sm-5 col-xs-6"
                onchange=""
              >
                <option value>시도 선택</option>
                <option value="">전라남도</option>
                <option value="">전라북도</option>
              </select>
              <select
                class="col-sm-5 col-xs-6 select_sigungu"
                id="select_default"
              >
                <option value>시군구 선택</option>
              </select>
              <select
                class="col-sm-5 col-xs-6 display_hide select_sigungu"
                id="select_si_gun_gu_junlanamdo"
              >
                <option value="">시군구 선택</option>
                <option value="">광양시</option>
                <option value="">나주시</option>
                <option value="">목포시</option>
                <option value="">무안군</option>
              </select>
              <select
                class="display_hide select_sigungu col-sm-5 col-xs-6"
                id="select_si_gun_gu_junlabukdo"
              >
                <option value>시군구 선택</option>
                <option value="">익산시</option>
                <option value="">군산시</option>
                <option value="">완주군</option>
                <option value="">전주시</option>
              </select>
            </div>

            <!-- <div class="search_text_box">
                    <input onsubmit="filter()" type="text" id="value" placeholder="사업명을 입력 하세요">
                    <input
                      type="text"
                      id="search_text"
                      placeholder="사업명을 입력 하세요"
                    />
                    <input type="text" name="search_text" id="search_text" placeholder="사업명을 입력 하세요">
                  </div> -->

            <div class="col-sm-4 col-xs-4 search_submit_box">
              <!-- <button type="submit" id="search_button" onclick="select_sigungu_fun(); select_sido_fun(); select_filter()">검색</button> -->
              <button
                type="button"
                id="search_button"
                class="offset-sm-4 col-sm-8"
                onclick="total()"
              >
                검색
              </button>
            </div>
          </div>
        </div>

        <div class="farmland_info_box">
          <div class="farmland_info_title_box">
            <h2 class="farmland_info_title">지역별 농지/거구지 현황</h2>
            <span class="farmland_info_count"
              >총 <span class="row_count">23</span>건</span
            >
          </div>

          <div class="farmland_info_list_box">
            <div class="farmland_info_list">
              <table class="farmland_info_table table-hover">
                <colgroup>
                  <col style="width: 12%" />
                  <col style="width: 48%" />
                  <col style="width: 9%" />
                  <col style="width: 9%" />
                  <col style="width: 22%" />
                </colgroup>
                <thead>
                  <tr>
                    <th>용지 종류</th>
                    <th>주소</th>
                    <th>면적</th>
                    <th>지목</th>
                    <th>매매/임대가</th>
                  </tr>
                </thead>
                <tbody id="tableBody">
                  <!-- Table rows will be dynamically added here -->
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- <div id="pagination" class="pagination"></div> -->
        <div id="pagination" class="pagination">
          <a href="javascript:void(0);" id="prevButton">이전</a>
          <!-- Pagination links will be dynamically added here -->
          <a href="javascript:void(0);" id="nextButton">다음</a>
        </div>
      </main>
    </div>
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
    <script src="${contextPath}/resources/js/serviceEsidence.js"></script>
    </body>
</html>