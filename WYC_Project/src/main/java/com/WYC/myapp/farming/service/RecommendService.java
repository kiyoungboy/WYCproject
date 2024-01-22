package com.WYC.myapp.farming.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WYC.myapp.farming.dao.IRecommendRepository;
import com.WYC.myapp.farming.dto.AreaCropsDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.RecommendDto;
import com.WYC.myapp.farming.dto.RecommendInfoDto;

@Service
public class RecommendService implements IRecommendService{
	
	@Autowired
	IRecommendRepository recommendRepository;
	
	//지역별 재배 가능한 농작물 조회
	@Override
	public List<AreaCropsDto> findAreaCrops(String areaName) {
		// TODO Auto-generated method stub
		return recommendRepository.findAreaCrops(areaName);
	}
	
	//5년간 매출 정보 조회
	@Override
	public List<Integer> showRevenue(int cropCode) {
		// TODO Auto-generated method stub
		return recommendRepository.showRevenue(cropCode);
	}
	
	//5년간 비용 정보 조회
	@Override
	public List<Integer> showPcost(int cropCode) {
		// TODO Auto-generated method stub
		return recommendRepository.showPcost(cropCode);
	}
	
	//5년간 수확량 정보 조회
	@Override
	public List<Integer> showYield(int cropCode) {
		// TODO Auto-generated method stub
		return recommendRepository.showYield(cropCode);
	}
	
	//농작물 이름 조회
	@Override
	public String showCrop(int cropCode) {
		// TODO Auto-generated method stub
		return recommendRepository.showCrop(cropCode);
	}
	
	//농작물 정보 조회
	@Override
	public CropDto searchCrop2(int searchCode) {
		// TODO Auto-generated method stub
		return recommendRepository.searchCrop2(searchCode);
	}
	
	//추천 기준별 농작물 추천 포인트 조회
	@Override
	public RecommendDto getRecommendPoint(int selectedCrop, String commaRemoveData) {
		// TODO Auto-generated method stub
		return recommendRepository.getRecommendPoint(selectedCrop, commaRemoveData);
	}
	
	//추천 농작물 정보 조회
	@Override
	public RecommendInfoDto searchRecommendInfo(int cropCode) {
		// TODO Auto-generated method stub
		return recommendRepository.searchRecommendInfo(cropCode);
	}

}
