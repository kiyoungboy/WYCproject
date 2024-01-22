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
    
    <link href="${contextPath}/resources/css/chart.css" rel="stylesheet" />
    <link href="${contextPath}/resources/css/login.css" rel="stylesheet" />
</head>
<body>
<%@include file ="header.jsp" %>
    <!--Header Moving Picture Start-->
    <div
      class="container-fluid header_img py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 animated slideInDown">로그인</h1>
      </div>
    </div>
    <!--Header Moving Picture End-->

    <main class="container" id="content">
      <form class="login_box" action=" ">
        <div class="login_id_box input_box_design">
          <!-- col-sm-offset-3 col-sm-6 col-sm-offset-3 col-xs-12 -->
          <label for="login_id">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
          <input
            type="text"
            name="login_id"
            id="login_id"
            placeholder="ID를 입력 하세요"
            autocomplete="off"
          />
        </div>
        <div class="login_pw_box input_box_design">
          <label for="login_pw">비밀번호&nbsp;</label>
          <input
            type="password"
            name="login_pw"
            id="login_pw"
            placeholder="PW를 입력 하세요"
            autocomplete="off"
          />
        </div>
        <div class="login_button">
          <!-- <label for="submit_button"> -->
          <button type="submit" name="submit_button" id="submit_button">
            <a href="#">로그인</a>
          </button>
          <!-- </label> -->
        </div>
      </form>

      <div class="service_box">
        <div class="find_id border_right padding_10">
          <a href="find_id.jsp">ID찾기</a>
        </div>
        <div class="find_pw border_right padding_10">
          <a href="find_pw.jsp">PW찾기</a>
        </div>
        <div class="create_id padding_10">
          <a href="joinMember.jsp">회원가입</a>
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
    </body>
</html>