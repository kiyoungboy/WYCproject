const cropSelect = document.querySelector(".wyc-select-crop");
const cropInfo = document.querySelector(".wyc-info-crop");
const cropMap = document.querySelector(".wyc-map");
//지역버튼
const boseong = document.querySelector(".wyc-boseong");
const damyang = document.querySelector(".wyc-damyang");
const gangjin = document.querySelector(".wyc-gangjin");
const goheung = document.querySelector(".wyc-goheung");
const gokseong = document.querySelector(".wyc-gokseong");
const gurye = document.querySelector(".wyc-gurye");
const gwangyang = document.querySelector(".wyc-gwangyang");
const haenam = document.querySelector(".wyc-haenam");
const hampyeng = document.querySelector(".wyc-hampyeng");
const hwasun = document.querySelector(".wyc-hwasun");
const jangheung = document.querySelector(".wyc-jangheung");
const jangseung = document.querySelector(".wyc-jangseung");
const jindo = document.querySelector(".wyc-jindo");
const mokpo = document.querySelector(".wyc-mokpo");
const muan = document.querySelector(".wyc-muan");
const naju = document.querySelector(".wyc-naju");
const sinan = document.querySelector(".wyc-sinan");
const suncheon = document.querySelector(".wyc-suncheon");
const wando = document.querySelector(".wyc-wando");
const yeongam = document.querySelector(".wyc-yeongam");
const yeonggwang = document.querySelector(".wyc-yeonggwang");
const yeosu = document.querySelector(".wyc-yeosu");
const areas = [
  boseong,
  damyang,
  gangjin,
  goheung,
  gokseong,
  gurye,
  gwangyang,
  haenam,
  hampyeng,
  hwasun,
  jangheung,
  jangseung,
  jindo,
  mokpo,
  muan,
  naju,
  sinan,
  suncheon,
  wando,
  yeongam,
  yeonggwang,
  yeosu,
];
//농작물 이름
const chives = document.querySelector(".chives");
const cucumber = document.querySelector(".cucumber");
const garlic = document.querySelector(".garlic");
const greenonion = document.querySelector(".greenonion");
const grape = document.querySelector(".grape");
const kiwi = document.querySelector(".kiwi");
const onion = document.querySelector(".onion");
const peach = document.querySelector(".peach");
const pepper = document.querySelector(".pepper");
const rice = document.querySelector(".rice");
const spinach = document.querySelector(".spinach");
const stberry = document.querySelector(".stberry");
const spotato = document.querySelector(".spotato");
const tomato = document.querySelector(".tomato");
const crops = [
  chives,
  cucumber,
  garlic,
  grape,
  greenonion,
  kiwi,
  onion,
  peach,
  pepper,
  rice,
  spinach,
  stberry,
  spotato,
  tomato,
];

//농작물 화이트보드 이름
const whiteBoardChives = document.querySelector(".white-board-chives");
const whiteBoardCucumber = document.querySelector(".white-board-cucumber");
const whiteBoardGarlic = document.querySelector(".white-board-garlic");
const whiteBoardGrape = document.querySelector(".white-board-grape");
const whiteBoardGreenonion = document.querySelector(".white-board-greenonion");
const whiteBoardKiwi = document.querySelector(".white-board-kiwi");
const whiteBoardPeach = document.querySelector(".white-board-peach");
const whiteBoardPepper = document.querySelector(".white-board-pepper");
const whiteBoardOnion = document.querySelector(".white-board-onion");
const whiteBoardRice = document.querySelector(".white-board-rice");
const whiteBoardSpinach = document.querySelector(".white-board-spinach");
const whiteBoardStberry = document.querySelector(".white-board-stberry");
const whiteBoardSpotato = document.querySelector(".white-board-spotato");
const whiteBoardTomato = document.querySelector(".white-board-tomato");
const whiteBoards = [
  whiteBoardChives,
  whiteBoardCucumber,
  whiteBoardGarlic,
  whiteBoardGrape,
  whiteBoardGreenonion,
  whiteBoardKiwi,
  whiteBoardOnion,
  whiteBoardPeach,
  whiteBoardPepper,
  whiteBoardRice,
  whiteBoardSpinach,
  whiteBoardSpotato,
  whiteBoardStberry,
  whiteBoardTomato,
];

