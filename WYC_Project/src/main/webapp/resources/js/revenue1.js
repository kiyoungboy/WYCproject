/**
 * 
 */

//페이지 이동시 발생 이벤트
(function ($) {
  "use strict";

  // Spinner
  var spinner = function () {
    setTimeout(function () {
      if ($("#spinner").length > 0) {
        $("#spinner").removeClass("show");
      }
    }, 1);
  };
  spinner();

  // Initiate the wowjs
  new WOW().init();

  // Sticky Navbar
  $(window).scroll(function () {
    if ($(this).scrollTop() > 300) {
      $(".sticky-top").addClass("shadow-sm").css("top", "0px");
    } else {
      $(".sticky-top").removeClass("shadow-sm").css("top", "-100px");
    }
  });

  // Back to top button
  $(window).scroll(function () {
    if ($(this).scrollTop() > 300) {
      $(".back-to-top").fadeIn("slow");
    } else {
      $(".back-to-top").fadeOut("slow");
    }
  });
  
  $(".back-to-top").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 1500, "easeInOutExpo");
    return false;
  });
  
//동적으로 생성하기 07.18
  
})(jQuery);






//동적으로 지역 리스트 생성하기 07.18
const area = document.querySelector("#area");

$(".btn-crop").change(function() {
	  if ($(this).is(":checked")) {
	    var selectedCrop = $(this).val(); // 선택된 농작물 값
	    let str = "";
	    // 서버에 비동기 요청 보내기
	    $.ajax({
	      type: "POST",
	      url: "cropArea", // 서버에서 데이터를 가져올 URL
	      data: { crop: selectedCrop }, // 요청 파라미터로 선택된 농작물 전달
	      success: function(response) {
	    	 console.log(response);
	    	for(let i=0; i<response.length; i++){
     		str += "<tr>"+
  						"<td class='select_area_td'>"+
  							"<input type='radio' name='select_area_radio_name' id='"+response[i].area_eng+"' value='"+response[i].area_name+"' class='select_area_radio'>"+
  							"<label for='"+response[i].area_eng+"' class='select_area_radio_label'>"+response[i].area_name+"</label>"+
  						"</td>"+
  					"</tr>"
	    	}
	    	
	    	area.innerHTML = str;
	    	image_fun(selectedCrop);
//	        var newRow = "<tr><td>" + arr[0] + "</td></tr>";
//	        $("#area").append(str); // 가져온 데이터를 해당 위치에 추가
	        console.log("response : "+ response);
	        
	        
	      },
	      error: function() {
	        console.log("서버 요청 실패");
	      }
	    });
	  }
	});


//상세 정보 불러오기
function image_fun(selectedCrop) {
	console.log("image_fun() 실행");
	  const btnCrop = document.querySelectorAll(".btn-crop");
	  const page = document.querySelector(".page");
		
	  const crops_map = document.querySelectorAll('input[name="flexRadioDefault"]');
	  
	  let checkedIndex_crop = -1;
	  let crop_checked = null;

	  crops_map.forEach((crop_map, index_crop) => {
	    if (crop_map.checked) {
	      checkedIndex_crop = index_crop;
	      crop_checked = crop_map;
	    }
	  });
	  console.log("crop_checked 실행" + selectedCrop);
//	  const form_check_label = document.querySelectorAll(".form-check-label");
//	  const crop_true = form_check_label[checkedIndex_crop].innerText;

	  $.ajax({
		    type: "POST",
		    url: "getCropProfile",
		    data: { selectCrop : selectedCrop,},
//		    dataType: "json",
		    success: function(response) {
		    	alert("getCropProfile 연결 성공")
		    	console.log("response : " + response);
		    	
		    	
		  	  page.innerHTML =
		  	    `
		  	  <div class="page-content page-container" id="page-content">
		  	  <div class="row gutter_0">
		  	  <div class="card card_custom gutter_0">
		  	  <div class="card-header gutter_0 bg_custom">
		  	  <strong class="card_title">`+response.cropKor+` 상세 정보</strong>
		  	  </div>
		  	  <div class="card-body">
		  	    <div class="card_crop_img col-xs-12">
		            <img src="resources/img/profile_`+response.cropName+`.jpg" style="height: 150px; width: 100%; border-radius: 10px; margin-bottom:10px;">
		          </div>
		         <div class="card_crop_list col-xs-8">
		  	     <ul class="col-xs-12 profile_ul">
		           	<li class="col-xs-12">이름 : `+response.cropKor+`</li>
		              <li class="col-xs-12">종 분류 : `+response.cropVariety+`</li>
		              <li class="col-xs-12">재배 시기 : `+response.cropGrow+`</li>
		              <li class="col-xs-12">특이사항 : `+response.cropSpecial+`</li>
		            </ul>
		          </div>
		  	  </div>
		  	  		              <div class="card_footer row">
                        <div class="hPrice_btn_box offset-md-1 col-md-5 offset-2 col-8 offset-2 mb-3">
                          <input type="button" id="hPrice_btn" data-toggle="modal" data-target="#hPrice_draw" style="width: 100%;" value="경매 단가 확인">
                        </div>
                        <div class="hPrice_btn_box offset-md-1 col-md-4 offset-2 col-8 offset-2 mb-3">
                          <input type="button" id="yield_btn" data-toggle="modal" data-target="#yield_draw" style="width: 100%;" value="생산량 확인">
                        </div>
                      </div>
		  	  `;
		  	  
		  	  let selectCrop_kor =response.cropKor
		  	  
		  	  const hPrice_btn = document.querySelector("#hPrice_btn");
		  	  const yield_btn = document.querySelector("#yield_btn");
		  	  
		  	  hPrice_btn.addEventListener("click" ,() => {
		  		 hPrice_btn_fun(selectedCrop, selectCrop_kor);
		  	  });
		  	  
		  	  yield_btn.addEventListener("click" ,() => {
		  		  yield_btn_fun(selectedCrop, selectCrop_kor);
		  	  });
		  	 
			  	
			  	
			  	
//		    	const crop_info_up = document.querySelector(".crop-info-up")
//		    	
//	            let str = "";
//		    	
//	            str += "<h3>" +revenueArr[1].trim()+ " 세부 정보</h3>"+
//	            			"<div class='info-up-" +revenueArr[0].trim()+ "'>"+
//	            				"<img src='../img/circle_"+revenueArr[0].trim()+".png' alt='"+revenueArr[1]+"' />"+
//	            					"<ul>"+
//	                					"<li>이름: " +revenueArr[1].trim()+ "</li>"+
//	            						"<li>품종: " +revenueArr[2].trim()+ "</li>"+
//	                					"<li>수확시기: " +revenueArr[3].trim()+ "</li>"+
//	                					"<li>특징: " +revenueArr[4].trim()+ "</li>"+
//	            					"</ul>"+
//	            			"</div>"
//	            
	            
	            
//	            cropProfileList();
//	           	농작물 경매 단가 & 생산량 차트
//	            drawChartHpriceYield(selectCrop);

		    },
		    error: function() {
		      console.log("서버 요청 실패");
		    }
		  });
	  

}






