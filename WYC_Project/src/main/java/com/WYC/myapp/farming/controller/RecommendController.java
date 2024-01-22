package com.WYC.myapp.farming.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.WYC.myapp.farming.dto.AreaCropsDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.RecommendDto;
import com.WYC.myapp.farming.dto.RecommendInfoDto;
import com.WYC.myapp.farming.service.IRecommendService;

@Controller
public class RecommendController {
	
	@Autowired
	IRecommendService recommendService;
	
	@RequestMapping(value="recommend")
	public String recommend() {
		return "recommend";
	}
	
	//추천 조건 입력후 농작물 추전 받기
	@GetMapping(value="recommendRank")
	@ResponseBody
	public RecommendInfoDto recommendRank(@RequestParam(value="areaData") String areaData,
																				@RequestParam(value="conditionData") String conditionData) {
		System.out.println("a : "+areaData);
		System.out.println(conditionData);
		List<AreaCropsDto> selectedCrops = recommendService.findAreaCrops(areaData);
		System.out.println(selectedCrops);
		int cropCode1 = selectedCrops.get(0).getCropCode1();
		int cropCode2 = selectedCrops.get(0).getCropCode2();
		int cropCode3 = selectedCrops.get(0).getCropCode3();
		
		String commaRemoveData = conditionData.replace(",", "");
		System.out.println(commaRemoveData);
		CropDto selectedCrop1 = recommendService.searchCrop2(cropCode1);
		CropDto selectedCrop2 = recommendService.searchCrop2(cropCode2);
		CropDto selectedCrop3 = recommendService.searchCrop2(cropCode3);
		RecommendDto recommendCrop1 = recommendService.getRecommendPoint(cropCode1, commaRemoveData);
		RecommendDto recommendCrop2 = recommendService.getRecommendPoint(cropCode2, commaRemoveData);
		RecommendDto recommendCrop3 = recommendService.getRecommendPoint(cropCode3, commaRemoveData);
		
		CropDto resultCrop = recommendResult(recommendCrop1, recommendCrop2, recommendCrop3);
		RecommendInfoDto finalResultCrop = recommendService.searchRecommendInfo(resultCrop.getCropCode());
		
		return finalResultCrop;
	}
	
	//지역별로 추천되는 농작물 3가지 조회 및 정보 제공
	@GetMapping(value="areaCondition")
	@ResponseBody
	public List<Object> areaCondition(@RequestParam(value="selectedArea") String areaName) {
		
		List<AreaCropsDto> cropList = recommendService.findAreaCrops(areaName);
		//작물1 <- 1번테이블
		List<Integer> showRevenue1 = recommendService.showRevenue(cropList.get(0).getCropCode1());
		List<Integer> showPcost1 = recommendService.showPcost(cropList.get(0).getCropCode1());
		List<Integer> showYield1 = recommendService.showYield(cropList.get(0).getCropCode1());
		String cropName1 = recommendService.showCrop(cropList.get(0).getCropCode1());
		//작물1 <- 1번테이블
		List<Integer> showRevenue2 = recommendService.showRevenue(cropList.get(0).getCropCode2());
		List<Integer> showPcost2 = recommendService.showPcost(cropList.get(0).getCropCode2());
		List<Integer> showYield2 = recommendService.showYield(cropList.get(0).getCropCode2());
		String cropName2 = recommendService.showCrop(cropList.get(0).getCropCode2());
		//작물1 <- 1번테이블
		List<Integer> showRevenue3 = recommendService.showRevenue(cropList.get(0).getCropCode3());
		List<Integer> showPcost3 = recommendService.showPcost(cropList.get(0).getCropCode3());
		List<Integer> showYield3 = recommendService.showYield(cropList.get(0).getCropCode3());
		String cropName3 = recommendService.showCrop(cropList.get(0).getCropCode3());
		
		List<Integer> profit1 = new ArrayList<Integer>();
		for(int i =0; i<showRevenue1.size(); i++) {
			int revenue = showRevenue1.get(i);
			int pcost = showPcost1.get(i);
			int profit = revenue - pcost;
			profit1.add(profit);
		}
		List<Integer> profit2 = new ArrayList<Integer>();
		for(int i =0; i<showRevenue2.size(); i++) {
			int revenue = showRevenue2.get(i);
			int pcost = showPcost2.get(i);
			int profit = revenue - pcost;
			profit2.add(profit);
		}
		List<Integer> profit3 = new ArrayList<Integer>();
		for(int i =0; i<showRevenue3.size(); i++) {
			int revenue = showRevenue3.get(i);
			int pcost = showPcost3.get(i);
			int profit = revenue - pcost;
			profit3.add(profit);
		}
		
		//2021-2017 수익
		double changeProfit1 = profit1.get(profit1.size()-1)-profit1.get(0);
		double changeProfit2 = profit2.get(profit1.size()-1)-profit2.get(0);
		double changeProfit3 = profit3.get(profit1.size()-1)-profit3.get(0);
		//생산량 데이터
		double changeRateY1 = changeRate(showYield1);
		double changeRateY2 = changeRate(showYield2);
		double changeRateY3 = changeRate(showYield3);
		
		List<Object> result = new ArrayList<Object>();
		result.add(showRevenue1);
		result.add(showPcost1);
		result.add(showYield1);
		result.add(cropName1);
		result.add(showRevenue2);
		result.add(showPcost2);
		result.add(showYield2);
		result.add(cropName2);
		result.add(showRevenue3);
		result.add(showPcost3);
		result.add(showYield3);
		result.add(cropName3);
		
		result.add(changeProfit1);
		result.add(changeProfit2);
		result.add(changeProfit3);
		result.add(changeRateY1);
		result.add(changeRateY2);
		result.add(changeRateY3);
		
		return result;
	}
	
