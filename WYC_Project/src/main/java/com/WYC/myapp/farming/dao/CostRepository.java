//package com.WYC.myapp.farming.dao;
//
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.stereotype.Repository;
//
//import com.WYC.myapp.farming.dto.AreaSiDoDto;
//import com.WYC.myapp.farming.dto.AreaSiGunGuDto;
//import com.WYC.myapp.farming.dto.CropCostDto;
//import com.WYC.myapp.farming.dto.CropDto;
//import com.WYC.myapp.farming.dto.PolicyDto;
//
//@Repository
//public class CostRepository implements ICostRepository{
//	
//	@Autowired
//	JdbcTemplate jdbcTemplate;
//	
//	//농작물 정보 조회
//	@Override
//	public CropDto searchCrop(String searchName) {
//		// TODO Auto-generated method stub
//		String sql = "select crop_code, crop_name from crop_code where crop_name=?";
//		return jdbcTemplate.queryForObject(sql, new RowMapper<CropDto>(){
//
//			@Override
//			public CropDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				CropDto dto = new CropDto();
//				dto.setCropCode(rs.getInt("crop_code"));
//				dto.setCropName(rs.getString("crop_name"));
//				return dto;
//			}
//			
//		}, searchName);
//	}
//	
//	//지역 정보 조회
//	@Override
//	public AreaSiGunGuDto searchSiGunGu(String searchSiGunGu) {
//		// TODO Auto-generated method stub
//		String sql = "select area_code , area_name from area_code where area_name=?";
//		return jdbcTemplate.queryForObject(sql, new RowMapper<AreaSiGunGuDto>() {
//
//			@Override
//			public AreaSiGunGuDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				AreaSiGunGuDto dto = new AreaSiGunGuDto();
//				dto.setAreaCode(rs.getInt("area_code"));
//				dto.setAreaName(rs.getString("area_name"));
//				return dto;
//			}
//			
//		}, searchSiGunGu);
//	}
//	
//	//농작물별 비용 조회
//	@Override
//	public CropCostDto searchCost(int searchCost) {
//		// TODO Auto-generated method stub
//		String sql;
//		if(searchCost == 120001) {
//			sql = "select Pcost, crop_code from crop_chives where crop_code = ? and year=2021";
//		}else if(searchCost ==120002) {
//			sql = "select Pcost, crop_code from crop_cucumber where crop_code = ? and year=2021";
//		}else if(searchCost ==120003) {
//			sql = "select Pcost, crop_code from crop_garlic where crop_code = ? and year=2021";
//		}else if(searchCost ==120004) {
//			sql = "select Pcost, crop_code from crop_grape where crop_code = ? and year=2021";
//		}else if(searchCost ==120005) {
//			sql = "select Pcost, crop_code from crop_greenonion where crop_code = ? and year=2021";
//		}else if(searchCost ==120006) {
//			sql = "select Pcost, crop_code from crop_kiwi where crop_code = ? and year=2021";
//		}else if(searchCost ==120007) {
//			sql = "select Pcost, crop_code from crop_onion where crop_code = ? and year=2021";
//		}else if(searchCost ==120008) {
//			sql = "select Pcost, crop_code from crop_peach where crop_code = ? and year=2021";
//		}else if(searchCost ==120009) {
//			sql = "select Pcost, crop_code from crop_pepper where crop_code = ? and year=2021";
//		}else if(searchCost ==120010) {
//			sql = "select Pcost, crop_code from crop_rice where crop_code = ? and year=2021";
//		}else if(searchCost ==120011) {
//			sql = "select Pcost, crop_code from crop_spinach where crop_code = ? and year=2021";
//		}else if(searchCost ==120012) {
//			sql = "select Pcost, crop_code from crop_spotato where crop_code = ? and year=2021";
//		}else if(searchCost ==120013) {
//			sql = "select Pcost, crop_code from crop_stberry where crop_code = ? and year=2021";
//		}else {
//			sql = "select Pcost, crop_code from crop_tomato where crop_code = ? and year=2021";
//		}
//		return jdbcTemplate.queryForObject(sql, new RowMapper<CropCostDto>() {
//
//			@Override
//			public CropCostDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				CropCostDto dto = new CropCostDto();
//				dto.setCropCode(rs.getInt("crop_code"));
//				dto.setCropCost(rs.getInt("Pcost"));
//				return dto;
//			}
//			
//		}, searchCost);
//	}
//	
//	//조건에 맞는 정책 리스트 조회
//	@Override
//	public List<PolicyDto> showConditionList(int siGunGuCode, int age, int farmingPeriod) {
//		// TODO Auto-generated method stub
//		String sql;
//		if(  siGunGuCode != 0 && age != 0) {
//			sql = "select policy_name, area_name, fcost, pcost, area_code, age_up, age_down, residence_period, description from cost_policy where area_code ="+siGunGuCode+" and  "+age+" between age_up and age_down and residence_period = "+farmingPeriod+" order by area_code desc";
//		}else {
//			sql = "select area_code, area_name,policy_name,  age_up, age_down, residence_period, pcost, fcost, description from cost_policy order by area_code desc";
//		}
//		return jdbcTemplate.query(sql, new RowMapper<PolicyDto>() {
//
//			@Override
//			public PolicyDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				PolicyDto dto = new PolicyDto();
//				dto.setAreaCode(rs.getInt("area_code"));
//				dto.setAreaName(rs.getString("area_name"));
//				dto.setPolicyName(rs.getString("policy_name"));
//				dto.setPolicyAgeUp(rs.getInt("age_up"));
//				dto.setPolicyAgeDown(rs.getInt("age_down"));
//				dto.setFarmingPeriod(rs.getInt("residence_period"));
//				dto.setProductionCost(rs.getInt("pcost"));
//				dto.setFixedCost(rs.getInt("fcost"));
//				dto.setDescription(rs.getString("description"));
//				return dto;
//			}
//			
//		});
//	}
//	
//	//전체 정책 리스트 조회
//	@Override
//	public List<PolicyDto> showList() {
//		// TODO Auto-generated method stub
//		String sql = "select area_code, area_name, policy_name,  age_up, age_down, residence_period, pcost, fcost, description from cost_policy order by area_code desc";
//		return jdbcTemplate.query(sql, new RowMapper<PolicyDto>() {
//
//			@Override
//			public PolicyDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				PolicyDto dto = new PolicyDto();
//				dto.setAreaCode(rs.getInt("area_code"));
//				dto.setAreaName(rs.getString("area_name"));
//				dto.setPolicyName(rs.getString("policy_name"));
//				dto.setPolicyAgeUp(rs.getInt("age_up"));
//				dto.setPolicyAgeDown(rs.getInt("age_down"));
//				dto.setFarmingPeriod(rs.getInt("residence_period"));
//				dto.setProductionCost(rs.getInt("pcost"));
//				dto.setFixedCost(rs.getInt("fcost"));
//				dto.setDescription(rs.getString("description"));
//				return dto;
//			}
//			
//		});
//	}
//
//}
