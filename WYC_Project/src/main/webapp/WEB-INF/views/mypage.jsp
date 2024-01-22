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
    
    <link rel="stylesheet" href="${contextPath}/resources/css/mypage.css">
</head>
<body>
<%@include file ="header.jsp" %>
    <!--Header Moving Picture Start-->
    <div class="container-fluid header_img py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown">My Page</h1>
        </div>
    </div>
    <!--Header Moving Picture End-->

    <main class="container">
      <div class="content row">
        <div class="member_info_box col-md-6 col-sm-12">
          <div class="member_info_title my_button">회원정보</div>
          <div id="member_id" class="member_box_design">아이디 : gildong12</div>
          <div id="member_pw" class="member_box_design">비밀번호 : ********</div>
          <div id="member_name" class="member_box_design">이름 : 홍길동</div>
          <div id="member_tel" class="member_box_design">전화번호 : 010-1234-5678</div>
          <div id="member_email" class="member_box_design">이메일 : gildong12@gmail</div>
          <div id="member_birth" class="member_box_design">생년월일 : 1994-09-23</div>
          <div id="member_update_button_box">
            <button type="button" id="correction_btn" class="my_button"><a href="mypage_pw_check.jsp">회원정보 수정</a></button>
          </div>
        </div>

        <div class="member_info_box_update col-md-6 col-sm-12 dis_none">
          <div class="member_info_title my_button">회원정보</div>
          <div id="member_id" class="member_box_design">아이디 : gildong12</div>
          <div id="member_pw" class="member_box_design">비밀번호 : <input type="password" name="update_passwd" id="update_passwd" value="gildongpw12"></div>
          <div id="member_name" class="member_box_design">이름 : <input type="text" name="update_name" id="update_name" value="홍길동"></div>
          <div id="member_tel" class="member_box_design">전화번호 : <input type="tel" name="update_tel" id="update_tel" value="010-1234-5678"></div>
          <div id="member_email" class="member_box_design">이메일 : <input type="email" name="update_email" id="update_email" value="gildong12@gmail.com"></div>
          <div id="member_birth" class="member_box_design">주민등록번호  : 000220-3******</div>
          <div id="correction_btn_box">
            <button type="button" id="member_cancel_btn" class="my_button"><a href="#">취소</a></button>
            <button type="button" id="member_save_btn" class="my_button"><a href="#">저장</a></button>
          </div>
        </div>



        <div class="history_box col-md-6 col-sm-12">
          <div class="history_title my_button">홍길동님의 매출, 비용 정보</div>

          <div class="history_salse_box history_box_design default_border">
            <div class="slaes_title"><span class="glyphicon glyphicon-triangle-right"></span> 홍길동님의 매출 예측 정보</div>
            <div class="slaes_list history_list">
              <ul class="slaes_list_ul">
                
                <li class="jangsung_strawberry_salse">장성시 딸기 매출
                  <div id="jangsung_strawberry_salse_detail" class="salse_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 매출</th>
                        <td>20,000,000원</td>
                      </tr>
                    </table>
                  </div>
                </li>

                
                <li onclick="sales_detail(1)">나주시 고추 매출
                  <div id="naju_chili_salse_detail" class="salse_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 매출</th>
                        <td>50,000,000원</td>
                      </tr>
                    </table>
                  </div>
                </li>

                <li onclick="sales_detail(2)">
                  광양시 쌀 매출
                  <div id="gwangyang_rice_salse_detail" class="salse_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 매출</th>
                        <td>30,000,000원</td>
                      </tr>
                    </table>
                  </div>
                </li>
                <li onclick="sales_detail(3)">목포시 포도 매출
                  <div id="mokpo_grape_salse_detail" class="salse_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 매출</th>
                        <td>80,000,000원</td>
                      </tr>
                    </table>
                  </div>
                </li>
              </ul>
            </div>
          </div>


          <div class="history_cost_box history_box_design default_border">
            <div class="cost_title"><span class="glyphicon glyphicon-triangle-right"></span> 홍길동님의 비용 예측 정보</div>
            <div class="cost_list history_list">
              <ul class="cost_list_ul">
                <li onclick="detail_table(0)">장성시 딸기 비용
                  <div id="jangsung_strawberry_cost_detail" class="cost_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 비용</th>
                        <td>5,000,000원</td>
                      </tr>
                    </table>
                </li>
                <li onclick="detail_table(1)">나주시 고추 비용
                  <div id="naju_chili_cost_detail" class="cost_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 비용</th>
                        <td>10,000,000원</td>
                      </tr>
                    </table>
                </li>

                <li onclick="detail_table(2)">목포시 포도 비용
                  <div id="mokpo_grape_cost_detail" class="cost_detail dis_none">
                    <table class="table_border">
                      <tr>
                        <th>연간 비용</th>
                        <td>10,000,000원</td>
                      </tr>
                    </table>
                </li>
              </ul>
            </div>
          </div>
          <div class="profitpage_btn">
            <button id="profitPrediction_page" type="button" class="my_button"><a href="serviceProfit.jsp">수익 분석하기</a></button>
          </div>
        </div>
      </div>
    </main>
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
   	<script src="${contextPath}/resources/js/mypage.js"></script>
</body>
</html>