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
    
    <link rel="stylesheet" href="${contextPath}/resources/css/servicepolicyCheckpage.css" />
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
          정부지원 정책들
        </h1>
      </div>
    </div>

    <div
      class="text-center mx-auto pb-4 wow fadeInUp"
      data-wow-delay="0.3s"
      style="max-width: 500px"
    >
      <p class="section-title bg-white text-center text-primary px-3">
        정부지원 정책
      </p>
      <h1 class="mb-5">전라남도 정부지원 정책을<br />검색해보세요.</h1>
    </div>
    <!-- Page Header End -->

    <!-- Gallery Start -->
    <main class="container wow fadeInUp" data-wow-delay="0.3s">
      <form class="search_box">
        <h1 class="policy_large_title">지원 정책 검색</h1>
        <div class="search_box_inner">
          <div class="select_area">
            <select
              id="select_si_do"
              name="select_si_do"
              class="xs_font"
              onchange=""
            >
              <option value="">시도 선택</option>
              <option value="">전라남도</option>
              <option value="">전라북도</option>
            </select>
            <select class="select_sigungu xs_font" id="select_default">
              <option value="">시도 선택</option>
            </select>
            <select
              class="display_hide select_sigungu xs_font"
              id="select_si_gun_gu_junlanamdo"
            >
              <option value="">시군구 선택</option>
              <option value="">광양시</option>
              <option value="">나주시</option>
              <option value="">목포시</option>
              <option value="">강진군</option>
            </select>
            <select
              class="display_hide select_sigungu xs_font"
              id="select_si_gun_gu_junlabukdo"
            >
              <option value>시군구 선택</option>
              <option value="">익산시</option>
              <option value="">군산시</option>
              <option value="">완주군</option>
              <option value="">전주시</option>
            </select>
          </div>

          <div class="search_text_box">
            <input type="text" id="search_text" placeholder="사업명 입력" />
          </div>

          <div class="search_submit_box">
            <button type="button" id="search_button" onclick="total()">
              검색
            </button>
          </div>
        </div>
      </form>

      <div class="policy_box">
        <div class="policy_info_title_box">
          <h2 class="policy_small_title">지자체별 지원 정책</h2>
          <span class="policy_count">총 <span class="row_count"></span>건</span>
        </div>
        <div class="policy_list_box">
          <div class="policy_list">
            <table class="policy_table table-hover">
              <colgroup>
                <col style="width: 8%" />
                <col style="width: 11%" />
                <col style="width: 11%" />
                <col style="width: 54%" />
                <col style="width: 16%" />
              </colgroup>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>시도</th>
                  <th>시군구</th>
                  <th>세부사업명</th>
                  <th>자세히보기</th>
                </tr>
              </thead>
              <tbody>
                <tr class="policy_tr">
                  <td>8</td>
                  <td class="policy_sido">전라남도</td>
                  <td class="policy_sigungu">나주시</td>
                  <td class="policy_title_name">청년후계농 지원 정책</td>
                  <td>
                    <a href="#" class="policy_detail"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>7</td>
                  <td class="policy_sido">전라남도</td>
                  <td class="policy_sigungu">나주시</td>
                  <td class="policy_title_name">농업후계농 지원 정책</td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>6</td>
                  <td class="policy_sido">전라남도</td>
                  <td class="policy_sigungu">목포시</td>
                  <td class="policy_title_name">
                    2023년 귀농인 정착 농업시설 지원 사업 추가 모집
                  </td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>5</td>
                  <td class="policy_sido">전라북도</td>
                  <td class="policy_sigungu">군산시</td>
                  <td class="policy_title_name">
                    2023년 귀농인 정착 농업시설 지원 사업 추가 모집
                  </td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>4</td>
                  <td class="policy_sido">전라북도</td>
                  <td class="policy_sigungu">익산시</td>
                  <td class="policy_title_name">
                    귀농인 주택비 지원 사업 추가 모집
                  </td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>3</td>
                  <td class="policy_sido">전라북도</td>
                  <td class="policy_sigungu">익산시</td>
                  <td class="policy_title_name">수리비 지원 사업 추가 모집</td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>2</td>
                  <td class="policy_sido">전라남도</td>
                  <td class="policy_sigungu">목포시</td>
                  <td class="policy_title_name">주택 임대 지원</td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <tr class="policy_tr">
                  <td>1</td>
                  <td class="policy_sido">전라북도</td>
                  <td class="policy_sigungu">전주시</td>
                  <td class="policy_title_name">주택 수리비 지원 사업</td>
                  <td>
                    <a
                      href="#"
                      class="policy_detail"
                      onclick="policy_detail_modal()"
                      ><img src="${contextPath}/resources/img/Magnifier.png" />자세히보기</a
                    >
                  </td>
                </tr>
                <!-- 정책 가져와서 tr생성하기 -->
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <!-- -------- -->
      <!-- <div class="policy_box2">
          <div class="policy_info_title_box">
            <h2 class="policy_small_title">지자체별 지원 정책</h2>
            <span class="policy_count">총 <span>23</span>건</span>
          </div>
          <div class="policy_list_box2">
            <div class="policy_list2">
              <table class="policy_table2 table-hover">
                <colgroup>
                  <col style="width: 8%" />
                  <col style="width: 11%" />
                  <col style="width: 11%" />
                  <col style="width: 54%" />
                  <col style="width: 16%" />
                </colgroup>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>시도</th>
                    <th>시군구</th>
                    <th>세부사업명</th>
                    <th>자세히보기</th>
                  </tr>
                </thead>
                <tbody id="tableBody2">
                </tbody>
              </table>
            </div>
          </div>
        </div> -->

      <!-- <div class="pagination">
          <button id="prevPage">이전</button>
          <div id="pageButtons">
            <button class="pageButton">1</button>
            <button class="pageButton">2</button>
            <button class="pageButton">3</button>
          </div>
          <button id="nextPage">다음</button>
        </div> -->

      <!-- ----- -->
    </main>

    <div id="modal_box">
      <div id="modal_contents">
        <button id="modal_close">&times;</button>
        <h1 id="modal_title">정책 세부 내역</h1>
        <div id="modal_desc">
          <table class="policy_modal_table">
            <tr>
              <th>지원 대상 및 자격조건</th>
              <td>만 40세 미만 청년 농업인</td>
            </tr>
            <tr>
              <th>사업내용</th>
              <td>영농정착지원금 지원</td>
            </tr>
            <tr>
              <th>지원 조건</th>
              <td>독렵경영 0~3년차 차등 지원</td>
            </tr>
            <tr>
              <th>증빙서류</th>
              <td>신청서, 사업계획서,교육실적 등</td>
            </tr>
            <tr>
              <th>사업량</th>
              <td>예산배정 한도 내</td>
            </tr>
            <tr>
              <th>접수 및 문의</th>
              <td>농정과</td>
            </tr>
          </table>
        </div>
      </div>
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
    
        <script src="${contextPath}/resources/js/servicepolicyCheckpage.js"></script>
</body>
</html>