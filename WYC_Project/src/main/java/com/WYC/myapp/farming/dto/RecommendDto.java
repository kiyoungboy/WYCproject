package com.WYC.myapp.farming.dto;

public class RecommendDto {
	private int cropCode;
	private String cropName;
	private int rPoint;
	private int pPoint;
	private int wPoint;
	private int rpPoint;
	private int rwPoint;
	private int pwPoint;
	private int rpwPoint;
	
	public RecommendDto() {}
	public RecommendDto(int cropCode, String cropName, int rPoint, int pPoint, int wPoint, int rpPoint, int rwPoint, int pwPoint, int rpwPoint) {
		this.cropCode = cropCode;
		this.cropName = cropName;
		this.rPoint = rPoint;
		this.pPoint = pPoint;
		this.wPoint = wPoint;
		this.rpPoint = rpPoint;
		this.rwPoint = rwPoint;
		this.pwPoint = pwPoint;
		this.rpwPoint = rpwPoint;
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
	public int getrPoint() {
		return rPoint;
	}
	public void setrPoint(int rPoint) {
		this.rPoint = rPoint;
	}
	public int getpPoint() {
		return pPoint;
	}
	public void setpPoint(int pPoint) {
		this.pPoint = pPoint;
	}
	public int getwPoint() {
		return wPoint;
	}
	public void setwPoint(int wPoint) {
		this.wPoint = wPoint;
	}
	public int getRpPoint() {
		return rpPoint;
	}
	public void setRpPoint(int rpPoint) {
		this.rpPoint = rpPoint;
	}
	public int getRwPoint() {
		return rwPoint;
	}
	public void setRwPoint(int rwPoint) {
		this.rwPoint = rwPoint;
	}
	public int getPwPoint() {
		return pwPoint;
	}
	public void setPwPoint(int pwPoint) {
		this.pwPoint = pwPoint;
	}
	public int getRpwPoint() {
		return rpwPoint;
	}
	public void setRpwPoint(int rpwPoint) {
		this.rpwPoint = rpwPoint;
	}

	
}
