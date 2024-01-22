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
//import com.WYC.myapp.farming.dto.FarmAreaCropDto;
//import com.WYC.myapp.farming.dto.FarmCropAreaDto;
//import com.WYC.myapp.farming.dto.FarmCropDto;
//import com.WYC.myapp.farming.dto.FarmCropInfoDto;
//import com.WYC.myapp.farming.dto.FarmCropProfileDto;
//
//@Repository
//public class RevenueRepository implements IRevenueRepository{
//	
//	@Autowired
//	JdbcTemplate jdbcTemplate;
//	
//	//농작물 리스트 조회
//	@Override
//	public List<FarmCropDto> cropList() {
//		// TODO Auto-generated method stub
//		String sql = "select * from croplist order by crop_name";
//		return jdbcTemplate.query(sql, new RowMapper<FarmCropDto>(){
//
//			@Override
//			public FarmCropDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				FarmCropDto dto = new FarmCropDto();
//				dto.setCrop_num(rs.getInt("crop_num"));
//				dto.setCrop_name(rs.getString("crop_name"));
//				dto.setCrop_eng(rs.getString("crop_eng"));
//				return dto;
//			}
//			
//		});
//	}
//	
//	//지역 리스트 조회
//	@Override
//	public List<FarmCropAreaDto> cropAreaList(String crop) {
//		// TODO Auto-generated method stub
//		String sql = "select * from area_Crops2 where crop_eng=? order by area_name";
//		return jdbcTemplate.query(sql, new RowMapper<FarmCropAreaDto>() {
//
//			@Override
//			public FarmCropAreaDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				FarmCropAreaDto dto = new FarmCropAreaDto();
//				dto.setArea_eng(rs.getString("area_eng"));
//				dto.setArea_name(rs.getString("area_name"));
//				return dto;
//			}
//			
//		}, crop);
//	}
//	
//	//농작물 정보 조회
//	@Override
//	public ArrayList<FarmCropInfoDto> getCropInfo(String selectCrop) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
//	//농작물 전체 매출정보 조회
//	@Override
//	public List<Integer> getRevenues(String selectCrop) {
//		// TODO Auto-generated method stub
////		List<Integer> dtos = new ArrayList<Integer>();
//		String sql="select revenue from crop_"+selectCrop+" order by year";
//		return jdbcTemplate.query(sql,new RowMapper<Integer>() {
//
//			@Override
//			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				int revenue = rs.getInt("revenue");
//				return revenue;
//			}
//			
//		});
//	}
//	
//	//지역에 맞는 농작물 조회
//	@Override
//	public List<FarmAreaCropDto> getAreaCrop(String areaName) {
//		// TODO Auto-generated method stub
//		String sql = "select * from area_crops2 where area_eng=?";
//		return jdbcTemplate.query(sql, new RowMapper<FarmAreaCropDto>() {
//
//			@Override
//			public FarmAreaCropDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				FarmAreaCropDto dto = new FarmAreaCropDto();
//				dto.setArea_name(rs.getString("area_name"));
//				dto.setCrop_name(rs.getString("crop_name"));
//				dto.setCrop_eng(rs.getString("crop_eng"));
//				return dto;
//			}
//			
//		}, areaName);
//	}
//	
//	//농작물 상세정보 조회
//	@Override
//	public FarmCropProfileDto getCropProfile(String selectCrop) {
//		// TODO Auto-generated method stub
//		String sql="select * from crop_profile where cropName=?";
//		return jdbcTemplate.queryForObject(sql, new RowMapper<FarmCropProfileDto>() {
//
//			@Override
//			public FarmCropProfileDto mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				FarmCropProfileDto dto = new FarmCropProfileDto();
//				dto.setCropName(rs.getString("cropName"));
//				dto.setCropKor(rs.getString("cropKor"));
//				dto.setCropVariety(rs.getString("cropVariety"));
//				dto.setCropGrow(rs.getString("cropGrow"));
//				dto.setCropSpecial(rs.getString("cropSpecial"));
//				return dto;
//			}
//			
//		}, selectCrop);
//	}
//	
//	//경매단가, 수확량 정보 조회
//	@Override
//	public List<List<String>> getHpriceYield(String selectCrop) {
//		// TODO Auto-generated method stub
//		String sql = "select year, hPrice, yield from crop_"+selectCrop+" where year IN (2017, 2018, 2019, 2020, 2021)";
//		return jdbcTemplate.query(sql, new RowMapper<List<String>>() {
//
//			@Override
//			public List<String> mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				List<String> dto = new ArrayList<String>();
//				dto.add(rs.getString("year"));
//				dto.add(rs.getString("hPrice"));
//				dto.add(rs.getString("yield"));
//				return dto;
//			}
//			
//		});
//	}
//	
//	//농작물 매출 정보 조회
//	@Override
//	public List<Integer> findRevenue(String cropName) {
//		// TODO Auto-generated method stub
//		String sql = "select revenue from crop_"+cropName;
//		return jdbcTemplate.query(sql, new RowMapper<Integer>() {
//
//			@Override
//			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
//				// TODO Auto-generated method stub
//				int revenue = rs.getInt("revenue");
//				return revenue;
//			}
//			
//		});
//	}
//	
//	//농작물 예상 매출 정보 조회
//	@Override
//	public int findPredictRevenue(String selectCrop) {
//		// TODO Auto-generated method stub
//		String sql = "select revenue_predict from crop_revenue_predict where crop_name = ?";
//		return jdbcTemplate.queryForObject(sql, Integer.class, selectCrop);
//	}
//
//}