//농작물 이름표시
const chivesText = document.querySelector(".chives-text");
const cucumberText = document.querySelector(".cucumber-text");
const garlicText = document.querySelector(".garlic-text");
const grapeText = document.querySelector(".grape-text");
const greenonionText = document.querySelector(".greenonion-text");
const kiwiText = document.querySelector(".kiwi-text");
const onionText = document.querySelector(".onion-text");
const peachText = document.querySelector(".peach-text");
const pepperText = document.querySelector(".pepper-text");
const riceText = document.querySelector(".rice-text");
const spinachText = document.querySelector(".spinach-text");
const stberryText = document.querySelector(".stberry-text");
const spotatoText = document.querySelector(".spotato-text");
const tomatoText = document.querySelector(".tomato-text");

//info up-down창
const info_up_chives = document.querySelector(".info-up-chives");
const info_down_chives = document.querySelector(".info-down-chives");
const info_up_cucumber = document.querySelector(".info-up-cucumber");
const info_down_cucumber = document.querySelector(".info-down-cucumber");
const info_up_garlic = document.querySelector(".info-up-garlic");
const info_down_garlic = document.querySelector(".info-down-garlic");
const info_up_grape = document.querySelector(".info-up-grape");
const info_down_grape = document.querySelector(".info-down-grape");
const info_up_greenonion = document.querySelector(".info-up-greenonion");
const info_down_greenonion = document.querySelector(".info-down-greenonion");
const info_up_kiwi = document.querySelector(".info-up-kiwi");
const info_down_kiwi = document.querySelector(".info-down-kiwi");
const info_up_onion = document.querySelector(".info-up-onion");
const info_down_onion = document.querySelector(".info-down-onion");
const info_up_peach = document.querySelector(".info-up-peach");
const info_down_peach = document.querySelector(".info-down-peach");
const info_up_pepper = document.querySelector(".info-up-pepper");
const info_down_pepper = document.querySelector(".info-down-pepper");
const info_up_rice = document.querySelector(".info-up-rice");
const info_down_rice = document.querySelector(".info-down-rice");
const info_up_spinach = document.querySelector(".info-up-spinach");
const info_down_spinach = document.querySelector(".info-down-spinach");
const info_up_stberry = document.querySelector(".info-up-stberry");
const info_down_stberry = document.querySelector(".info-down-stberry");
const info_up_spotato = document.querySelector(".info-up-spotato");
const info_down_spotato = document.querySelector(".info-down-spotato");
const info_up_tomato = document.querySelector(".info-up-tomato");
const info_down_tomato = document.querySelector(".info-down-tomato");
const infoUps = [
  info_up_chives,
  info_up_cucumber,
  info_up_garlic,
  info_up_grape,
  info_up_greenonion,
  info_up_kiwi,
  info_up_onion,
  info_up_peach,
  info_up_pepper,
  info_up_rice,
  info_up_spinach,
  info_up_stberry,
  info_up_spotato,
  info_up_tomato,
];
const infoDowns = [
  info_down_chives,
  info_down_cucumber,
  info_down_garlic,
  info_down_grape,
  info_down_greenonion,
  info_down_kiwi,
  info_down_onion,
  info_down_peach,
  info_down_pepper,
  info_down_rice,
  info_down_spinach,
  info_down_stberry,
  info_down_spotato,
  info_down_tomato,
];

//버튼
const btnSubmit = document.querySelector(".wyc-submit");
const btnReset = document.querySelector(".wyc-reset");
const btnCloseModal = document.querySelector("#close-modal2");

