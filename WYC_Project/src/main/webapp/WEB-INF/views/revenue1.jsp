<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%-- <jsp:useBean id="list" class="com.farmWYC.dto.FarmCropAreaDto"></jsp:useBean> --%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
    <link href="${contextPath}/resources/css/revenueChart.css" rel="stylesheet">

<!--     <script src="../${contextPath}/resources/lib/lightbox/js/chart.js"></script> -->
    <!-- Template Stylesheet -->
    <link href="${contextPath}/resources/css/revenue1.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/header.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    

</head>
<body>
<%@include file ="header.jsp" %>

    <!-- Page Header Start -->
    <div class="container-fluid header_img py-5 mb-5" data-wow-delay="0.1s">
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 slideInDown">매출확인(농작물 우선)</h1>
      </div>
    </div>
    
    <!-- Page Header End -->


    <!-- Service Start -->
    <form  action="policyList" name="formR1">
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto pb-4 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="section-title bg-white text-center text-primary px-3">매출 확인</p>
                <h1 class="mb-5">선호하는 농작물의<br>재배가능지역과 매출을<br>확인해보세요.</h1>
            </div>
            
            <div class="row gy-5 gx-3 inner_content">
                <div class="col-lg-3 col-md-5 pt-3 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item d-flex flex-column h-60">                       
                <div class="tableTitle">추천 농작물 리스트</div> 
                
                <c:forEach items="${cropList}" var="dto">
                	<div class="form-check py-1">
                  		<input class="form-check-input btn-crop" type="radio" name="flexRadioDefault" value="${dto.crop_eng}" >
                  		<label class="form-check-label" for="flexRadioDefault1">${dto.crop_name }</label>  
                	</div>
               	</c:forEach>
               	
				   
               	
                	</div> 
                </div>
                  
                <div class="col-lg-3 col-md-4 pt-3 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item d-block h-100">
                <table class="table table-bordered table-hover table-primary" id="myTable">
              <thead class="thead-dark text-center">
                <tr>
                  <th class="tableTitle" width="60%">재배 가능 지역</th>                  
                </tr>
              </thead>
              <tbody class="text-center" id="area">
<!--               	재배 가능 지역 테이블 생성                          -->
	
              </tbody>
            </table>
                </div>  
                </div>
                <div class="col-lg-5 col-md-9 pt-3 wow fadeInUp" data-wow-delay="0.3s">
                  <div class="service-item h-100 d-block">
              <div class="page">    


			
              </div>
                      </div>
                  </div>
              </div>
              </div>
                </div>
<!--               </div> -->
<!--             </div>      -->


<!-- 경매 단가 그래프 모달창 Start-->
<div class="modal fade bs-example-modal-lg" id="hPrice_draw" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">        
        <h6 class="modal-title" id="myModalLabel">경매 단가</h6>
      </div>
      <div class="modal-body">
        <div class="container-xxl">
              <div class="text-center mx-auto wow fadeInUp" style="visibility: none;" data-wow-delay="0.3s">
                </div>             
<!--               농작물 매출                          -->
              <div class="col-md-12 col-sm-12 col-xs-12" id="">
                <canvas id="chart_price" class="chart_price"></canvas>
              </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
      </div>
      </div>
      </div>
<!-- 경매 단가 그래프 모달창 End-->



<!-- 생산량 그래프 모달창 Start-->
<div class="modal fade bs-example-modal-lg" id="yield_draw" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">        
        <h6 class="modal-title" id="myModalLabel">생산량</h6>
      </div>
      <div class="modal-body">
        <div class="container-xxl">
              <div class="text-center mx-auto wow fadeInUp" style="visibility: none;" data-wow-delay="0.3s">
                </div>             
<!--               농작물 매출                          -->
              <div class="col-md-12 col-sm-12 col-xs-12" id="">
                <canvas id="chart_yield" class="chart_yield"></canvas>
              </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
      </div>
      </div>
      </div>
<!-- 생산량 그래프 모달창 End-->




    <!-- Large modal -->
    <div class="row no-gutter">
      <div id="total_sales" class="border_default mt-5 gutter_0">
        <div class="total_sales_inner">
          <div class="modal-button">
            <button type="button" id="total_sales_chart" data-toggle="modal" data-target="#myModal">매출 확인</button>
          </div>
          <div class="">

			<input type="hidden" class="wycId" name="wycId" value="testId">
<!-- 			<input type="hidden" name="selectCrop"> -->
<!--          	<input type="hidden" name="selectArea"> -->
			<input type="hidden" class="selectCropKor" name="selectCropKor" value="">
         	<input type="hidden" class="salesResult" name="salesResult" value="">
         	<input type="hidden" class="selectAreaKor" name="selectAreaKor" value="">
            <button type="submit" id="total_sales_submit">비용 확인</button>
          </div>
        </div>
      </div>
    </div>
    </form>
    <!-- 07.12수정함 -->
      <!-- offset-lg-4 col-lg-2 offset-md-4 col-md-2 -->
      <!-- col-lg-2 col-md-4 col-sm-6 col-xs-12 -->
      <!-- <button type="button" class="btn btn-primary btn-revenue modal-button" data-toggle="modal" data-target=".bs-example-modal-lg">매출 확인</button> -->


<!-- 여기부터 주석 해제 -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">        
        <h6 class="modal-title" id="myModalLabel">매출 분석</h6>
      </div>
      <div class="modal-body">
        <div class="container-xxl">
              <div class="text-center mx-auto wow fadeInUp" style="visibility: none;" data-wow-delay="0.3s">
<!--                   <p class="section-title bg-white text-center text-primary px-3">매출 분석</p> -->
                  <div class="cost_title"><span class="cost_sigungu"></span><span> </span><span class="cost_crop"></span>의 내년 예상 매출은 <span class="total_cost"></span>원 입니다</div>
                </div>             
<!--               농작물 매출                          -->
           	  <div class="row col-lg-12 col-sm-12 col-md-12 col-xs-12" id="chartContainer">
                 <canvas class="" id="mychart"></canvas>              
              </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
      </div>
      </div>
      </div>
      
<!--     </div> -->
<!--     </div> -->
      
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->

    
  <!-- Community Service End -->

    


<%@include file="footer.jsp"%>

    <!-- JavaScript Libraries -->
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
    <script src="${contextPath}/resources/lib/lightbox/js/lightbox.js"></script>   
   

    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/revenue1.js"></script>
<!--     <script src="../js/revenueChart.js"></script> -->
    
</body>
</html>
