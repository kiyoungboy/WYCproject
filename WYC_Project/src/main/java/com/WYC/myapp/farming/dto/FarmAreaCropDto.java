package com.WYC.myapp.farming.dto;

public class FarmAreaCropDto {
	private String area_eng;
	private String area_name;
	private String crop_name;
	private String crop_eng;
	
	public FarmAreaCropDto(){
	}
	
	public FarmAreaCropDto(String area_eng, String area_name) {
		this.area_eng = area_eng;
		this.area_name = area_name;
	}
	
	public FarmAreaCropDto(String area_name, String crop_name, String crop_eng) {
		this.area_name = area_name;
		this.crop_name = crop_name;
		this.crop_eng = crop_eng;
	}

	public String getArea_eng() {
		return area_eng;
	}

	public void setArea_eng(String area_eng) {
		this.area_eng = area_eng;
	}

	public String getArea_name() {
		return area_name;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

	public String getCrop_name() {
		return crop_name;
	}

	public void setCrop_name(String crop_name) {
		this.crop_name = crop_name;
	}

	public String getCrop_eng() {
		return crop_eng;
	}

	public void setCrop_eng(String crop_eng) {
		this.crop_eng = crop_eng;
	}

	
	
}
