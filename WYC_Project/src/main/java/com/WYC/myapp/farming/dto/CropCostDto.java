package com.WYC.myapp.farming.dto;

public class CropCostDto {
	
	private int cropCode;
	private int cropCost;
	
	public CropCostDto() {}
	public CropCostDto(int cropCode, int cropCost) {
		this.cropCode = cropCode;
		this.cropCost = cropCost;
	}
	public int getCropCode() {
		return cropCode;
	}
	public void setCropCode(int cropCode) {
		this.cropCode = cropCode;
	}
	public int getCropCost() {
		return cropCost;
	}
	public void setCropCost(int cropCost) {
		this.cropCost = cropCost;
	}
	@Override
	public String toString() {
		return "CropCostDto [cropCode=" + cropCode + ", cropCost=" + cropCost + "]";
	}
}
