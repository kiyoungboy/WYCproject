const showGraph = document.querySelector(".graph_image");
const showValue = document.querySelector(".hide_value");
const showDefault = document.querySelector(".default_message");




const yieldOption = document.querySelectorAll('input[name="yield_size"]');
const farmerOption = document.querySelectorAll('input[name="farmer_count"]');
const fcostOption = document.querySelectorAll('input[name="add_Fcost"]');


	var profitData = {
			labels: ['매출', '비용', '수익'],
			datasets: [{
				label: '단위:원',
				data:[resultRevenue,resultCost,profit],
				backgroundColor: ['rgb(54, 162, 235, 0.5)', 'rgb(255, 99, 132, 0.5)', 'rgb(100, 192, 192, 0.5)'],
			    borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)', 'rgba(75, 192, 192, 1)'],
			    borderWidth:2
			}]
	};

	var ctx = document.getElementById('profit_graph').getContext('2d');
	var myChart = new Chart(ctx, {
	type: 'bar',
	data: profitData,
	options: {
	    plugins:{
	        title: {
	            // display:true,
	            // text:'내년 곡성 딸기 예상 수익',
	            // fontstyle:'bold',
	            // fontSize: 30,
	        },
	        legend: {
	            display: false,
	        },

	    },
	    maxBarThickness:100
	}
	});
	
	yieldOption.forEach(option =>{option.addEventListener('change', yieldChange);});
	farmerOption.forEach(option =>{option.addEventListener('change', farmerChange);});
	fcostOption.forEach(option =>{option.addEventListener('change', fcostChange);});

	var yieldPoint = 1;
	var farmerPoint = 1;
	var fcostPoint = 0;
	const graphText = document.querySelector(".graphText");
	graphText.innerHTML = "매출은 " + parseInt(resultRevenue).toLocaleString() +"원, 비용은 "+resultCost.toLocaleString()+"원 그리고<br>수익은 "+profit.toLocaleString()+"원 입니다.";
function yieldChange(event){
	if(event.target.value === "10"){
		yieldPoint = 1;
		resultRevenue = revenue*1;
	}else if(event.target.value === "20"){
		yieldPoint = 1.95;
		resultRevenue = revenue*2;
	}else if(event.target.value === "30"){
		yieldPoint = 2.9;
		resultRevenue = revenue*3;
	}else if(event.target.value === "40"){
		yieldPoint = 3.85;
		resultRevenue = revenue*4;
	}
	resultCost = Math.floor(parseFloat(pureCost)*yieldPoint*farmerPoint+fcostPoint-parseFloat(totalSubsidy));
	profit = resultRevenue- resultCost;
	console.log('resultCost: '+resultCost);
	console.log('resultRevenue: '+resultRevenue);
	console.log('profit:'+profit);
	graphText.innerHTML = "매출은 " +  parseInt(resultRevenue).toLocaleString() +"원, 비용은 "+resultCost.toLocaleString()+"원 그리고<br>수익은 "+profit.toLocaleString()+"원 입니다.";
	myChart.data.datasets[0].data = [resultRevenue, resultCost, profit];
	myChart.update();
}

	
function farmerChange(event){
	if(event.target.value === "0"){
		farmerPoint = 1;
	}else if(event.target.value === "1"){
		farmerPoint = 1.09;
	}else if(event.target.value === "2"){
		farmerPoint = 1.12;
	}else if(event.target.value === "3"){
		farmerPoint = 1.13;
	}
	resultCost = Math.floor(parseFloat(pureCost)*yieldPoint*farmerPoint+fcostPoint-parseFloat(totalSubsidy));
	profit = resultRevenue- resultCost;
	console.log('resultCost: '+resultCost);
	console.log('resultRevenue: '+resultRevenue);
	console.log('profit:'+profit);
	graphText.innerHTML = "매출은 " +  parseInt(resultRevenue).toLocaleString() +"원, 비용은 "+resultCost.toLocaleString()+"원 그리고<br>수익은 "+profit.toLocaleString()+"원 입니다.";
	myChart.data.datasets[0].data = [resultRevenue, resultCost, profit];
	myChart.update();
}

	
function fcostChange(event){
	if(event.target.value === "0"){
		fcostPoint = 0;
	}else if(event.target.value === "5000"){
		fcostPoint = 50000000;
	}else if(event.target.value === "7500"){
		fcostPoint = 75000000;
	}else if(event.target.value === "10000"){
		fcostPoint = 100000000;
	}
	resultCost = Math.floor(parseFloat(pureCost)*yieldPoint*farmerPoint+fcostPoint-parseFloat(totalSubsidy));
	profit = resultRevenue- resultCost;
	console.log('resultCost: '+resultCost);
	console.log('resultRevenue: '+resultRevenue);
	console.log('profit:'+profit);
	graphText.innerHTML = "매출은 " +  parseInt(resultRevenue).toLocaleString() +"원, 비용은 "+resultCost.toLocaleString()+"원 그리고<br>수익은 "+profit.toLocaleString()+"원 입니다.";
	myChart.data.datasets[0].data = [resultRevenue, resultCost, profit];
	myChart.update();
}


console.log(resultCost);
console.log("1:"+resultRevenue);