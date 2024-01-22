//시작시 매출에서 넘어온 데이터 선택
document.addEventListener("DOMContentLoaded", function(){
	console.log(crop+"2");
	var checkedCrop = document.getElementsByName("crop_policy_checkbox");
	checkedCrop.forEach(function(radio){
		if(radio.value === crop){
			radio.click();
		}
	});
	
	var checkedArea = document.getElementsByName("select_area_radio_2");
	checkedArea.forEach(function(radio){
		if(radio.value === area){
			radio.click();
		}
	});
});




// document.querySelector('input[name="crop_policy_checkbox"]:checked').value;
// 체크박스 체크 여부

const policy_checkbox_label_crop = document.querySelectorAll(
  ".policy_checkbox_label_crop"
);

// const ch_crop = document.querySelectorAll(".ch_crop")

function filter() {
  for (let i = 0; i < policy_checkbox_label_crop.length; i++) {
    policy_checkbox_label_crop[i].classList.add("display_hide");
  }
  const search_text = document.querySelector("#search_text_id").value;

  for (let i = 0; i < policy_checkbox_label_crop.length; i++) {
    const name = policy_checkbox_label_crop[i].innerText;
    if (name.indexOf(search_text) > -1) {
      policy_checkbox_label_crop[i].classList.remove("display_hide");
    }
  }
}

const policy_checkbox_label_area = document.querySelectorAll(
  ".policy_checkbox_label_area"
);
const select_si_gun_gu = document.querySelectorAll(".select_si_gun_gu");

function filter_area() {
  // 일치하는 검색어 제외 요소 display_noneD
  for (let i = 0; i < policy_checkbox_label_area.length; i++) {
    policy_checkbox_label_area[i].classList.add("toggle_hide");
  }
  const search_text_area = document.querySelector("#search_text_area").value;
  const select_si_do = document.querySelectorAll(".select_si_do");

  for (let i = 0; i < policy_checkbox_label_area.length; i++) {
    const name = policy_checkbox_label_area[i].innerHTML;
    if (name.indexOf(search_text_area) > -1) {
      // 일치하는 검색어 제외 시군구 div display_none
      for (let j = 0; j < select_si_gun_gu.length; j++) {
        select_si_gun_gu[j].classList.add("toggle_hide");
      }
      // 광역시/도 버튼 해제
      for (let k = 0; k < select_si_do.length; k++) {
        select_si_do[k].removeAttribute("checked");
      }
      // 일치하는 검색어만 display_none해제
      policy_checkbox_label_area[i].classList.remove("toggle_hide");
      // 일치하는 검색어가 있는 시군구 div 표시
      policy_checkbox_label_area[
        i
      ].parentNode.parentNode.parentNode.classList.remove("toggle_hide");
    }
  }
}

function select_si_do_fun() {
  // 광역시/도 별 시군구 리스트
  const select_si_do = document.querySelectorAll(".select_si_do");
  const select_si_gun_gu = document.querySelectorAll(".select_si_gun_gu");

  for (let i = 0; i < select_si_do.length; i++) {
    select_si_gun_gu[i].classList.add("toggle_hide");
    select_si_gun_gu[i].checked == null;
  }
  for (let i = 0; i < select_si_do.length; i++) {
    if (select_si_do[i].checked == true) {
      select_si_gun_gu[i].classList.add("toggle_show");
      select_si_gun_gu[i].classList.remove("toggle_hide");
    }
  }
}

// 4개 조건마다 다른 선택화면 띄우기
const select_main = document.querySelectorAll(".select_main");
const select_box = document.querySelectorAll(".select_box");

function select_box_change(index) {
  for (let i = 0; i < select_box.length; i++) {
    select_box[i].classList.add("toggle_hide");
    select_box[i].classList.remove("toggle_show");
  }

  select_box[index].classList.add("toggle_show");
  select_box[index].classList.remove("toggle_hide");
}

//검색창 아래 선택한 옵션 이름 표시
const result_box = document.querySelector(".result_box");

function checked_crop_fun() {
//   const checked_crop = document.querySelector('input[name="crop_policy_checkbox"]:checked');
  const result_box = document.querySelector(".result_box");

  for (let i = 0; i < result_box.children.length; i++) {
    if (result_box.children[i].classList.contains("result_innerText_crop")) {
      result_box.children[i].remove();
    }
  }

  let newResult = document.querySelector(
    "input[name=crop_policy_checkbox]:checked"
  ).nextElementSibling.textContent;

  let newDiv = document.createElement("div");
  let newClass = document.createAttribute("class");
  newClass.value = "result_innerText result_innerText_crop wow slideInRight";
  newDiv.setAttributeNode(newClass);

  const newText = document.createTextNode(`${newResult}`);

  newDiv.appendChild(newText);
  result_box.appendChild(newDiv);
  
  const selectedCrop = document.querySelector(
			'input[name="crop_policy_checkbox"]:checked'
	).value;
	updateArea(selectedCrop);
}

function checked_area_fun() {
  const result_box = document.querySelector(".result_box");

  for (let i = 0; i < result_box.children.length; i++) {
    if (result_box.children[i].classList.contains("result_innerText_area")) {
      result_box.children[i].remove();
    }
  }

  let newResult = document.querySelector(
    "input[name=select_area_radio_2]:checked"
  ).nextElementSibling.textContent;

  let newDiv = document.createElement("div");
  let newClass = document.createAttribute("class");
  newClass.value = "result_innerText result_innerText_area wow slideInRight";
  newDiv.setAttributeNode(newClass);

  const newText = document.createTextNode(`${newResult}`);

  newDiv.appendChild(newText);
  result_box.appendChild(newDiv);
}