//매출 확인 버튼 클릭시 이벤트
const total_sales_chart = document.querySelector("#total_sales_chart");
const total_cost = document.querySelector(".total_cost");
const cost_sigungu = document.querySelector(".cost_sigungu");
const cost_crop = document.querySelector(".cost_crop");

let salesResult = null;
let cropKor = null;
let areaKor = null;

//농작물 검색 조건
total_sales_chart.addEventListener("click", (e) => {
	let checkedValueCrop = null;
	let checkedValueArea = null;
	
	const selectCrops = document.querySelectorAll('input[name="flexRadioDefault"]');
	
	selectCrops.forEach((selectCrop) => {
	  if (selectCrop.checked) {
	    checkedValueCrop = selectCrop.value;
	  }
	});
	
	//지역 검색 조건
	const selectAreas = document.querySelectorAll('input[name="select_area_radio_name"]');
	

	selectAreas.forEach((selectArea) => {
	  if (selectArea.checked) {
	    checkedValueArea = selectArea.value;
	  }
	});
	
	//조건 미선택시 기능 동작 x
	if (checkedValueCrop == null || checkedValueArea == null) {
		alert("농작물과 지역 모두 선택 해주세요.");
		e.stopPropagation();
		e.preventDefault(); // 기본 동작 방지
		} else {
	
		//모달 title에 농작물 이름 받아오기
		let checkedIndex = -1;

		for (let i = 0; i < selectCrops.length; i++) {
		  if (selectCrops[i].checked) {
		    checkedIndex = i;
		    break; // 체크된 요소를 찾았으면 반복문 종료
		  }
		}
		const form_check_label = document.querySelectorAll(".form-check-label");
		// 서버에 비동기 요청 보내기 (AJAX) 비용 받아오기
	  $.ajax({
	    type: "POST",
	    url: "salesText", // 서버에서 데이터를 가져올 URL (받아올 데이터에 맞게 변경)
	    data: { selectCrop : checkedValueCrop,
	    		selectArea : checkedValueArea,},
	    success: function(response) {
	    	alert("salesText 연결 성공")
	    	    // JSON 형식의 문자열을 JavaScript 객체 또는 배열로 변환
	    	let revenueArr = response;

	    	//revenu1의 form갑 salesResult 설정
	    	salesResult = revenueArr[revenueArr.length - 1].toLocaleString();
	    	document.querySelector(".salesResult").value = salesResult;
	    	total_cost.innerHTML = salesResult;
	    	

	    	cropKor =  form_check_label[checkedIndex].innerHTML;
	    	cost_crop.innerHTML = cropKor;
	    	cost_sigungu.innerHTML = checkedValueArea;
	    	
	    	areaKor = checkedValueArea;
	    	
	    	console.log("areaKor : "+areaKor);
	    	
	    	console.log("cropKor : " + cropKor);
	    	console.log(revenueArr);
	    	
	    	//차트 그리는 메소드
	    	drawChart(revenueArr);
	    },
	    error: function() {
	      console.log("서버 요청 실패");
	    }
	  });
	}
});


