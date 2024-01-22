package com.WYC.myapp.farming.dto;

public class AreaCropsDto {
	
	private int areaCode;
	private String areaName;
	private int cropCode1;
	private int cropCode2;
	private int cropCode3;
	
	public AreaCropsDto() {
		
	}
	public AreaCropsDto(int areaCode, String areaName, int cropCode1, int cropCode2, int cropCode3) {
		this.areaCode = areaCode;
		this.areaName = areaName;
		this.cropCode1 = cropCode1;
		this.cropCode2 = cropCode2;
		this.cropCode3 = cropCode3;
	}
	public int getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(int areaCode) {
		this.areaCode = areaCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public int getCropCode1() {
		return cropCode1;
	}
	public void setCropCode1(int cropCode1) {
		this.cropCode1 = cropCode1;
	}
	public int getCropCode2() {
		return cropCode2;
	}
	public void setCropCode2(int cropCode2) {
		this.cropCode2 = cropCode2;
	}
	public int getCropCode3() {
		return cropCode3;
	}
	public void setCropCode3(int cropCode3) {
		this.cropCode3 = cropCode3;
	}
	
}
