package com.WYC.myapp.farming.service;

import java.util.ArrayList;
import java.util.List;

import com.WYC.myapp.farming.dto.FarmAreaCropDto;
import com.WYC.myapp.farming.dto.FarmCropAreaDto;
import com.WYC.myapp.farming.dto.FarmCropDto;
import com.WYC.myapp.farming.dto.FarmCropInfoDto;
import com.WYC.myapp.farming.dto.FarmCropProfileDto;

public interface IRevenueService {
	public List<FarmCropDto> cropList(); // 작물 리스트 가져오기
	public List<FarmCropAreaDto> cropAreaList(String crop);//지역 리스트 가져오기
	public List<FarmCropInfoDto> getCropInfo(String selectCrop);//농작물 정보 가져오기
	public List<Integer> getRevenues(String selectCrop);//농작물 매출정보들 가져오기
	public List<FarmAreaCropDto> getAreaCrop(String areaName);//지역에 맞는 농작물 가져오기
	public FarmCropProfileDto getCropProfile(String selectCrop);//농작물 상세정보 가져오기
	public List<List<String>> getHpriceYield(String selectCrop);//경매단가, 수확량 정보 가져오기
	public List<Integer> findRevenue(String cropName);//농작물 매출정보 가져오기
}