//차트 그리는 메소드
function drawChart(data) {
	  // 이 부분에서 받은 데이터(data)를 사용하여 그래프를 그리는 로직을 작성합니다.
	  // 예시: Chart.js를 사용하여 그래프를 그리는 경우
	  // Chart.js가 먼저 페이지에 로드되어 있어야 합니다.
	
	const divisionData = data.map((value) => value / 10000);
	console.log("divisionData : " + divisionData)
	console.log("data : " + data)
	
	let existingChart = Chart.getChart('mychart');
	if (existingChart) {
		existingChart.destroy();
	}
	
	var chart_data = {
			  labels: [
			    2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014,
			    2015, 2016, 2017, 2018, 2019, 2020, 2021, 2023,
			  ],
			  datasets: [
			    {
			      label: "매출 추이(10a, 원)",
			      data: divisionData,
			      fill: false,
			      borderColor: "rgb(207, 142, 255)",
			      tension: 0.3,
			    },
			  ],
			};
			var ctx = document.getElementById("mychart").getContext("2d");
			var myChart = new Chart(ctx, {
			  type: "line",
			  data: chart_data,
			  options: {},
			});	
	}
	



//if문으로 데이터 null시 데이터를 분석 하라는 메세지와 함께 저장하기
//저장할때 더 직관적으로 보이는 데이터 값 생각 해보기
const total_sales_submit = document.querySelector("#total_sales_submit");
const selectCropKor = document.querySelector(".selectCropKor");
const selectAreaKor = document.querySelector(".selectAreaKor");

total_sales_submit.addEventListener("click", (e) => {
	
	if (salesResult == null) {
		alert("매출을 먼저 확인 해주세요");
		e.preventDefault();
		e.stopPropagation();
	}else {
		selectCropKor.value = cropKor;
		selectAreaKor.value = areaKor;
		alert("저장되었습니다");
	}
});



//경매 단가 그래프 모달창
function hPrice_btn_fun(selectCrop, selectCrop_kor) {
		  $.ajax({
			    type: "POST",
			    url: "getCropHpriceYield",
			    data: { selectCrop : selectCrop,},
//			    dataType: "json",
			    success: function(response) {
			    	alert("getCropHpriceYield 연결 성공")
			    	console.log("response : " + response);
			    	
			    	let year = [];
			    	for(let i=0; i<response.length; i++){
			    		year.push(Number(response[i][0]));
			    	}
			    	console.log(year);
			    	
			    	hPrice_draw(response, selectCrop_kor);
			    	
			    },
			    error: function() {
			      console.log("getCropHpriceYield 서버 요청 실패");
			    }
			  });


}

//경매 단가 차트 그리기
function hPrice_draw(response, selectCrop_kor) {
let hPrice = [];
	
	for(let i=0; i<response.length; i++){
		hPrice.push(Number(response[i][1]));
	}
	
	let existingChart = Chart.getChart("chart_price");
	if (existingChart) {
		existingChart.destroy();
	}
	
	
	var hPrice_data = {
			  labels: [2017, 2018, 2019, 2020, 2021],
			  datasets: [
			    {
			      label: selectCrop_kor+" 경매 단가 추이",
			      data: hPrice,
			      fill: false,
			      borderColor: "rgb(207, 142, 255)",
			      tension: 0.2,
			    },
			  ],
			};
			var ctx = document.getElementById("chart_price").getContext("2d");
			var myChart = new Chart(ctx, {
			  type: "line",
			  data: hPrice_data,
			  options: {},
			});	
}




//생산량 그래프 모달창
function yield_btn_fun(selectCrop, selectCrop_kor) {
	  $.ajax({
		    type: "POST",
		    url: "getCropHpriceYield",
		    data: { selectCrop : selectCrop,},
//		    dataType: "json",
		    success: function(response) {
		    	alert("getCropHpriceYield 연결 성공")
		    	console.log("response : " + response);
		    	
		    	let year = [];
		    	for(let i=0; i<response.length; i++){
		    		year.push(Number(response[i][0]));
		    	}
		    	
		    	console.log(year);
		    	
		    	yield_draw(response, selectCrop_kor);
		    },
		    error: function() {
		      console.log("getCropHpriceYield 서버 요청 실패");
		    }
		  });
}

//생산량 차트 그리기
function yield_draw(response, selectCrop_kor) {
let yield_arr = [];
	
	for(let i=0; i<response.length; i++){
		yield_arr.push(Number(response[i][2]));
	}
	
	let existingChart = Chart.getChart("chart_yield");
	if (existingChart) {
		existingChart.destroy();
	}
	
	
	var yield_data = {
			  labels: [2017, 2018, 2019, 2020, 2021],
			  datasets: [
			    {
			      label: selectCrop_kor+" 생산량 추이",
			      data: yield_arr,
			      fill: false,
			      borderColor: "rgb(207, 142, 255)",
			      tension: 0.2,
			    },
			  ],
			};
			var ctx = document.getElementById("chart_yield").getContext("2d");
			var myChart = new Chart(ctx, {
			  type: "line",
			  data: yield_data,
			  options: {},
			});	
	}








