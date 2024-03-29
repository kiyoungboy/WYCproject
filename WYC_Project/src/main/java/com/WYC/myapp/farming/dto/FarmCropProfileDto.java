package com.WYC.myapp.farming.dto;

public class FarmCropProfileDto {
	private String cropName;
	private String cropKor;
	private String cropVariety;
	private String cropGrow;
	private String cropGather;
	private String cropSpecial;
	
	public FarmCropProfileDto() {	
	}
	
	public FarmCropProfileDto(String cropName, String cropKor, String cropVariety, String cropGrow, String cropSpecial) {
		this.cropName = cropName;
		this.cropKor = cropKor;
		this.cropVariety = cropVariety;
		this.cropGrow = cropGrow;
		this.cropSpecial = cropSpecial;
	}

	public String getCropKor() {
		return cropKor;
	}

	public void setCropKor(String cropKor) {
		this.cropKor = cropKor;
	}

	public String getCropName() {
		return cropName;
	}

	public void setCropName(String cropName) {
		this.cropName = cropName;
	}

	public String getCropVariety() {
		return cropVariety;
	}

	public void setCropVariety(String cropVariety) {
		this.cropVariety = cropVariety;
	}

	public String getCropGrow() {
		return cropGrow;
	}

	public void setCropGrow(String cropGrow) {
		this.cropGrow = cropGrow;
	}

	public String getCropGather() {
		return cropGather;
	}

	public void setCropGather(String cropGather) {
		this.cropGather = cropGather;
	}

	public String getCropSpecial() {
		return cropSpecial;
	}

	public void setCropSpecial(String cropSpecial) {
		this.cropSpecial = cropSpecial;
	}
	
	
	
}