//모달컨테이너
const modalBox = document.querySelector("#modal-container2.modal-hidden2");

//모달수익그래프 칸
const modalChives = document.querySelector(".modal-chives");
const modalCucumber = document.querySelector(".modal-cucumber");
const modalGarlic = document.querySelector(".modal-garlic");
const modalGrape = document.querySelector(".modal-grape");
const modalGreenonion = document.querySelector(".modal-greenonion");
const modalKiwi = document.querySelector(".modal-kiwi");
const modalOnion = document.querySelector(".modal-onion");
const modalPeach = document.querySelector(".modal-peach");
const modalPepper = document.querySelector(".modal-pepper");
const modalRice = document.querySelector(".modal-rice");
const modalSpinach = document.querySelector(".modal-spinach");
const modalStberry = document.querySelector(".modal-stberry");
const modalSpotato = document.querySelector(".modal-spotato");
const modalTomato = document.querySelector(".modal-tomato");

const modals = [
  modalChives,
  modalCucumber,
  modalGarlic,
  modalGrape,
  modalGreenonion,
  modalKiwi,
  modalOnion,
  modalPeach,
  modalPepper,
  modalRice,
  modalSpinach,
  modalStberry,
  modalSpotato,
  modalTomato,
];

//머리말?
const sec2 = document.querySelector(".sec2");
const sec3 = document.querySelector(".sec3");


let areaKor = null;

//지역버튼 클릭시 재배 가능 작물 리스트 제공
const wyc_area_button = document.querySelectorAll(".wyc_area_button");

for (let crop of wyc_area_button) {
  crop.addEventListener("click", () => {
	  let selectArea = crop.classList[0].substring(4);
	  console.log(selectArea);
	  
		// 서버에 비동기 요청 보내기 (AJAX) 비용 받아오기
	  $.ajax({
	    type: "POST",
	    url: "getAreaCropList", // 서버에서 데이터를 가져올 URL (받아올 데이터에 맞게 변경)
	    data: { areaCrop : selectArea,},
//	    dataType: "json",
	    success: function(response) {
	    	alert("getAreaCropList 연결 성공")

	    	console.log("response : " + response);
	    	
	    	const wyc_table = document.querySelector(".wyc-table");
	    	const wyc_table_title = document.querySelector(".wyc_table_title");
	    	
	    	areaKor = response[0].area_name;
	    	
            let str = "";
            for(let i=0; i<response.length; i++){
            	str += "<div class='" +response[i].crop_eng+ " crop_list'>"+
            			"<img src='resources/img/" +response[i].crop_eng+ "-list.jpg'"+
            				"alt='" +response[i].crop_name+ "'"+
            				"id='" +response[i].crop_eng+ "-img'/>"+
            			"<div class='white-board-" +response[i].crop_eng+ " WBC'>"+
            				"<p class='" +response[i].crop_eng+ "-text'>" +response[i].crop_name+ "</p>"+
            			"</div>"+
            		"</div>";
            }
            	wyc_table.innerHTML = str;
            	wyc_table_title.innerHTML = areaKor + " 추천 농작물";
	    	
	    	  cropSelect.style.display = "block";
	    	  sec2.style.display = "block";
	    	  window.scrollTo(0, 1000, { behavior: "smooth" });
	    	
	    	  //작물 리스트 이미지 오버/아웃시 이벤트
	    	  cropOverOut();
	    	  
	    	  //작물 프로필 정보
	    	  crop_list_select();

	    },
	    error: function() {
	      console.log("서버 요청 실패");
	    }
	  });
  });

}

let cropKor = null;
let cropEng = null;

