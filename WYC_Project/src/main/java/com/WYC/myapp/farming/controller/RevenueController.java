package com.WYC.myapp.farming.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.WYC.myapp.farming.dto.FarmAreaCropDto;
import com.WYC.myapp.farming.dto.FarmCropAreaDto;
import com.WYC.myapp.farming.dto.FarmCropDto;
import com.WYC.myapp.farming.dto.FarmCropProfileDto;
import com.WYC.myapp.farming.service.IRevenueService;

@Controller
public class RevenueController {
	
	@Autowired
	IRevenueService revenueService;
	
	@RequestMapping(value="revenue1")
	public String reveunue1(Model model) {
		List<FarmCropDto> cropList = revenueService.cropList();
		model.addAttribute("cropList", cropList);
		return "revenue1";
	}
	@RequestMapping(value="revenue2")
	public String revenue2() {
		return "revenue2";
	}
	
	//농작물 선택후 재배가능한 지역 리스트 조회
	@PostMapping("cropArea")
	@ResponseBody
	public List<FarmCropAreaDto> cropArea(@RequestParam(value="crop") String selectCrop, Model model) {
		List<FarmCropAreaDto> list = revenueService.cropAreaList(selectCrop);
		return list;
	}
	
	//선택한 농작물의 정보 조회
	@PostMapping("getCropProfile")
	@ResponseBody
	public FarmCropProfileDto cropProfile(@RequestParam(value="selectCrop") String selectCrop, HttpServletRequest request, Model model) {
		FarmCropProfileDto cropProfile = revenueService.getCropProfile(selectCrop);
        return cropProfile;
	}
	//선택한 농작물의 매출 예측 및 2003년 부터의 매출 추이 조회
	@PostMapping("salesText")
	@ResponseBody
	public List<Integer> salesText(@RequestParam(value="selectCrop") String selectCrop, 
										   @RequestParam(value="selectArea") String selectArea, 
										   Model model) {
		List<Integer> revenues = revenueService.findRevenue(selectCrop);
        return revenues;
	}
	
	//선택한 농작물의 상등품 경매단가와 수확량 추이 제공
	@PostMapping("getCropHpriceYield")
	@ResponseBody
	public List<List<String>> cropHpriceYield(@RequestParam(value="selectCrop") String selectCrop, HttpServletRequest request, Model model) {
		
		List<List<String>> yearHpriceYield = revenueService.getHpriceYield(selectCrop);
		
        return yearHpriceYield;
	}
	
	//농작물, 지역, 매출정보를 비용 정보로 전송
	@RequestMapping(value="checkCost")
	public String checkCost(@RequestParam(value="selectCropKor") String selectCropKor,
											@RequestParam(value="selectAreaKor") String selectAreaKor,
											@RequestParam(value="salesResult") String salesResult,
											Model model){
		int getSalesResult = Integer.parseInt(salesResult.replaceAll(",", ""));
		model.addAttribute("salesResult", getSalesResult);
		
		return "policyList";
	}
	
	//매출2에서 지역 선택 후 재배가능한 농작물 조회
	@PostMapping("getAreaCropList")
	@ResponseBody
	public List<FarmAreaCropDto> getAreaCropList(@RequestParam(value="areaCrop") String areaCrop, Model model) {
		List<FarmAreaCropDto> list = revenueService.getAreaCrop(areaCrop);
		return list;
	}
	
}
