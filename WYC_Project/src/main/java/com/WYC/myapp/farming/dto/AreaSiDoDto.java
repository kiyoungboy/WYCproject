package com.WYC.myapp.farming.dto;

public class AreaSiDoDto {
	
	private int areaCode;
	private String areaName;
	
	public AreaSiDoDto() {}
	public AreaSiDoDto(int areaCode, String areaName) {
		this.areaCode = areaCode;
		this.areaName = areaName;
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
}
