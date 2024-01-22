package com.WYC.myapp.farming.service;

import java.util.ArrayList;
import java.util.List;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WYC.myapp.farming.dao.IRevenueRepository;
import com.WYC.myapp.farming.dto.FarmAreaCropDto;
import com.WYC.myapp.farming.dto.FarmCropAreaDto;
import com.WYC.myapp.farming.dto.FarmCropDto;
import com.WYC.myapp.farming.dto.FarmCropInfoDto;
import com.WYC.myapp.farming.dto.FarmCropProfileDto;

@Service
public class RevenueService implements IRevenueService{
	
	@Autowired
	IRevenueRepository revenueRepository;

	//작물 리스트 조회
	@Override
	public List<FarmCropDto> cropList() {
		// TODO Auto-generated method stub
		return revenueRepository.cropList();
	}
	
	//지역 리스트 조회
	@Override
	public List<FarmCropAreaDto> cropAreaList(String crop) {
		// TODO Auto-generated method stub
		List<FarmCropAreaDto>dtos = revenueRepository.cropAreaList(crop);
		return dtos;
	}
	
	//농작물 정보 조회
	@Override
	public List<FarmCropInfoDto> getCropInfo(String selectCrop) {
		// TODO Auto-generated method stub
		return revenueRepository.getCropInfo(selectCrop);
	}
	
	//농자물 전체 매출 정보 조회
	@Override
	public List<Integer> getRevenues(String selectCrop) {
		// TODO Auto-generated method stub
		return revenueRepository.getRevenues(selectCrop);
	}
	
	//지역에 맞는 농작물 조회
	@Override
	public List<FarmAreaCropDto> getAreaCrop(String areaName) {
		// TODO Auto-generated method stub
		return  revenueRepository.getAreaCrop(areaName);
	}
	
	//농작물 상세정보 조회
	@Override
	public FarmCropProfileDto getCropProfile(String selectCrop) {
		// TODO Auto-generated method stub

		return revenueRepository.getCropProfile(selectCrop);
	}
	
	//경매단가, 수확량 정보 조회
	@Override
	public List<List<String>> getHpriceYield(String selectCrop) {
		// TODO Auto-generated method stub
		return revenueRepository.getHpriceYield(selectCrop);
	}
	
	//농작물 매출 정보 조회
	@Override
	public List<Integer> findRevenue(String cropName) {
		// TODO Auto-generated method stub
		List<Integer> revenues = revenueRepository.findRevenue(cropName);
		cropName = convertEnglish(cropName);
		int cropPredictValue = revenueRepository.findPredictRevenue(cropName);
		revenues.add(cropPredictValue);
		return revenues;
	}

	//농작물 영어 이름을 한국 이름으로 전환
	private String convertEnglish(String selectCrop) {
		if(selectCrop.equals("chives")) {
			selectCrop = "쪽파";
		}else if(selectCrop.equals("cucumber")) {
			selectCrop = "오이";
		}else if(selectCrop.equals("garlic")) {
			selectCrop = "마늘";
		}else if(selectCrop.equals("grape")) {
			selectCrop = "포도";
		}else if(selectCrop.equals("greenonion")) {
			selectCrop = "대파";
		}else if(selectCrop.equals("kiwi")) {
			selectCrop = "참다래";
		}else if(selectCrop.equals("onion")) {
			selectCrop = "양파";
		}else if(selectCrop.equals("peach")) {
			selectCrop = "복숭아";
		}else if(selectCrop.equals("pepper")) {
			selectCrop = "고추";
		}else if(selectCrop.equals("rice")) {
			selectCrop = "정곡";
		}else if(selectCrop.equals("spinach")) {
			selectCrop = "시금치";
		}else if(selectCrop.equals("spotato")) {
			selectCrop = "고구마";
		}else if(selectCrop.equals("stberry")) {
			selectCrop = "딸기";
		}else if(selectCrop.equals("tomato")) {
			selectCrop = "토마토";
		}else {
			System.out.println("잘못된 이름입니다.");
		}
		
		return selectCrop;
	}

}
