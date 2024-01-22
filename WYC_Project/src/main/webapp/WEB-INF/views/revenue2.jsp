<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html charset=utf-8" />
    <title>WYC - Turn to farming</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="${contextPath}/resources/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Open+Sans:wght@400;500;600&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link href="${contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet" />
    <link href="${contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="${contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" />
    <link href="${contextPath}/resources/css/header.css" rel="stylesheet" />
    <!-- mine -->
    <link rel="stylesheet" href="${contextPath}/resources/css/revenue2.css" />
    <link href="${contextPath}/resources/css/chart2.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<%@include file ="header.jsp" %>
	
	<!--Header Moving Picture Start-->
    <div
      class="container-fluid header_img py-5 mb-5"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 slideInDown">
          매출확인(지역 우선)
        </h1>
      </div>
    </div>
    <!--Header Moving Picture End-->

    <div class="container-fluid wyc-background gutter_0">
      <div class="row revenue2 gutter_0">
        <div
          class="text-center mx-auto pb-4 wow fadeInUp sec1"
          data-wow-delay="0.3s"
          style="max-width: 500px"
        >
          <p class="section-title bg-white text-center text-primary px-3">
            매출 확인
          </p>
          <h1 class="mb-5">
            선호하는 지역의<br />추천 농작물과 매출을<br />확인해보세요.
          </h1>
        </div>
        <!--Select Area of Map Start-->
        <div
          class="col-md-12 col-sm-12 col-xs-12 wyc-map wow fadeInUp 1seq"
          data-wow-delay="0.3s"
        >
          <div class="wyc-area">
            <img src="${contextPath}/resources/img/target_map3.png" alt="전라남도" class="wyc-mapimg" />
            <div class="wyc-boseong wyc_area_button">
              <img src="${contextPath}/resources/img/boseong.png" alt="보성" />
            </div>
            <div class="wyc-damyang wyc_area_button">
              <img src="${contextPath}/resources/img/damyang.png" alt="담양" />
            </div>
            <div class="wyc-gangjin wyc_area_button">
              <img src="${contextPath}/resources/img/gangjin.png" alt="강진" />
            </div>
            <div class="wyc-goheung wyc_area_button">
              <img src="${contextPath}/resources/img/goheung.png" alt="고흥" />
            </div>
            <div class="wyc-gokseong wyc_area_button">
              <img src="${contextPath}/resources/img/gokseong.png" alt="곡성" />
            </div>
            <div class="wyc-gurye wyc_area_button">
              <img src="${contextPath}/resources/img/gurye.png" alt="구례" />
            </div>
            <div class="wyc-gwangyang wyc_area_button">
              <img src="${contextPath}/resources/img/gwangyang.png" alt="광양" />
            </div>
            <div class="wyc-haenam wyc_area_button">
              <img src="${contextPath}/resources/img/haenam.png" alt="해남" />
            </div>
            <div class="wyc-hampyeng wyc_area_button">
              <img src="${contextPath}/resources/img/hampyeong.png" alt="함평" />
            </div>
            <div class="wyc-hwasun wyc_area_button">
              <img src="${contextPath}/resources/img/hwasun.png" alt="화순" />
            </div>
            <div class="wyc-jangheung wyc_area_button">
              <img src="${contextPath}/resources/img/jangheung.png" alt="장흥" />
            </div>
            <div class="wyc-jangseung wyc_area_button">
              <img src="${contextPath}/resources/img/jangseong.png" alt="장성" />
            </div>
            <div class="wyc-jindo wyc_area_button">
            	<img src="${contextPath}/resources/img/jindo.png" alt="진도" />
            </div>
            <div class="wyc-mokpo wyc_area_button">
            	<img src="${contextPath}/resources/img/mokpo.png" alt="목포" />
            </div>
            <div class="wyc-muan wyc_area_button">
           		<img src="${contextPath}/resources/img/muan.png" alt="무안" />
            </div>
            <div class="wyc-naju wyc_area_button">
            	<img src="${contextPath}/resources/img/naju.png" alt="나주" />
            </div>
            <div class="wyc-sinan wyc_area_button">
            	<img src="${contextPath}/resources/img/sinan.png" alt="신안" />
            </div>
            <div class="wyc-suncheon wyc_area_button">
             	<img src="${contextPath}/resources/img/suncheon.png" alt="순천" />
            </div>
            <div class="wyc-wando wyc_area_button">
            	<img src="${contextPath}/resources/img/wando.png" alt="완도" />
            </div>
            <div class="wyc-yeongam wyc_area_button">
            	<img src="${contextPath}/resources/img/yeongam.png" alt="영암" />
            </div>
            <div class="wyc-yeonggwang wyc_area_button">
            	<img src="${contextPath}/resources/img/yeonggwang.png" alt="영광" />
            </div>
            <div class="wyc-yeosu wyc_area_button">
            	<img src="${contextPath}/resources/img/yeosu.png" alt="여수" />
            </div>
          </div>
        </div>
        <!--Select Area of Map End-->
        
        
        <!--Select Crop of Area Start-->
        <div
          class="text-center mx-auto pb-4 wow fadeInUp sec2"
          data-wow-delay="0.3s"
          style="max-width: 500px"
        >
          <h1 class="select_list_title">농작물을 선택해 주세요.</h1>
        </div>
        
        <div
          class="col-md-12 col-sm-12 col-xs-12 wyc-select-crop wow bounceInLeft"
        >
          <div class="wyc-select-crop-title">
            <h3><b class="wyc_table_title"></b></h3>
          </div>
          <div class="wyc-table">
          
			<!-- 추천 농작물 3개 리스트 자리 -->
          
          </div>
        </div>
        <!--Select Crop of Area End-->
        
        
        <!--View Crop's InfoUp Selected Start-->
        <div
          class="text-center mx-auto wow fadeInUp sec3"
          data-wow-delay="0.3s"
          style="max-width: 500px"
        >
          <h1 class="">농작물 정보를 확인하세요.</h1>
        </div>
      
        <div
          class="offset-md-1 col-md-10 col-sm-12 col-xs-12 wyc-info-crop wow bounceInLeft"
        >
          <div class="crop-info-up">
          
		<!--     농작물 세부 정보 프로필 자리	 -->
		
          </div>
          <!--View Crop's InfoUp Selected end-->
          
          
          <!--View Crop's InfoDown Selected Start-->
          <div class="crop-info-down">
            <h3>농작물 경매단가 & 생산량</h3>
            
            <div class="info-down-crop row">
              <div class="col-md-6 col-sm-12 col-xs-12" id="chartContainer_price">
                <canvas id="chart_price" class=""></canvas>
              </div>
              <div class="col-md-6 col-sm-12 col-xs-12" id="chartContainer_yield">
                <canvas id="chart_yield" class=""></canvas>
              </div>
            </div>
          </div>
        </div>
       </div>
        <!--View Crop's InfoDown Selected end-->
        
        
        
        
      <div class="wyc-btn-box">
        <div id="total_cost" class="border_default">
          <div class="total_cost_inner">
            <div class="wyc-reset">
<!--             확인하기 -->
              <button class="total_cost_submit2">다시선택</button>
            </div>
            <div class="wyc-submit">
              <button type="button" class="total_cost_submit2" data-toggle="modal" data-target=".bs-example-modal-lg">매출확인</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
<!--     ------------------------------------------------------------------------------------------------ -->
    <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">        
        <h6 class="modal-title" id="myModalLabel">매출 분석</h6>
      </div>
      <div class="modal-body">
        <div class="container-xxl">
              <div class="text-center mx-auto wow fadeInUp" style="visibility: none;" data-wow-delay="0.3s">
                  <div class="cost_title"><span class="cost_sigungu"></span><span> </span><span class="cost_crop"></span>의 내년 예상 매출은 <span class=cost_total></span>원 입니다</div>
                </div>             
<!--               농작물 매출                          -->
           	  <div class="row col-lg-12 col-sm-12 col-md-12 col-xs-12" id="chartContainer">
                 <canvas class="" id="mychart"></canvas>              
              </div>

            <div class="modal-footer">
            <form action="policyList">
	            <input type="hidden" class="wycId" name="wycId" value="testId2">
	            <input type="hidden" class="selectCrop" name="flexRadioDefault" value="">
	            <input type="hidden" class="selectCropKor" name="selectCropKor" value="">
	            <input type="hidden" class="selectAreaKor" name="selectAreaKor" value="">
            	<input type="hidden" class="selectArea" name="select_area_radio_name" value="">
	            <input type="hidden" class="salesResult" name="salesResult" value="">
	            <input type="hidden" name="revenue2" value="revenue2.do">
            	<button type="submit" class="btn btn-default btn-sm submit_cost">저장</button>
            </form>

              <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
      </div>
      </div>
      </div>
    
    
    
<%@include file="footer.jsp"%>

    <!-- <script src="http:/pjax.googleapis.compjax/libs/jquery/1.11.2/jquery.min/js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.js"></script> -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${contextPath}/resources/lib/counterup/counterup.min.js"></script>
    <script src="${contextPath}/resources/lib/parallax/parallax.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
    
    <script src="${contextPath}/resources/js/revenue2.js"></script>
<!--     <script src="../js/chart.js"></script> -->
    <script src="${contextPath}/resources/js/main.js"></script>

<!--     <script> -->
<!-- //       new WOW().init(); -->
<!--     </script> -->
</body>
</html>