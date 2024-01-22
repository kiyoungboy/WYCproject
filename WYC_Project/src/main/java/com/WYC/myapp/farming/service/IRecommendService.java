package com.WYC.myapp.farming.service;

import java.util.ArrayList;
import java.util.List;

import com.WYC.myapp.farming.dto.AreaCropsDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.RecommendDto;
import com.WYC.myapp.farming.dto.RecommendInfoDto;

public interface IRecommendService {
	public List<AreaCropsDto> findAreaCrops(String areaName);//특정 지역에서 재배 가능한 농작물 찾기
	public List<Integer> showRevenue(int cropCode);//특정 농작물의 2017~2021년간 매출 정보 찾기
	public List<Integer> showPcost(int cropCode);//특정 농작물의 2017~2021년간 비용 정보 찾기
	public List<Integer> showYield(int cropCode);//특정 농작물의 2017~2021년간 수확량 정보 찾기
	public String showCrop(int cropCode);//농작물 이름 찾기
	public CropDto searchCrop2(int cropCode1);//농작물 코드와 이름 찾기
	public RecommendDto getRecommendPoint(int selectedCrop, String commaRemoveData);//추천 포인트 얻기
	public RecommendInfoDto searchRecommendInfo(int cropCode);//추천 농작물 정보 찾기
}
