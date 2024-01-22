

const select_si_gun_gu = document.querySelectorAll(".recomend-select-si-gun-gu");
const select_si_gun_gu2 = document.querySelector("#recomend-select-JN");
const select_si_do = document.querySelector(".recomend-select-si-do");

select_si_do.addEventListener("change", ()=>{
    for(let i=0; i<select_si_do.length; i++){
        select_si_gun_gu[i].classList.add("display_none")
        select_si_gun_gu[i].classList.remove("display_show")
        select_si_gun_gu[i].selectedIndex = null
    }
    select_si_gun_gu[select_si_do.selectedIndex].classList.remove("display_none")
})

const select_btn = document.querySelector(".select-btn");
const select_result = document.querySelector(".JN-result");
const select_view = document.querySelector(".recomend-view > div");
const result_text = document.querySelector("#textBox");
const textBox = document.querySelector(".textBox");



select_btn.addEventListener("click",()=>{
            
            select_view.style.display="flex";
            result_text.style.display="flex";
            textBox.classList.remove('display-hide');
            select_result.classList.remove('display-hide');

});

const selected_list = document.querySelectorAll(".recommend-area-list-checked");
let areaData = null;

selected_list.forEach(li => {
	li.addEventListener('click', ()=>{
		selected_list.forEach(item => {
			item.classList.remove('active');
		});
		li.classList.add('active');
		
		if(li.classList.contains('active')){
			const getValue = li.getAttribute('value');
			areaData = getValue;
		}
		

	});
});


const recommend_condition2 = document.querySelector(".select-recommend-condition3");


selected_list.forEach(li => {
	li.addEventListener('click',()=>{
		if(!recommend_condition2.classList.contains('display-hide')){
			recommend_condition2.classList.add('display-hide');
		}
		recommend_condition2.classList.remove('display-hide');
	});
});

const selected_condition = document.querySelectorAll('.condition-checked');
let conditionValues= null;

selected_condition.forEach(li => {
	li.addEventListener('click', ()=>{
		const isActive = li.classList.contains('active');
		if(!isActive){
			li.classList.add('active');
			const getConditionValues = Array.from(selected_condition).filter(item=> item.classList.contains('active')).map(item=>item.getAttribute('value'));
			conditionValues = getConditionValues.join(',');
		}else{
			li.classList.remove('active');
		}
	});
});






var myChart;
function sendAjaxRequest() {
	
	const recommendResult = document.querySelector(".resultValue");
	if (myChart) {
		myChart.destroy();
	}	
	
	$.ajax({
		type : 'GET',
		url : 'recommendRank',
		data : {
			areaData : areaData,
			conditionData : conditionValues
		},
		success : function(response){
			console.log("rr"+response);
		      
			var recommendData = {
					labels: ['매출', '비용', '연간 총 노동시간'],
					datasets: [{
						label: '단위:만원,시간',
						data:[response.cropRevenue/10000,response.cropPcost/10000,response.cropWorkTime],
						backgroundColor: ['rgb(54, 162, 235, 0.5)', 'rgb(255, 99, 132, 0.5)', 'rgb(100, 192, 192, 0.5'],
						borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)', 'rgba(75, 192, 192, 1)'],
          			    borderWidth:2
					}]
			};
			console.log(recommendData);
			var ctx = document.getElementById('recommendGraph').getContext('2d');
			console.log('ctx : '+ctx);
			myChart = new Chart(ctx, {
				type: 'bar',
				data: recommendData,
				options: {
              	    plugins:{
              	        title: {
              	        },
              	        legend: {
              	            display: false,
              	        },

              	    },
              	    maxBarThickness:100
				}
			}); 
			
			const recommendArea = document.querySelector(".recommendArea");
			const recommendName = document.querySelector(".recommendCropName");
			const recommendRevenue = document.querySelector(".recommendRevenue");
			const recommendPcost = document.querySelector(".recommendPcost");
			const recommendWorkTime = document.querySelector(".recommendWorkTime");
			
			recommendArea.textContent = areaData;
			recommendName.textContent = response.cropName;
			recommendRevenue.textContent = response.cropRevenue;
			recommendPcost.textContent = response.cropPcost;
			recommendWorkTime.textContent = response.cropWorkTime;
		},
		error : function(error){
			console.log("실패");
		}
	});
}

const search_btn = document.querySelector(".searchBtn");
const result_recommend = document.querySelector(".result-recommend-condition2");

//"active" 클래스가 지정된 요소를 선택
const activeElements = document.querySelectorAll(".activeR");

// 선택한 요소를 자동으로 활성화(선택)

	activeElements.forEach(function(element) {
	    element.click(); // 클릭 이벤트를 트리거하여 활성화
	});


search_btn.addEventListener('click',()=>{
	const hasActive = Array.from(selected_condition).some(li => li.classList.contains('active'));
	if(hasActive){
		if(!result_recommend.classList.contains('display-hide')){
			result_recommend.classList.add('display-hide');
			
		}
		result_recommend.classList.remove('display-hide');
		sendAjaxRequest();
	}
});

document.addEventListener("DOMContentLoaded", function() {
	search_btn.click();
});