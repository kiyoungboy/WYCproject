package com.WYC.myapp.farming.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.WYC.myapp.farming.dto.AreaSiGunGuDto;
import com.WYC.myapp.farming.dto.CropCostDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.PolicyDto;
import com.WYC.myapp.farming.service.ICostService;

@Controller
public class CostController {
	
	@Autowired
	ICostService costService;
	
	private static final int LIST_PER_PAGE = 5;
	
	//비용 화면 로드
	@RequestMapping(value="policyList")
	public String policyList(@RequestParam(value="selectCropKor", required=false) String selectCropKor,
																	  @RequestParam(value="selectAreaKor", required=false) String selectAreaKor,
																	  @RequestParam(value="salesResult", required=false) String salesResult,
																	  @RequestParam(value="page", required=false) String page,
																	  HttpSession session,
																	  Model model){
		//조건 선택이 되어 있지 않을 시 default 값으로 '쪽파' 선택
		if(salesResult == null) {
			salesResult = "6318900";
		}
		int getSalesResult = Integer.parseInt(salesResult.replaceAll(",", ""));
		session.setAttribute("salesResult", getSalesResult);
		model.addAttribute("salesResult",getSalesResult);
		
		if(selectCropKor == null) {
			selectCropKor = "쪽파";
		}
		if(selectAreaKor == null) {
			selectAreaKor = "강진";
		}
		if(selectAreaKor.length() ==4) {
			selectAreaKor = selectAreaKor.substring(1,3);
		}
		if(selectAreaKor.length() ==3 ) {
			selectAreaKor = selectAreaKor.substring(0,2);
		}

		selectCropKor = changeToKorean(selectCropKor);
		
		session.setAttribute("selectedCropName", selectCropKor);
		session.setAttribute("selectedAreaName", selectAreaKor);
		model.addAttribute("selectedCropName", selectCropKor);
		model.addAttribute("selectedAreaName", selectAreaKor);
		
		List<PolicyDto> policyList = costService.showList();
		//현재 정책 페이지 번호 불러오기
		int currentPage = 1;
		if(page == null) {
			page = "1";
		}
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		//전체 데이터 수
		int totalData = policyList.size();
		
		//총 페이지수
		int totalPage = (int)Math.ceil((double)totalData/LIST_PER_PAGE);
		
		//현재 페이지에 해당하는 데이터를 선택
		List<PolicyDto> currentDatas = getDataForPage(policyList, currentPage);
		
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("currentDatas", currentDatas);
		
		return "serviceCost";
	}
	
	//농작물, 독립경영, 나이, 지역 조건 선택후 처리
	@RequestMapping(value="costCondition")
	public String costCondition(@RequestParam(value="crop_policy_checkbox", required=false) String cropName,
													@RequestParam(value="select_area_radio_2", required=false) String siGunGuName,
													@RequestParam(value="select_age_radio", required=false) String getAge,
													@RequestParam(value="select_live_radio", required=false) String getFarmingPeriod,
													@RequestParam(value="salesResult", required=false) String getRevenue,
													HttpSession session,
													Model model){
		if( cropName == null  || siGunGuName ==null || getAge == null || getFarmingPeriod == null) {
			session.setAttribute("warningMessage", "조건을 모두 입력해 주세요!!!");
			return "serviceCost";
		}
		
		CropDto cropDto = costService.searchCrop(cropName);
		System.out.println(cropDto);
		int cropCode = cropDto.getCropCode();
		AreaSiGunGuDto siGunGuDto = costService.searchSiGunGu(siGunGuName);
		int siGunGuCode = siGunGuDto.getAreaCode();
		int age = Integer.parseInt(getAge);
		int farmingPeriod = Integer.parseInt(getFarmingPeriod);
		int salesResult = Integer.parseInt(getRevenue);
		
		CropCostDto costDto = costService.searchCost(cropCode);
		System.out.println("costDto:"+costDto);
		int cropCost = costDto.getCropCost();
		
		model.addAttribute("cropCode", cropCode);
		model.addAttribute("siGunGuCode", siGunGuCode);
		model.addAttribute("age", age);
		model.addAttribute("farmingPeriod", farmingPeriod);
		model.addAttribute("salesResult", salesResult);
		model.addAttribute("cropCost", cropCost);
		
		session.setAttribute("cropCode", cropCode);
		session.setAttribute("siGunGuCode", siGunGuCode);
		session.setAttribute("age", age);
		session.setAttribute("farmingPeriod", farmingPeriod);
		session.setAttribute("salesResult", salesResult);
		session.setAttribute("cropName", cropName);
		session.setAttribute("cropCost", cropCost);
		
		
		return "redirect:/policyConditionList";
	}
	
	//조건에 맞는 정책지원금 리스트 조회
	@RequestMapping(value="policyConditionList")
	public String policyConditionList(HttpSession session, Model model, @RequestParam(value="page", required=false) String page) {
		
		String costCrop = (String) session.getAttribute("cropName");
		int siGunGuCode = (int) session.getAttribute("siGunGuCode");
		int age = (int) session.getAttribute("age");
		int farmingPeriod = (int) session.getAttribute("farmingPeriod");
		int cropCost = (int) session.getAttribute("cropCost");
		
		int totalCost = cropCost;
		
		List<PolicyDto> policyList = costService.showConditionList(siGunGuCode, age, farmingPeriod);
		//현재 정책 페이지 번호 불러오기
		int currentPage = 1;
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		//전체 데이터 수
		int totalData = policyList.size();
		
		//총 페이지수
		int totalPage = (int)Math.ceil((double)totalData/LIST_PER_PAGE);
		
		//현재 페이지에 해당하는 데이터를 선택
		List<PolicyDto> currentDatas = getDataForPage(policyList, currentPage);
		
		model.addAttribute("costCrop", costCrop);
		model.addAttribute("totalCost", totalCost);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("currentDatas", currentDatas);
		
		session.setAttribute("costCrop", costCrop);
		session.setAttribute("totalCost", totalCost);
		
		return "serviceCost";
	}
	
