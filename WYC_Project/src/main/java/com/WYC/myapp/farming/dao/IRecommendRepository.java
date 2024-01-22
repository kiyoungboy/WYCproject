package com.WYC.myapp.farming.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.WYC.myapp.farming.dto.AreaCropsDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.RecommendDto;
import com.WYC.myapp.farming.dto.RecommendInfoDto;

public interface IRecommendRepository {

		public List<AreaCropsDto> findAreaCrops(@Param("areaName") String areaName);//특정 지역에서 재배 가능한 농작물 찾기
		public List<Integer> showRevenue(@Param("cropCode") int cropCode);//특정 농작물의 2017~2021년간 매출 정보 찾기
		public List<Integer> showPcost(@Param("cropCode") int cropCode);//특정 농작물의 2017~2021년간 비용 정보 찾기
		public List<Integer> showYield(@Param("cropCode") int cropCode);//특정 농작물의 2017~2021년간 수확량 정보 찾기
		public String showCrop(@Param("cropCode") int cropCode);//농작물 이름 찾기
		public CropDto searchCrop2(@Param("searchCode") int searchCode);//농작물 코드와 이름 찾기
		public RecommendDto getRecommendPoint(@Param("selectedCrop") int selectedCrop, @Param("commaRemoveData") String commaRemoveData);//추천 포인트 얻기
		public RecommendInfoDto searchRecommendInfo(@Param("cropCode") int cropCode);//추천 농작물 정보 찾기
		
}