	//지역별 세가지 농작물 조회 후 점수 비교후 한가지 산출
	public CropDto recommendResult(RecommendDto dto1, RecommendDto dto2, RecommendDto dto3) {
		CropDto dto = new CropDto();
		System.out.println(dto1.getCropCode());
		dto.setCropCode(dto1.getCropCode());
		dto.setCropName(dto1.getCropName());
		if(dto1.getrPoint() + dto2.getrPoint() + dto3.getrPoint() != 0) {
			if(dto1.getrPoint() <= dto2.getrPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getrPoint() <= dto3.getrPoint() && dto2.getrPoint() <= dto3.getrPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		if(dto1.getpPoint() + dto2.getpPoint() + dto3.getpPoint() != 0) {
			if(dto1.getpPoint() <= dto2.getpPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getpPoint() <= dto3.getpPoint() && dto2.getpPoint() <= dto3.getpPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		if(dto1.getwPoint() + dto2.getwPoint() + dto3.getwPoint() != 0) {
			if(dto1.getwPoint() <= dto2.getwPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getwPoint() <= dto3.getwPoint() && dto2.getwPoint() <= dto3.getwPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		if(dto1.getRpPoint() + dto2.getRpPoint() + dto3.getRpPoint() != 0) {
			if(dto1.getRpPoint() <= dto2.getRpPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getRpPoint() <= dto3.getRpPoint() && dto2.getRpPoint() <= dto3.getRpPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		if(dto1.getRwPoint() + dto2.getRwPoint() + dto3.getRwPoint() != 0) {
			if(dto1.getRwPoint() <= dto2.getRwPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getRwPoint() <= dto3.getRwPoint() && dto2.getRwPoint() <= dto3.getRwPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		if(dto1.getPwPoint() + dto2.getPwPoint() + dto3.getPwPoint() != 0) {
			if(dto1.getPwPoint() <= dto2.getPwPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getPwPoint() <= dto3.getPwPoint() && dto2.getPwPoint() <= dto3.getPwPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		if(dto1.getRpwPoint() + dto2.getRpwPoint() + dto3.getRpwPoint() != 0) {
			if(dto1.getRpwPoint() <= dto2.getRpwPoint()) {
				dto.setCropCode(dto2.getCropCode());
				dto.setCropName(dto2.getCropName());
			}
			if(dto1.getRpwPoint() <= dto3.getRpwPoint() && dto2.getRpwPoint() <= dto3.getRpwPoint()) {
				dto.setCropCode(dto3.getCropCode());
				dto.setCropName(dto3.getCropName());
			}		
		}
		return dto;
	}
	
	//현재와 과거데이터의 변화율 계산
	private double changeRate(List<Integer> list) {
		double result = 0.0;
		for(int i=1; i<list.size(); i++) {
			int prevVal = list.get(i-1);
			int currVal = list.get(i);
			
			if(prevVal == 0) {
				result += -100.0;
			}else {
				double temp = ((double)(currVal - prevVal) / prevVal * 100.0);
				result += temp;
			}
		}
		result = result/list.size();
		result = Math.round(result * 100) / 100.0;
		return result;
	}

}