//작물  상세정보 프로필/리스트 제공 메서드
function crop_list_select() {
	const crop_lists = document.querySelectorAll(".crop_list");
//	const WBCS = document.querySelectorAll(".WBC");

	for (let crop_list of crop_lists) {
		crop_list.addEventListener("click", () => {
			let selectCrop = crop_list.classList[0];
			cropKor = crop_list.querySelector("p").innerHTML;

			  $.ajax({
				    type: "POST",
				    url: "getCropProfile",
				    data: { selectCrop : selectCrop,},
//				    dataType: "json",
				    success: function(response) {
				    	alert("getCropProfile 연결 성공")
				    	console.log("response : " + response);
				    	
				    	cropEng = response.cropName;
				    	
				    	const crop_info_up = document.querySelector(".crop-info-up")
				    	
				    	
				    			  	  crop_info_up.innerHTML =
		  	    `
		  	  <div class="page-content page-container" id="page-content">
		  	  <div class="row gutter_0">
		  	  <div class="card card_custom gutter_0">
		  	  <div class="card-header gutter_0 bg_custom">
		  	  <strong class="card_title">`+response.cropKor+` 상세 정보</strong>
		  	  </div>
		  	  <div class="card-body row gutter_0">
		  	    <div class="card_crop_img col-lg-4 col-xs-4">
		            <img src="resources/img/profile_`+response.cropName+`.jpg" style="height: 200px; width: 100%; border-radius: 10px; margin-bottom:10px;">
		          </div>
		         <div class="card_crop_list col-lg-8 col-xs-8">
		  	     <ul class="col-xs-12 profile_ul">
		           	<li class="col-xs-12">이름 : `+response.cropKor+`</li>
		              <li class="col-xs-12">종 분류 : `+response.cropVariety+`</li>
		              <li class="col-xs-12">재배 시기 : `+response.cropGrow+`</li>
		              <li class="col-xs-12">특이사항 : `+response.cropSpecial+`</li>
		            </ul>
		          </div>
		  	  </div>`;
//			            let str = "";
//				    	
//			            str += "<h3>" +revenueArr[1].trim()+ " 세부 정보</h3>"+
//			            			"<div class='info-up-" +revenueArr[0].trim()+ "'>"+
//			            				"<img src='../img/circle_"+revenueArr[0].trim()+".png' alt='"+revenueArr[1]+"' />"+
//			            					"<ul>"+
//			                					"<li>이름: " +revenueArr[1].trim()+ "</li>"+
//			            						"<li>품종: " +revenueArr[2].trim()+ "</li>"+
//			                					"<li>수확시기: " +revenueArr[3].trim()+ "</li>"+
//			                					"<li>특징: " +revenueArr[4].trim()+ "</li>"+
//			            					"</ul>"+
//			            			"</div>"
//			            
//			            crop_info_up.innerHTML = str;
			            
			            
			            cropProfileList();
//			           	농작물 경매 단가 & 생산량 차트
			            drawChartHpriceYield(selectCrop);
			            
				    },
				    error: function() {
				      console.log("서버 요청 실패");
				    }
				  });
		  });
	}
}

//작물 프로필/리스트 정보 스크롤 및 타이틀 등 제공
function cropProfileList() {
	for (let i = 0; i < crops.length; i++) {
	    cropInfo.style.display = "block";
	    btnSubmit.style.display = "block";
	    sec3.style.display = "block";
	    window.scrollTo(0, 1500, { behavior: "smooth" });
	}
}


//작물이름 오버 & 아웃시
function cropOverOut() {
	  const crop_lists = document.querySelectorAll(".crop_list");
	  const WBCS = document.querySelectorAll(".WBC");

	  for (let i = 0; i < crop_lists.length; i++) {
	    const crop_list = crop_lists[i];
	    const WBC = WBCS[i]; // 해당 인덱스의 WBC 요소와 매칭

	    WBC.addEventListener("mouseover", () => {
	      WBC.style.display = "none";
	    });

	    crop_list.addEventListener("mouseover", () => {
	      WBC.style.display = "none";
	    });

	    crop_list.addEventListener("mouseout", () => {
	      WBC.style.display = "block";
	    });
	  }
	}




