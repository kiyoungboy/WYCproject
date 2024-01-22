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
    
    <link href="${contextPath}/resources/css/recomend.css" rel="stylesheet" />
    <link href="${contextPath}/resources/css/chart2.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<%@include file ="header.jsp" %>

    <!--Header Moving Picture Start-->
    <div
      class="container-fluid header_img py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container text-center py-5">
        <h1 class="display-3 text-white mb-4 animated slideInDown">
          추천서비스
        </h1>
      </div>
    </div>
    <!--Header Moving Picture End-->


	<div
      class="text-center mx-auto pb-4 wow fadeInUp sec1"
      data-wow-delay="0.3s"
      style="max-width: 500px"
    >
      <p class="section-title bg-white text-center text-primary px-3">
        추천 서비스
      </p>
      <h2 class="mb-5">
        다양한 정보를 비교하여<br>
        재배할 농작물을 추천해드립니다!!
      </h2>
    </div>
    
    
	<!-- 추천 서비스 시작 -->
	<table>
        <thead>
          <tr>
            <th style="color:rgb(4, 61, 4)" class="first-title">귀농할 지역과 추천을 받기 위한 기준을 선택해주세요</th>
          </tr>
        </thead>
        <tbody>
        	
          <tr class="contents">
            <td>
                <div>
                    <ul>
                        <li class="category"> 지역 선택</li>
                        <li  class="overflowHidden">
                            <ul class="list">
                                <li class="recommend-area-list-checked activeR" value="보성">보성</li>
                                <li class="recommend-area-list-checked"  value="담양">담양</li>
                                <li class="recommend-area-list-checked"  value="강진">강진</li>
                                <li class="recommend-area-list-checked"  value="고흥">고흥</li>
                                <li class="recommend-area-list-checked"  value="곡성">곡성</li>
                                <li class="recommend-area-list-checked"  value="구례">구례</li>
                                <li class="recommend-area-list-checked"  value="광양">광양</li>
                                <li class="recommend-area-list-checked"  value="해남">해남</li>
                                <li class="recommend-area-list-checked"  value="함평">함평</li>
                                <li class="recommend-area-list-checked"  value="화순">화순</li>
                                <li class="recommend-area-list-checked"  value="장흥">장흥</li>
                                <li class="recommend-area-list-checked"  value="장성">장성</li>
                                <li class="recommend-area-list-checked"  value="진도">진도</li>
                                <li class="recommend-area-list-checked"  value="목포">목포</li>
                                <li class="recommend-area-list-checked"  value="무안">무안</li>
                                <li class="recommend-area-list-checked"  value="나주">나주</li>
                                <li class="recommend-area-list-checked"  value="신안">신안</li>
                                <li class="recommend-area-list-checked"  value="순천">순천</li>
                                <li class="recommend-area-list-checked"  value="완도">완도</li>
                                <li class="recommend-area-list-checked"  value="영암">영암</li>
                                <li class="recommend-area-list-checked"  value="영광">영광</li>
                                <li class="recommend-area-list-checked"  value="여수">여수</li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="select-recommend-condition2 ">
                    <ul class="select-recommend-condition3">
                        <li class="category">추천 기준</li>
                        <li>
                            <ul class="list">
                                <li class="condition-checked activeR" value="r">높은 매출</li>
                                <li class="condition-checked activeR" value="p">적은 비용</li>
                                <li class="condition-checked activeR" value="w">짧은 노동 시간</li>
                            </ul>
                        </li>
                    </ul>
                </div>



                <div class="result-recommend-condition ">
                    <ul class="result-recommend-condition2 display-hide" >
                        <li class="category">추천 결과</li>
                        <li>
                        	<ul>
		                        <li class="resultValue">
		                        	<div class="row gx-4" id="chartContainer_rec">
					       	        	<canvas id="recommendGraph" class="graph_image col-12"></canvas>
					                </div>
		                        	<div class="infoSize">
		                        		<span class="recommendMain">"<span class="recommendArea"></span>" 지역의 추천 농작물은 "<span class="recommendCropName" ></span>"입니다.<br/></span>
		                        		<span class="recommendSub">해당 농작물의 매출은 "<span class="recommendRevenue"></span>"원이고, 운영 비용은 "<span class="recommendPcost"></span>"원 입니다.<br/>
		                        		그리고 해당 농작물의 연간 평균 노동 시간은 "<span class="recommendWorkTime"></span>"시간 입니다.</span>
		                        	</div>
		                        </li>
	                        </ul>
	                    </li>
                    </ul>
                </div>
            </td>
          </tr>
          <tr>
            <td class="searchBtn">조 회</td>
          </tr>
          <tr>
          </tr>
        </tbody>
        <tfoot>
        	<tr>
        		<td class="table_description" style="text-align: left;">
        			*참고*<br/>
        			●재배 가능한 농작물들은 각각 비교되어 추천기준에 따라 등급이 나누어져 있으며, 조회시 가장 높은 등급의 농작물을 추천해드립니다.<br/>
        			●추천의 조건인 매출, 비용, 노동시간의 기준은 한 해 동안 경작 면적이 10a(약 300제곱미터)인 토지에서 나오는 수치 기준입니다.<br/>
        			●최종적으로 추천되는 농작물은 지역에서 재배 가능한 농작물만 선정되어 각 지역과 조건마다 다른 결과가 나올 수 있습니다.<br/>
        			●추천 농작물은 부여된 각 기준의 점수가 계산되어 가장 높은 점수가 부여된 것으로 선정됩니다.<br/>
        			●추천 기준은 복수 선택할 수 있으며, 추천 기준을 복수 선택할 시, 각 기준의 점수가 합산되어 결과를 산출합니다.<br/>
        			●추천 기준을 다르게 하더라도 추천되는 농작물이 같을 수 있습니다.
        		</td>
        	</tr>
        </tfoot>
      </table>  


	<!--  추천 서비스 끝 -->


    <!-- Select Condition Start-->
    <div class= "findCropInfo">
    <div class="col-md-12 col-sm-12 col-xs-12 recomend-condition">
      <h1 class="recomend-title">지역 및 농작물 추천서비스</h1>
      <div class="recomend-condition-container">
        <div class="recomend-condition-selectArea">
        <div>
	          <div>
	            <select name="recomend-select-si-do" class="recomend-select-si-do">
	              <option>지역 선택</option>
	              <option>전라남도</option>
	            </select>
	            <select
	              class="recomend-select-si-gun-gu"
	              id="recomend-select-si-gun-gu"
	            >
	              <option>지역 선택</option>
	            </select>
	            <select
	              class="recomend-select-si-gun-gu display_none testName"
	              id="recomend-select-JN"
	              name = "selectedArea"
	            >
	              <option>시군구 선택</option>
	              <option value="보성">보성</option>
	              <option value="담양">담양</option>
	              <option value="강진">강진</option>
                  <option value="고흥">고흥</option>
                  <option value="곡성">곡성</option>
                  <option value="구례">구례</option>
                  <option value="광양">광양</option>
                  <option value="해남">해남</option>
                  <option value="함평">함평</option>
                  <option value="화순">화순</option>
                  <option value="장흥">장흥</option>
                  <option value="장성">장성</option>
                  <option value="진도">진도</option>
                  <option value="목포">목포</option>
                  <option value="무안">무안</option>
                  <option value="나주">나주</option>
                  <option value="신안">신안</option>
                  <option value="순천">순천</option>
                  <option value="완도">완도</option>
                  <option value="영암">영암</option>
                  <option value="영광">영광</option>
                  <option value="여수">여수</option>
	
	            </select>
	            <button class="select-btn"  id="select-btn"   >조회</button>
	          </div>
          </div>
        </div>
        <div class="recomend-area-result">
          농작물 정보 조회
          <div class="recomend-boseong recomend-view JN-result display-hide">
            <div class="recomend-crops">
              <div class="row gx-4 graph1" id="chartContainer">
                <canvas id="graph1" class="graph_image col-12"></canvas>
              </div>
              <div class="row gx-4 graph2" id="chartContainer">
                <canvas id="graph2" ></canvas>
              </div>
              <div class="row gx-4 graph3" id="chartContainer">
                <canvas id="graph3" ></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Select Condition End-->
    <div class="textBox display-hide" id="textBox">
      <div class="textA">
		<<<span id="textN1"></span>>><br/>
		※5년동안 수익이  <span id="textC1"></span>원만큼 변동하였습니다.<br/>
		※생산량은 5년동안 평균 <span id="textY1"></span>% 변동하였습니다.
      </div>
      <div class="textB">
		<<<span id="textN2"></span>>><br/>
		※5년동안 수익이  <span id="textC2"></span>원만큼 변동하였습니다<br/>
		※생산량은 5년동안 평균 <span id="textY2"></span>% 변동하였습니다.
      </div>
      <div class="textC">
		<<<span id="textN3"></span>>><br/>
		※5년동안 수익이 <span id="textC3"></span>원만큼  변동하였습니다.<br/>
		※생산량은 5년동안 평균 <span id="textY3"></span>% 변동하였습니다.
      </div>
    </div>
    <div class="table_description" style="text-align: left; position: absolute; bottom:0; width: 100%;">
    	*참고*<br/>
    	●위 정보는 수익과 생산량이 최근 5년간의 변화를 보여주기 위한 자료입니다.<br/>
        ●수익, 생산량의 변화율은 2017년부터 2021년까지의 데이터를 통해 산출됩니다.<br/>
        ●농작물의 선정은 해당 지역에서 재배가능한 농작물 3가지를 선정하여 정보를 제공합니다.<br/>
        ●평균 변화율 : (2017~2021년 까지의 데이터의 합)/5
    </div>
    </div>
    <button class="link-btn" style="margin-left: 45%"><a href="revenue1">매출예측</a></button>
    
               <script>

				var myChart1;
				var myChart2;
				var myChart3;
			$(".select-btn").click(function() {
				
				if(myChart1 && myChart2 && myChart3){
					myChart1.destroy();
					myChart2.destroy();
					myChart3.destroy();
				}
				
				  const selectBox = document.getElementById('recomend-select-JN');
				  const selectedOption = selectBox.options[selectBox.selectedIndex];
				
				    $.ajax({
				      type: "GET",
				      url: "areaCondition", 
				      data: { selectedArea : selectedOption.value }, 
				      success: function(response) {
				    	console.log(response);  
				        
				        var arr = response;			 
				        console.log(arr);
				        var revenue_data1 = {
		            		    labels: [2017, 2018, 2019, 2020, 2021],
		            		    datasets:[
					  		  {
					  		        label: arr[3]+' 수익',
					  		        data: [arr[0][0]-arr[1][0],arr[0][1]-arr[1][1],arr[0][2]-arr[1][2],arr[0][3]-arr[1][3],arr[0][4]-arr[1][4]],
					  		        fill: false,
					  		        borderColor: '#609966',
					  		        tension: 0.1,
					  		        yAxisID: 'y1'
					  		    },
		            		    {
		            		        label: arr[3]+' 생산량',
		            		        data: [arr[2][0],arr[2][1],arr[2][2],arr[2][3],arr[2][4]],
		            		        fill: false,
		            		        borderColor: '#40513B',
		            		        tension: 0.1,
		            		        yAxisID: 'y2'
		            		    }]
		            		};
		              		
		            		var ctx = document.getElementById('graph1').getContext('2d');
		            		myChart1 = new Chart(ctx,{
		            		    type: 'line',
		            		    data: revenue_data1,
		            		    options:{
		            		    	scales: {
			            		    	y1: {
			            		    		position: 'left',
											type:'linear',
											title: {
								                display: true,
								                text: '수익'
								            }
			            	            },
			            	            y2: {
			            	            	position: 'right',
			            	            	type:'linear',
			            	            	title: {
								                display: true,
								                text: '생산량'
								            }
			            	            }
			            		    }
		            		    }
		            		});
		            		
		              var revenue_data2 = {
		            		    labels: [2017, 2018, 2019, 2020, 2021],
		            		    datasets:[
						  		{
					  		        label: arr[7]+' 수익',
					  		        data: [arr[4][0]-arr[5][0],arr[4][1]-arr[5][1],arr[4][2]-arr[5][2],arr[4][3]-arr[5][3],arr[4][4]-arr[5][4]],
					  		        fill: false,
					  		        borderColor: '#609966',
					  		        tension: 0.1,
					  		        yAxisID: 'y1'
					  		    },
		            		    {
		            		        label: arr[7]+' 생산량',
		            		        data: [arr[6][0],arr[6][1],arr[6][2],arr[6][3],arr[6][4]],
		            		        fill: false,
		            		        borderColor: '#40513B',
		            		        tension: 0.1,
		            		        yAxisID: 'y2'
		            		    }]
		            		};
		            		var ctx2 = document.getElementById('graph2').getContext('2d');
		            		myChart2 = new Chart(ctx2,{
		            		    type: 'line',
		            		    data: revenue_data2,
		            		    options:{
		            		    	scales: {
		            		    		y1: {
			            		    		position: 'left',
											type:'linear',
											title: {
								                display: true,
								                text: '수익'
								            }
			            	            },
			            	            y2: {
			            	            	position: 'right',
			            	            	type:'linear',
			            	            	title: {
								                display: true,
								                text: '생산량'
								            }
			            	            }
		            		    	}
		            		    }
		            		});
		              var revenue_data3 = {
		            		    labels: [2017, 2018, 2019, 2020, 2021],
		            		    datasets:[
						  		{
					  		        label: arr[11]+' 수익',
					  		        data: [arr[8][0]-arr[9][0],arr[8][1]-arr[9][1],arr[8][2]-arr[9][2],arr[8][3]-arr[9][3],arr[8][4]-arr[9][4]],
					  		        fill: false,
					  		        borderColor: '#609966',
					  		        tension: 0.1,
					  		        yAxisID: 'y1'
					  		    },
		            		    {
		            		        label: arr[11]+' 생산량',
		            		        data: [arr[10][0],arr[10][1],arr[10][2],arr[10][3],arr[10][4]],
		            		        fill: false,
		            		        borderColor: '#40513B',
		            		        tension: 0.1,
		            		        yAxisID: 'y2'
		            		    }]
		            		};
		            		var ctx3 = document.getElementById('graph3').getContext('2d');
		            		myChart3 = new Chart(ctx3,{
		            		    type: 'line',
		            		    data: revenue_data3,
		            		    options:{
		            		    	scales: {
		            		    		y1: {
			            		    		position: 'left',
											type:'linear',
											title: {
								                display: true,
								                text: '수익'
								            }
			            	            },
			            	            y2: {
			            	            	position: 'right',
			            	            	type:'linear',
			            	            	title: {
								                display: true,
								                text: '생산량'
								            }
			            		    	}
		            		    	}
		            		    }
		            		});
		      			  var parse1 = parseInt(arr[12]); // 파싱
		    			  var parse2 = parseInt(arr[13]); // 파싱
		    			  var parse3 = parseInt(arr[14]); // 파싱
				        	
		            		
		            		document.getElementById('textN1').innerHTML = arr[3];
		            		document.getElementById('textN2').innerHTML = arr[7];
		            		document.getElementById('textN3').innerHTML = arr[11];
// 		            		document.getElementById('textR1').innerHTML = arr[48];
// 		            		document.getElementById('textR2').innerHTML = arr[49];
// 		            		document.getElementById('textR3').innerHTML = arr[50];
		            		document.getElementById('textC1').innerHTML = parse1.toLocaleString();
		            		document.getElementById('textC2').innerHTML = parse2.toLocaleString();
		            		document.getElementById('textC3').innerHTML = parse3.toLocaleString();
		            		document.getElementById('textY1').innerHTML = arr[15];
		            		document.getElementById('textY2').innerHTML = arr[16];
		            		document.getElementById('textY3').innerHTML = arr[17];
				      },
				      error: function() {
				        console.log("서버 요청 실패");
				      }
				    });
				});
	
             
              </script>
			
              
              
              
              
              
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/js/recomend.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${contextPath}/resources/lib/counterup/counterup.min.js"></script>
    <script src="${contextPath}/resources/lib/parallax/parallax.min.js"></script>
    <script src="${contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
    <script src="${contextPath}/resources/js/main.js"></script>
	
    <!-- Template Javascript -->
	<script type="text/javascript">new WOW().init();</script>
    <%@include file="footer.jsp"%>
    </body>
</html>