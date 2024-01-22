<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt"  prefix="f"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
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
    
     <link rel="stylesheet" href="${contextPath}/resources/css/serviceCost.css" />
</head>
<body>
<%@include file ="header.jsp" %>
<script type="text/javascript">
	const area = '<%= request.getSession().getAttribute("selectedAreaName")%>';
	const crop = '<%= request.getSession().getAttribute("selectedCropName")%>';
	console.log("쀽"+crop);
	console.log(area);
</script>
    <!-- Page Header Start -->
    <div
      class="container-fluid header_img py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 animated slideInDown">
          비용 조회
        </h1>
      </div>
    </div>

    <div
      class="text-center mx-auto pb-4 wow fadeInUp"
      data-wow-delay="0.3s"
      style="max-width: 500px"
    >
      <p class="section-title bg-white text-center text-primary px-3">
        소요비용
      </p>
      <h1 class="mb-5">농작물별 비용과 정책을<br />간단히 확인하세요.</h1>
    </div>

    <!-- Page Header End -->

    <main class="container-xxl wow fadeInUp" data-wow-delay="0.3s"  style="margin-bottom:4%;">
      <form class="filter_box" action="costCondition" id="costConditionForm">
        <h1 class="filter_title">농작물별 비용과 정책 계산하기</h1>
        <div class="filter_button_box">
              <input
                type="reset"
                name="filter_list_reset"
                id="filter_list_reset"
                class="filter_list_checked"
              />
              <label
                for="filter_list_reset"
                class="condition offset-sm-1 col-sm-5 offset-xs-1 col-xs-5"
                >초기화</label
              >
              <input
                type="submit"
                name="filter_list_submit"
                id="filter_list_submit"
                class="filter_list_checked"
              />
              <label
                for="filter_list_submit"
                class="condition col-sm-5 col-xs-5"
                >검색</label
              >
            </div>
        <div class="filter_wrap">
        
          <div class="filter_list mb-3">
            <div class="filter_policy_box col-sm-8 col-xs-8">
            
          </div>
        </div>

        <!-- 농작물 셀렉박스 시작 -->
        <div id="select_crop" class="select_box">
          <!-- 검색창 파트 시작 -->
          <div class="search_header">
            <label for="search_text" class="search_style"></label>
            <input
              type="search"
              class="search_text"
              id="search_text_id"
              onkeyup="filter()"
              placeholder="농작물 검색"
            />

          </div>

          <!-- 선택 목록 파트 시작 -->
          <div class="select_main grid_4">
            <!-- 조미채소 -->
            <div class="jomi_vegetable border_default scroll_add">
              <div class="selet_title area_title">조미채소</div>
              <ul class="jomi_vegetable_ul crop_ul">
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="pepper"
                    value="pepper"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="pepper" class="policy_checkbox_label_crop"
                    >고추</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="garlic"
                    value="garlic"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="garlic" class="policy_checkbox_label_crop"
                    >마늘</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="onion"
                    value="onion"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="onion" class="policy_checkbox_label_crop"
                    >양파</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="chives"
                    value="chives"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="chives" class="policy_checkbox_label_crop"
                    >쪽파</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="greenonion"
                    value="greenonion"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="greenonion" class="policy_checkbox_label_crop"
                    >대파</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="stberry"
                    value="stberry"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="stberry" class="policy_checkbox_label_crop"
                    >딸기</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="cucumber"
                    value="cucumber"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="cucumber" class="policy_checkbox_label_crop"
                    >오이</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="tomato"
                    value="tomato"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="tomato" class="policy_checkbox_label_crop"
                    >토마토</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="rice"
                    value="rice"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="rice" class="policy_checkbox_label_crop"
                    >정곡</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="kiwi"
                    value="kiwi"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="kiwi" class="policy_checkbox_label_crop"
                    >참다래</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="grape"
                    value="grape"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="grape" class="policy_checkbox_label_crop"
                    >포도</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="peach"
                    value="peach"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="peach" class="policy_checkbox_label_crop"
                    >복숭아</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="spinach"
                    value="spinach"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="spinach" class="policy_checkbox_label_crop"
                    >시금치</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="crop_policy_checkbox"
                    id="spotato"
                    value="spotato"
                    class="checked_filter"
                    onclick="checked_crop_fun()"
                  />
                  <label for="spotato" class="policy_checkbox_label_crop"
                    >고구마</label
                  >
                </li>
              </ul>
            </div>


                <div
              id="junlanamdo_si_gun_gu"
              class="select_area border_default select_si_gun_gu scroll_add"
            >
              <div class="selet_title">시군구</div>
              <ul class="junlanamdo_si_gun_gu_ul" id="areaList">

              </ul>
            </div>