//농작물 경매 단가 & 생산량 차트
function drawChartHpriceYield(selectCrop) {
	console.log("selectAreaData : " + selectCrop)
	
				  $.ajax({
				    type: "POST",
				    url: "getCropHpriceYield",
				    data: { selectCrop : selectCrop,},
//				    dataType: "json",
				    success: function(response) {
				    	alert("getCropHpriceYield 연결 성공")
				    	console.log("response : " + response);
				    	
				    	let year = [];
				    	for(let i=0; i<response.length; i++){
				    		year.push(Number(response[i][0]));
				    	}
				    	
				    	console.log(year);
				    	
				    	drawChartHprice(selectCrop, year, response);
				    	drawChartYield(selectCrop, year, response);

				    },
				    error: function() {
				      console.log("getCropHpriceYield 서버 요청 실패");
				    }
				  });
	}


//농작물 경매단가 차트
function drawChartHprice(selectCrop, year, response) {
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
			      label: cropKor+" 경매 단가 추이",
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


//농작물 생산량 차트
function drawChartYield(selectCrop, year, response) {
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
			      label: cropKor+" 생산량 추이",
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

//버튼리셋
btnReset.addEventListener("click", () => {
  document.body.scrollTo = (0, 0, { behavior: "smooth" });
  cropInfo.style.display = "none";
  sec3.style.display = "none";
  cropSelect.style.display = "none";
  sec2.style.display = "none";
  btnSubmit.style.display = "none";
});


//모달 저장
const btnModalSubmit = document.querySelector("#submit-modal");

//저장출력
//btnSubmit.addEventListener("click", () => {
//  alert("저장 되었습니다.");
//});


const total_sales_chart = document.querySelector("#total_sales_chart");
const cost_crop = document.querySelector(".cost_crop");
const cost_sigungu = document.querySelector(".cost_sigungu");
const cost_total = document.querySelector(".cost_total");

document.querySelector(".selectCrop").value = cropEng;
document.querySelector(".selectArea").value = areaKor;

btnSubmit.addEventListener("click", () => {
		console.log(cropEng);
		console.log(areaKor);
		// 서버에 비동기 요청 보내기 (AJAX) 비용 받아오기
	
	  $.ajax({
	    type: "POST",
	    url: "salesText", // 서버에서 데이터를 가져올 URL (받아올 데이터에 맞게 변경)
	    data: { selectCrop : cropEng,
	    		selectArea : areaKor,},
	    success: function(response) {
	    	alert("salesText 연결 성공")
	    	console.log('response '+response);
	    	// JSON 형식의 문자열을 JavaScript 객체 또는 배열로 변환
	    	let revenueArr =response;
	    	console.log('revenueArr '+ revenueArr);
	    	
	    	//revenu1의 form갑 salesResult 설정
	    	const salesResult = revenueArr[revenueArr.length - 1].toLocaleString();
	    	

	    	document.querySelector(".salesResult").value = salesResult;
	    	
	    	cost_crop.innerHTML = cropKor;
	    	cost_sigungu.innerHTML = areaKor;
	    	cost_total.innerHTML = salesResult;
	    	
	    	//수정중
//	    	modalBox.style.display = "block";

	    	console.log(revenueArr);
	    	
	    	//차트 그리는 메소드
	    	drawChart(revenueArr);
	    },
	    error: function() {
	      console.log("서버 요청 실패");
	    }
	  });
//	}
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


const submit_cost = document.querySelector(".submit_cost");
const selectCropKor = document.querySelector(".selectCropKor");
const selectAreaKor = document.querySelector(".selectAreaKor");

submit_cost.addEventListener("click", () => {
	selectCropKor.value = cropKor;
	selectAreaKor.value = areaKor;
	alert("저장 되었습니다.");
})