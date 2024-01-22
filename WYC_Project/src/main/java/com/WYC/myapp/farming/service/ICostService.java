package com.WYC.myapp.farming.service;

import java.util.ArrayList;
import java.util.List;

import com.WYC.myapp.farming.dto.AreaSiDoDto;
import com.WYC.myapp.farming.dto.AreaSiGunGuDto;
import com.WYC.myapp.farming.dto.CropCostDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.PolicyDto;

public interface ICostService {
	public CropDto searchCrop(String searchName);// 농작물 조회
	public AreaSiGunGuDto searchSiGunGu(String searchSiGunGu);// 지역정보 조회
	public CropCostDto searchCost(int searchCost);// 농작물별 비용 조회
	public List<PolicyDto> showConditionList(int siGunGuCode, int age, int farmingPeriod);// 조건에 해당하는 정책 리스트 조회
	public List<PolicyDto> showList();// 전체 정책 리스트 조회
}
