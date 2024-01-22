package com.WYC.myapp.farming.dto;

public class RecommendInfoDto {
	private int cropCode;
	private String cropName;
	private int cropRevenue;
	private int cropPcost;
	private int cropWorkTime;
	
	public RecommendInfoDto() {}
	
	public RecommendInfoDto(int cropCode, String cropName, int cropRevenue, int cropPcost, int cropWorkTime) {
		this.cropCode = cropCode;
		this.cropName = cropName;
		this.cropRevenue = cropRevenue;
		this.cropPcost = cropPcost;
		this.cropWorkTime = cropWorkTime;
	}

	public int getCropCode() {
		return cropCode;
	}

	public void setCropCode(int cropCode) {
		this.cropCode = cropCode;
	}

	public String getCropName() {
		return cropName;
	}

	public void setCropName(String cropName) {
		this.cropName = cropName;
	}

	public int getCropRevenue() {
		return cropRevenue;
	}

	public void setCropRevenue(int cropRevenue) {
		this.cropRevenue = cropRevenue;
	}

	public int getCropPcost() {
		return cropPcost;
	}

	public void setCropPcost(int cropPcost) {
		this.cropPcost = cropPcost;
	}

	public int getCropWorkTime() {
		return cropWorkTime;
	}

	public void setCropWorkTime(int cropWorkTime) {
		this.cropWorkTime = cropWorkTime;
	}
	
	@Override
	public String toString() {
		return cropCode+","+cropName+","+cropRevenue+","+cropPcost+","+cropWorkTime;
		
	}
}
