package com.WYC.myapp.farming.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WYC.myapp.farming.dao.ICostRepository;
import com.WYC.myapp.farming.dto.AreaSiDoDto;
import com.WYC.myapp.farming.dto.AreaSiGunGuDto;
import com.WYC.myapp.farming.dto.CropCostDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.PolicyDto;

@Service
public class CostService implements ICostService{
	
	@Autowired
	ICostRepository costRepository;
	
	//농작물 조회
	@Override
	public CropDto searchCrop(String searchName) {
		// TODO Auto-generated method stub
		return costRepository.searchCrop(searchName);
	}
	
	//지역정보 조회
	@Override
	public AreaSiGunGuDto searchSiGunGu(String searchSiGunGu) {
		// TODO Auto-generated method stub
		return costRepository.searchSiGunGu(searchSiGunGu);
	}
	
	//농작물별 비용 조회
	@Override
	public CropCostDto searchCost(int searchCost) {
		// TODO Auto-generated method stub
		return costRepository.searchCost(searchCost);
	}
	
	//조건에 해당하는 정책 리스트 조회
	@Override
	public List<PolicyDto> showConditionList(int siGunGuCode, int age, int farmingPeriod) {
		// TODO Auto-generated method stub
		return costRepository.showConditionList(siGunGuCode, age, farmingPeriod);
	}
	
	//전체 정책 리스트 조회
	@Override
	public List<PolicyDto> showList() {
		// TODO Auto-generated method stub
		return costRepository.showList();
	}

}