function checked_age_fun() {
  const result_box = document.querySelector(".result_box");

  for (let i = 0; i < result_box.children.length; i++) {
    if (result_box.children[i].classList.contains("result_innerText_age")) {
      result_box.children[i].remove();
    }
  }

  let newResult = document.querySelector("input[name=select_age_radio]:checked")
    .nextElementSibling.textContent;

  let newDiv = document.createElement("div");
  let newClass = document.createAttribute("class");
  newClass.value = "result_innerText result_innerText_age wow slideInRight";
  newDiv.setAttributeNode(newClass);

  const newText = document.createTextNode(`${newResult}`);

  newDiv.appendChild(newText);
  result_box.appendChild(newDiv);
}

function checked_live_fun() {
  const result_box = document.querySelector(".result_box");

  for (let i = 0; i < result_box.children.length; i++) {
    if (result_box.children[i].classList.contains("result_innerText_live")) {
      result_box.children[i].remove();
    }
  }

  let newResult = document.querySelector(
    "input[name=select_live_radio]:checked"
  ).nextElementSibling.textContent;

  let newDiv = document.createElement("div");
  let newClass = document.createAttribute("class");
  newClass.value = "result_innerText result_innerText_live wow slideInRight";
  newDiv.setAttributeNode(newClass);

  const newText = document.createTextNode(`${newResult}`);

  newDiv.appendChild(newText);
  result_box.appendChild(newDiv);
}





// -----------------------------------------------------------

// page이동 코드

// window.onload = function () {
//   const pageButton = document.querySelectorAll(".pageButton");

//   for (let i = 0; i < pageButton.length; i++) {
//     pageButton[i].addEventListener("click", (e) => {
//       pageButton.forEach(function (btn, i) {
//         if (e.currentTarget == btn) {
//           btn.classList.add("active");
//         } else {
//           btn.classList.remove("active");
//         }
//       });
//     });
//   }
// };

// function change_btn(e) {
//   var btns = document.querySelectorAll(".pageButton");
//   btns.forEach(function (btn, i) {
//     if (e.currentTarget == btn) {
//       btn.classList.add("active");
//     } else {
//       btn.classList.remove("active");
//     }
//   });
//   console.log(e.currentTarget);
// }

const total_cost_submit = document.querySelector("#total_cost_submit");

total_cost_submit.addEventListener("click", () => {
  alert("저장에 성공 했습니다");
});

// function policy_detail(){
//   const open = document.querySelectorAll(".policy_text");
//   const modalBox = document.querySelector("#modal_box");
//   const close = document.querySelector("#modal_close");

//     open.addEventListener("click", () => {
//       modalBox.classList.toggle("active");
//   });

//   close.addEventListener("click", () => {
//       modalBox.classList.toggle("active");
//   });

//   window.addEventListener('click', (e) => {
//     e.target === modalBox ? modalBox.classList.remove('active') : false
//     // console.log(e.target===modalBox)
//   })

//   window.addEventListener("keyup", e => {
//     if(modalBox.style.display === "flex" && e.key === "Escape") {
//         modalBox.style.display = "none"
//     }
//   })
// }

function startComma() {
	  const commaText = document.querySelector(".text3");
	  const dataProductionCost = data.productionCost || 0;
	  const dataFixedCost = data.fixedCost || 0;
	  const totalCost = dataProductionCost + dataFixedCost;
	  commaText.textContent = totalCost.toLocaleString();
	}



const cropAreas = {
		chives :["강진","구례","광양","목포","나주"],
		cucumber :["강진","구례","목포","순천"],
		garlic :["고흥","함평","무안","여수"],
		grape :["담양","장성","목포","여수"],
		greenonion :["구례","해남","진도","신안","완도"],
		kiwi :["보성","곡성","신안"],
		onion :["보성","함평","진도","영광","여수"],
		peach :["광양","화순","장흥","순천"],
		pepper :["고흥","함평","진도","영암"],
		rice :["고흥","해남","화순","무안","완도","영암"],
		spinach :["곡성","장흥","신안","완도"],
		spotato :["해남","무안","영암","영광"],
		stberry :["보성","담양","강진","곡성","장흥","장성","나주","순천","영광"],
		tomato :["담양","광양","화순","장성","나주"]
};


function updateArea(selectedCrop){
	const areaList = document.getElementById("areaList");
	areaList.innerHTML="";
	//재배 가능 지역 목록 생성
	const possibleArea = cropAreas[selectedCrop];
	for(const area of possibleArea){
		const li = document.createElement("li");
		const input = document.createElement("input");
		input.type = "radio";
		input.name = "select_area_radio_2";
		input.value = area;
		input.id = "junlanamdo_"+area;
		input.className = "checked_filter";
		input.onclick = checked_area_fun;
		
		const label = document.createElement("label");
		label.setAttribute("for", "junlanamdo_"+ area);
		label.className = "policy_checkbox_label_area";
		label.textContent = area;
		
		li.appendChild(input);
		li.appendChild(label);
		areaList.appendChild(li);
	}
}

//재배 가능한 지역 목록 업데이트 함수 호출
//function checked_crop_fun(){
//	const selectedCrop = document.querySelector(
//			'input[name="crop_policy_checkbox"]:checked'
//	).value;
//	updateArea(selectedCrop);
//}

//초기에는 첫 번째 농작물 선택 시 해당 농작물의 지역을 표시
const firstCrop = document.querySelector('input[name="crop_policy_checkbox"]');
if (firstCrop) {
  checked_crop_fun();
}