	//정책 지원금 적용
	@RequestMapping(value="policySubsidy")
	public String policySubsidy(@RequestParam(value="selectedSubsidy", required=false) String[] selectedSubsidy, 
													@RequestParam(value="costArea", required=false) String costArea,
													@RequestParam(value="costCrop", required=false) String costCrop,
													@RequestParam(value="cropCost", required=false) String cropCost,
													@RequestParam(value="salesResult", required=false) String salesResult,
													HttpSession session, 
													Model model) {
		
		int totalSubsidy = 0;
		if(selectedSubsidy == null) {
	        session.setAttribute("warningMessage", "정책지원금을 선택해 주세요!!!");
	        return "serviceCost";
		}
		for(int i = 0; i<selectedSubsidy.length; i++) {
			totalSubsidy += Integer.parseInt(selectedSubsidy[i]);
		}
		
		int totalCost;
		int intCropCost = Integer.parseInt(cropCost);
		totalCost = intCropCost - totalSubsidy;
		
		model.addAttribute("totalSubsidy",totalSubsidy);
		model.addAttribute("salesResult",salesResult);
		model.addAttribute("costArea",costArea);
		model.addAttribute("costCrop",costCrop);
		model.addAttribute("totalCost",totalCost);
		model.addAttribute("cropCost", intCropCost);
		
		session.setAttribute("totalSubsidy", totalSubsidy);
		session.setAttribute("salesResult", salesResult);
		session.setAttribute("costArea", costArea);
		session.setAttribute("costCrop", costCrop);
		session.setAttribute("totalCost", totalCost);
		session.setAttribute("cropCost", intCropCost);
		return "redirect:/policyList";
	}
	
	//총비용, 예상매출과 함께 수익확인
	@RequestMapping(value="myProfit")
	public String myProfit(HttpSession session, Model model) {
		int getTotalCost = (int)session.getAttribute("totalCost");
		int getSalesResult = (int)session.getAttribute("salesResult");
		int getCropCost = (int)session.getAttribute("cropCost");
		int getTotalSubsidy = (int)session.getAttribute("totalSubsidy");
		
		int totalCost=0;
		int salesResult=0;
		int cropCost=0;
		int totalSubsidy=0;
		
		if(getTotalCost != 0) {
			totalCost = getTotalCost;
		}
		if(getSalesResult != 0) {
			salesResult = getSalesResult;
		}
		if(getCropCost != 0) {
			cropCost = getCropCost;
		}
		if(getTotalSubsidy != 0) {
			totalSubsidy = getTotalSubsidy;
		}
		
		model.addAttribute("totalCost", totalCost);
		model.addAttribute("salesResult", salesResult);
		model.addAttribute("cropCost", cropCost);
		model.addAttribute("totalSubsidy", totalSubsidy);
		return "serviceProfit";
	}
	
	//한페이지당 나오는 정책 리스트 수
	private List<PolicyDto> getDataForPage(List<PolicyDto> dtos, int currentPage) {
		// TODO Auto-generated method stub
		int startIndex = (currentPage - 1) * LIST_PER_PAGE;
		int endIndex = Math.min(startIndex + LIST_PER_PAGE, dtos.size());
		return new ArrayList<>(dtos.subList(startIndex, endIndex));
	}
	
	//한국어로 된 농작물 이름 영어로 전환
	private String changeToKorean(String selectedCrop) {
		if(selectedCrop.equals("쪽파")) {
			selectedCrop = "chives";
		}else if(selectedCrop.equals("오이")) {
			selectedCrop = "cucumber";
		}else if(selectedCrop.equals("마늘")) {
			selectedCrop = "garlic";
		}else if(selectedCrop.equals("포도")) {
			selectedCrop = "grape";
		}else if(selectedCrop.equals("대파")) {
			selectedCrop = "greenonion";
		}else if(selectedCrop.equals("참다래")) {
			selectedCrop = "kiwi";
		}else if(selectedCrop.equals("양파")) {
			selectedCrop = "onion";
		}else if(selectedCrop.equals("복숭아")) {
			selectedCrop = "peach";
		}else if(selectedCrop.equals("고추")) {
			selectedCrop = "pepper";
		}else if(selectedCrop.equals("정곡")) {
			selectedCrop = "rice";
		}else if(selectedCrop.equals("시금치")) {
			selectedCrop = "spinach";
		}else if(selectedCrop.equals( "고구마")) {
			selectedCrop = "spotato";
		}else if(selectedCrop.equals("딸기")) {
			selectedCrop = "stberry";
		}else if(selectedCrop.equals("토마토")) {
			selectedCrop = "tomato";
		}else {
			System.out.println("잘못된 이름입니다.");
		}
		
		return selectedCrop;
	}
	
}