<div class="select_age border_default scroll_add">
              <div class="selet_title">나이</div>
              <ul class="select_age_ul">
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="twenty_thirty"
                    value="25"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                    checked
                  />
                  <label for="twenty_thirty" class="policy_checkbox_label"
                    >20~30살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="thirty_fourty"
                    value="35"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="thirty_fourty" class="policy_checkbox_label"
                    >30~40살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="fourty_fifty"
                    value="45"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="fourty_fifty" class="policy_checkbox_label"
                    >40~50살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="fifty_sixty"
                    value="55"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="fifty_sixty" class="policy_checkbox_label"
                    >50~60살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="sixty_over"
                    value="66"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="sixty_over" class="policy_checkbox_label"
                    >66살 이상</label
                  >
                </li>
              </ul>
            </div>


<div class="select_live border_default scroll_add">
              <div class="selet_title">독립 경영 기간</div>
              <ul class="select_live_ul">

                    <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="zeroyear"
                    value="0"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                    checked
                  />
                  <label for="zeroyear" class="policy_checkbox_label"
                    >고려하지않음</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="oneyear"
                    value="1"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="oneyear" class="policy_checkbox_label"
                    >1년차(예비귀농인 포함)</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="twoyear"
                    value="2"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="twoyear" class="policy_checkbox_label"
                    >2년차</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="threeyear"
                    value="3"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="threeyear" class="policy_checkbox_label"
                    >3년차</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="fouryear_over"
                    value="4"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="fouryear_over" class="policy_checkbox_label"
                    >4년차 이상</label
                  >
                </li>
              </ul>
            </div>

          </div>
        </div>

        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 지역 선택창 시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
        <div id="select_area" class="select_box toggle_hide">
          <!-- 검색창 파트 시작 -->
          <div class="search_header">
            <label for="search_text" class="search_style"></label>
            <input
              type="search"
              class="search_text"
              id="search_text_area"
              onkeyup="filter_area()"
              placeholder="지역 검색"
            />
          </div>

          <!-- 선택 목록 파트 시작 -->
          <div class="select_main grid_2">
            <!-- 광역시/도 -->
            <div class="select_area border_default">
              <div class="selet_title">광역시/도</div>
              <ul class="select_area_ul">

                <li>
                  <input
                    type="radio"
                    name="select_area_radio"
                    id="junlanamdo"
                    value="전라남도"
                    class="checked_filter select_si_do"
                    onclick="select_si_do_fun()"
                  />
                  <label for="junlanamdo" class="policy_checkbox_label"
                    >전라남도</label
                  >
                </li>

              </ul>
            </div>


            <!-- ---------------------------------------------------------------------------------- -->
            <div
              id="junlanamdo_si_gun_gu"
              class="select_area border_default select_si_gun_gu toggle_hide scroll_add"
            >
              <div class="selet_title">시군구</div>
              <ul class="junlanamdo_si_gun_gu_ul" id="areaList">

              </ul>
            </div>


            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 지역 시군구 끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 지역 읍면동 시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 지역 읍면동 끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
          </div>

        </div>
        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 지역 선택창 시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 나이 선택창 시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
        <div id="select_age" class="select_box toggle_hide">
          <!-- 검색창 파트 시작 -->
          <div class="search_header">
            <!-- <label for="search_text" class="search_style"></label>
              <input type="text" class="search_text" placeholder="검색">
              <div class="search_icon"><img src="" alt=""></div> -->
          </div>

          <!-- 선택 목록 파트 시작 -->
          <div class="select_main grid_1">
            <!-- 나이 -->
            <div class="select_age border_default scroll_add">
              <div class="selet_title">나이</div>
              <ul class="select_age_ul">
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="twenty_thirty"
                    value="25"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="twenty_thirty" class="policy_checkbox_label"
                    >20~30살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="thirty_fourty"
                    value="35"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="thirty_fourty" class="policy_checkbox_label"
                    >30~40살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="fourty_fifty"
                    value="45"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="fourty_fifty" class="policy_checkbox_label"
                    >40~50살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="fifty_sixty"
                    value="55"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="fifty_sixty" class="policy_checkbox_label"
                    >50~60살</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_age_radio"
                    id="sixty_over"
                    value="66"
                    class="checked_filter"
                    onclick="checked_age_fun()"
                  />
                  <label for="sixty_over" class="policy_checkbox_label"
                    >66살 이상</label
                  >
                </li>
              </ul>
            </div>
          </div>
          <!-- 
            <div class="result_box">
              <div class="result_innerText">
                빈칸
              </div>
              <div class="result_innerText">
                빈칸
              </div>
            </div> -->
        </div>
        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 나이 선택창 끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 거주기간 선택창 시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
        <div id="select_live" class="select_box toggle_hide">
          <!-- 검색창 파트 시작 -->
          <div class="search_header">
            <!-- <label for="search_text" class="search_style"></label>
              <input type="text" class="search_text" placeholder="검색">
              <div class="search_icon"><img src="" alt=""></div> -->
          </div>

          <!-- 선택 목록 파트 시작 -->
          <div class="select_main grid_1">
            <!-- 나이 -->
            <div class="select_live border_default scroll_add">
              <div class="selet_title">독립 경영 기간</div>
              <ul class="select_live_ul">
                <!-- <li>
                      <input type="radio" name="select_live_radio" id="zeroyear" value="zeroyear" class="checked_filter" onclick="checked_live_fun()">
                      <label for="onezeroyearyear" class="policy_checkbox_label">예비귀농인</label>
                    </li> -->
                    <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="zeroyear"
                    value="0"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="zeroyear" class="policy_checkbox_label"
                    >고려하지않음</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="oneyear"
                    value="1"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="oneyear" class="policy_checkbox_label"
                    >1년차(예비귀농인 포함)</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="twoyear"
                    value="2"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="twoyear" class="policy_checkbox_label"
                    >2년차</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="threeyear"
                    value="3"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="threeyear" class="policy_checkbox_label"
                    >3년차</label
                  >
                </li>
                <li>
                  <input
                    type="radio"
                    name="select_live_radio"
                    id="fouryear_over"
                    value="4"
                    class="checked_filter"
                    onclick="checked_live_fun()"
                  />
                  <label for="fouryear_over" class="policy_checkbox_label"
                    >4년차 이상</label
                  >
                </li>
              </ul>
            </div>
          </div>
          
        </div>
        
        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 거주기간 선택창 끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

        <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@병역 확인@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->


        <!-- ------------------------------------------------- -->
        <div class="result_box">
          <!-- <div class="result_innerText">고추</div> -->
        </div>
	        
        <input type="hidden" name="salesResult" value="${empty salesResult ? 0 : salesResult }"/>
      </form>
      <p style="color:gray; font-size:0.8rem;">※처음 보여지는 정책 리스트는 전체 리스트 입니다. 조건과 부합하는 리스트를 검색하고 싶으시면 우측 상단의 검색버튼을 클릭해 주세요</p>
      <% String warningMessage = (String) session.getAttribute("warningMessage"); %>
      <%
      	if(warningMessage != null) {
      %>
      <script>
      	alert("<%=warningMessage%>");
      		window.location.href = '<%= request.getContextPath()%>/policyList.do';
      </script>
      <%
      	}
      %>
      	<% session.removeAttribute("warningMessage");%>

      <!-- ----------------------------------------------------- -->

      <!-- 현재 페이지에 해당하는 데이터를 표시합니다. -->

      <form action="policySubsidy">
          
	      <div class="result_list_wrap">
		      <ul id="policyList">
		      	<c:forEach items="${currentDatas }" var="data">
		      		<li class="list_item">
		      			<div class="policy_text">
		      				<span class="text1">${data.areaName }</span>
		      				<span class="text2"> ${data.policyName }</span>
		      				<span class="text3" style="padding-right:1%;">
		      					<script>
	                            // 숫자를 세 자리마다 쉼표로 구분하는 함수
	                            function formatNumberWithCommas(number) {
	                                return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	                            }
	
	                            var totalCost = ${data.productionCost + data.fixedCost};
	                            var formattedTotalCost = formatNumberWithCommas(totalCost);
	                            document.write(formattedTotalCost);
                     		   </script>
		      				 </span></div>
		      			<div ><input type="checkbox" name="selectedSubsidy"  value="${data.productionCost +data.fixedCost }"></div>
		      		</li>
		      	</c:forEach>
		      </ul>
	      </div>
	      <input type="hidden" name="cropCost" value="${cropCost }"/>
	      <input type= "hidden" name="costArea" value="${costArea }"/>
	      <input type="hidden" name="costCrop" value="${costCrop }"/>
	      <input type="hidden" name="salesResult" value="${salesResult }"/>
	      <input type="hidden" name="selectCropKor" value="${selectedCropName}">
		  <input type="hidden" name="selectAreaKor" value="${selectedAreaName}">
	      <div><input type="submit" class="page_submit" value="지원금 계산"></div>
      </form>
  	
      <!-- 페이지네이션 링크를 표시 -->
      <div class="pagenation_location" >
	      <c:if test="${currentPage > 1 }">
	      	<a href="policyList.do?page=${currentPage - 1 }&selectCropKor=${selectedCropName}&selectAreaKor=${selectedAreaName}">이전페이지</a>
	      </c:if>
	      
	      <!-- 페이지번호를 표시합니다 -->
	      <c:forEach begin="1" end="${totalPage }" var="pageNum">
	      	<c:choose>
	      		<c:when test="${pageNum == currentPage }">
	      			<strong>${pageNum}</strong>
	      		</c:when>
	      		<c:otherwise>
	      			<a href="policyList.do?page=${pageNum }">${pageNum}</a>
	      		</c:otherwise>
	      	</c:choose>
	      </c:forEach>
	      
	      <c:if test="${currentPage < totalPage }">
	      	<a href="policyList.do?page=${currentPage + 1}">다음 페이지</a>
	      </c:if>
      </div>

      <!-- --------------------------------------------------------- -->
    </main>

    <div id="modal_box" value="modal_box">
      <div id="modal_contents">
        <button id="modal_close">&times;</button>
        <h1 id="modal_title">정책 세부 내역</h1>
        <div id="modal_desc" style="width: 100%; overflow: auto">
          <table class="policy_modal_table" style="white-space: nowrap">
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

    <form id="total_cost" class="border_default mt-5" action="myProfit">
      <div class="total_cost_inner row">
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
          소요비용<br /><span id="cropCost">${empty cropCost ? 0 : cropCost}</span>
        </div>    
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">-</div>
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
          정책지원<br /><span id="totalSubsidy">${empty totalSubsidy ? 0 : totalSubsidy } </span>
        </div>
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">=</div>
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
          연간 총 비용<br /><span id="totalCost">${empty totalCost ? 0 : totalCost }</span>
        </div>
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
        <script>
			//천 단위마다 , 찍는 스크립트
			
			var cropCostElement = document.getElementById("cropCost");
			  var totalSubsidyElement = document.getElementById("totalSubsidy");
			  var totalCostElement = document.getElementById("totalCost");
			
			  var cropCostValue = cropCostElement.textContent.replace(/\,/g, ""); // 쉼표 제거
			  var totalSubsidyValue = totalSubsidyElement.textContent.replace(/\,/g, ""); // 쉼표 제거
			  var totalCostValue = totalCostElement.textContent.replace(/\,/g, ""); // 쉼표 제거
			
			  var cropCost = parseFloat(cropCostValue); // 파싱
			  var totalSubsidy = parseFloat(totalSubsidyValue); // 파싱
			  var totalCost = parseFloat(totalCostValue); // 파싱
			
			  var formattedCropCost = cropCost.toLocaleString();
			  var formattedTotalSubsidy = totalSubsidy.toLocaleString();
			  var formattedTotalCost = totalCost.toLocaleString();
			
			  cropCostElement.textContent = formattedCropCost + "원";
			  totalSubsidyElement.textContent = formattedTotalSubsidy + "원";
			  totalCostElement.textContent = formattedTotalCost + "원";
		</script>
		<input type="hidden" name="totalCost" value="${totalCost}" />
        <input type="hidden" name="costArea" value="${costArea }"/>
        <input type="hidden" name="costCrop" value="${costCrop }"/>
        <input type="hidden" name="cropCost" value="${cropCost }"/>
        <input type="hidden" name="totalSubsidy" value="${totalSubsidy }"/>
        <input type="hidden" name="salesResult" value="${salesResult }"/>
          <button type="submit" id="total_cost_submit">수익확인</button>
        </div>
      </div>
    </form>

      <div class="description_box">
    	 *** 나의 예상매출 : <span id="myRevenue">${empty salesResult ? 0 : salesResult}원</span><br/><br/>
    	 *참고*<br/>
	     ●소요비용에는 임대료, 노동비, 비료, 농약비 등 농사에 필요한 요소들이 종합적으로 계산되어 있습니다.<br/>
	     ●소요비용에 포함되어 있는 노동비는 귀농인이 직접 노동하는 직접 노동비입니다.<br/>
	     ●소요비용은 각 농작물에 따라 다르게 계산 됩니다.<br/>
	     ●소요 비용의 기준은 한 해에 경작 면적 10a에서 발생하는 비용입니다.<br/>
	     ●정책 지원금의 기준은 해당 지원에 대해, 한 해에 받을 수 있는 총 지원 금액 입니다.<br/>
	     ●지역, 나이, 독립경영 여부에 따라 지원 받을 수 있는 정책의 종류가 달라집니다.<br/>
	     ●연간 총비용이 +(양수)면 비용이 발생한다는 의미이고, -(음수)면 비용이 발생하지 않고 추후 수익계산시 수익에 그 값만큼 더해진다는 의미입니다.
	  </div>
<script>
	//천 단위마다 , 찍는 스크립트
	var myRevenueElement = document.getElementById("myRevenue");
	var myRevenue = parseFloat(myRevenueElement.textContent.replace(/\,/g, "")); // 쉼표 제거 후 파싱
	var formattedRevenue = myRevenue.toLocaleString();
	myRevenueElement.textContent = formattedRevenue + "원";
</script>
	  
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
    
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/main.js"></script>
        <script src="${contextPath}/resources/js/serviceCost.js"></script>
</body>
</html>