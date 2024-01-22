<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
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
<link
	href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Open+Sans:wght@400;500;600&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="${contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
<link href="${contextPath}/resources/css/header.css" rel="stylesheet">

<link rel="stylesheet" href="${contextPath}/resources/css/serviceProfit.css" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<script>
var cost = '<%=request.getAttribute("totalCost")%>';
var revenue = '<%=request.getAttribute("salesResult")%>';
var pureCost = '<%=request.getAttribute("cropCost")%>';
var totalSubsidy = '<%=request.getAttribute("totalSubsidy")%>';

		var resultCost = pureCost - totalSubsidy;
		var resultRevenue = revenue;
		var profit = resultRevenue - resultCost;

		console.log('cost' + cost);
		console.log('revenue: ' + revenue);
		console.log('pureCost : ' + pureCost);
		console.log('totalSubsidy: ' + totalSubsidy);
	</script>
	<!-- Page Header Start -->
	<div class="container-fluid header_img py-5 mb-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container text-center py-5">
			<h1 class="display-3 text-white mb-4 animated slideInDown">수익 확인
			</h1>
		</div>
	</div>

	<div class="text-center mx-auto pb-4 wow fadeInUp"
		data-wow-delay="0.1s" style="max-width: 500px">
		<p class="section-title bg-white text-center text-primary px-3">
			수익 예측</p>
		<h1 class="mb-5">
			매출과 비용을 고려한<br />수익을 확인해보세요.
		</h1>
	</div>

	<!-- Page Header End -->

	<main class="container-xxl py-5">
<div class="visualization_box_container">
    <div class="visualization_box">
        <div class="visualization_text">
            <p class="default_message"> 동일한 지역 및 작물을 선택해 주세요.</p>
        </div>
    </div> <!--visualization_box 끝-->
    <div class="graph-choice-container">
        <div class="select">
            <div class="condition_box ">
                <div><!--1번 경작면적-->
                    <p>경작 면적</p>
                    <div class="yield_condition">
                        <input type="radio" name="yield_size" id="yield_10a" value="10" checked><label for="yield_10a">10a</label>
                        <input type="radio" name="yield_size" id="yield_20a" value="20"><label for="yield_20a">20a</label>
                        <input type="radio" name="yield_size" id="yield_30a" value="30"><label for="yield_30a">30a</label>
                        <input type="radio" name="yield_size" id="yield_40a" value="40"><label for="yield_40a">40a</label>
                    </div>
                </div>

                <div><!--2번 추가노동인구-->
                    <p>추가 노동 인구</p>
                    <div class="farmer_condition">
                        <input type="radio" name="farmer_count" id="count_one" value="0" checked><label for="count_one">없음</label>
                        <input type="radio" name="farmer_count" id="count_two" value="1" ><label for="count_two">1명</label>
                        <input type="radio" name="farmer_count" id="count_three" value="2" ><label for="count_three">2명</label>
                        <input type="radio" name="farmer_count" id="count_four" value="3" ><label for="count_four">3명</label>
                    </div>
                </div>

                <div><!--3번 추가고정비용-->
                    <p>추가 고정 비용</p>
                    <div class="Fcost_condtion">
                        <input type="radio" name="add_Fcost" id="add_50m" value="0" checked ><label for="add_50m">없음</label>
                        <input type="radio" name="add_Fcost" id="add_100m" value="5000" ><label for="add_100m">5,000만원</label>
                        <input type="radio" name="add_Fcost" id="add_150m" value="7500" ><label for="add_150m">7,500만원</label>
                        <input type="radio" name="add_Fcost" id="add_200m" value="10000" ><label for="add_200m">1억원</label>
                    </div>
                </div>
            </div><!--visualization_graph condition_box 끝-->
        </div><!--condition_profit_box 끝-->


        <div class="select">
            <div class="chart_title ">
                <canvas id="profit_graph" class="graph_image col-12"></canvas>
                <span class="graphText"></span>
            </div><!--chart_title  끝-->
        </div><!--visualization_graph profit_box끝-->
    </div>
</div><!--visualization_box_container 끝-->
<div class="description_box">
	*참고*<br/>
	●경작 면적 조건 선택시, 선택 된 면적 크기에 따른 매출과 비용으로 값이 재설정 됩니다.<br/>
	●추가 노동 인구와 추가 고정 비용 선택 시, 비용 값을 재설정 합니다.<br/>
	●추가 노동의 경우, 직접 노동비가 아닌 간접 노동비로 계산됩니다.<br/>
	●추가 노동의 경우, 같은 시간을 기준으로 비용이 책정 됩니다.(예) 10시간 노동 시, 추가 노동인구 없을 때와 1명일때의 가격 비교<br/> 
	●간접 노동비는 외부에서 인력을 끌고와 농업을 위탁할 때 생기는 인건비입니다.<br/>
	●추가 고정 비용의 경우, 농기구, 수리비 등 추가 기타 비용 발생을 고려한 항목입니다.<br/>
	●매출 예측 혹은 비용 분석을 하지 않고, 수익 확인을 하려고 하면, 값이 부정확할 수 있습니다
</div>
	</main>
	<%@include file="footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
	<script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="${contextPath}/resources/lib/counterup/counterup.min.js"></script>
	<script src="${contextPath}/resources/lib/parallax/parallax.min.js"></script>
	<script src="${contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>

	<!-- Template Javascript -->
	<script src="${contextPath}/resources/js/main.js"></script>


	<script src="${contextPath}/resources/js/serviceProfit.js"></script>
</body>
</html>