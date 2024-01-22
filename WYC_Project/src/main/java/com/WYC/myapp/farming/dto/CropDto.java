package com.WYC.myapp.farming.dto;

public class CropDto {
	
	private int cropCode;
	private String cropName;
	
	public CropDto() {
		
	}
	public CropDto(int cropCode, String cropName) {
		this.cropCode = cropCode;
		this.cropName = cropName;
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
}
