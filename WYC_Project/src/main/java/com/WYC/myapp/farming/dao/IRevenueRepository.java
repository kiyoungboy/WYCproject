package com.WYC.myapp.farming.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.WYC.myapp.farming.dto.FarmAreaCropDto;
import com.WYC.myapp.farming.dto.FarmCropAreaDto;
import com.WYC.myapp.farming.dto.FarmCropDto;
import com.WYC.myapp.farming.dto.FarmCropInfoDto;
import com.WYC.myapp.farming.dto.FarmCropProfileDto;

public interface IRevenueRepository {
	
	public List<FarmCropDto> cropList(); // 작물 리스트 가져오기
	public List<FarmCropAreaDto> cropAreaList(@Param("crop")String crop);//지역 리스트 가져오기
	public ArrayList<FarmCropInfoDto> getCropInfo(@Param("selectCrop")String selectCrop);//농작물 정보 가져오기
	public List<Integer> getRevenues(@Param("selectCrop")String selectCrop);//농작물 매출정보들 가져오기
	public List<FarmAreaCropDto> getAreaCrop(@Param("areaName")String areaName);//지역에 맞는 농작물 가져오기
	public FarmCropProfileDto getCropProfile(@Param("selectCrop")String selectCrop);//농작물 상세정보 가져오기
	public List<List<String>> getHpriceYield(@Param("selectCrop")String selectCrop);//경매단가, 수확량 정보 가져오기
	public List<Integer> findRevenue(@Param("cropName")String cropName);//농작물 매출정보 가져오기
	public int findPredictRevenue(@Param("selectCrop")String selectCrop);//예상 매출정보 가져오기
}
