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
    
	<link rel="stylesheet" href="${contextPath}/resources/css/find_pw_true.css" />
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
          비밀번호 재설정
        </h1>
      </div>
    </div>
    <!--Header Moving Picture End-->

    <main class="container" id="content">
      <div class="find_id_title">비밀번호 재설정 하기</div>
      <form class="pw_box">
        <div class="pw_input_box input_box_design">
          <label for="pw_input">&nbsp;비밀번호&nbsp;&nbsp;</label>
          <input
            type="password"
            name="pw_input"
            id="pw_input"
            class="width_200"
            placeholder="새로운 비밀번호 입력"
            autocomplete="off"
          />
        </div>

        <div class="pw_input_check_box input_box_design">
          <label for="pw_input_check">비밀번호 확인&nbsp;&nbsp;</label>
          <input
            type="password"
            name="pw_input_check"
            id="pw_input_check"
            class="width_200"
            placeholder="비밀번호 확인"
            autocomplete="off"
          />
        </div>

        <div class="pw_button">
          <button type="submit" name="submit_button" id="submit_button">
            <a href="login.jsp">Setting</a>
          </button>
        </div>
      </form>
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