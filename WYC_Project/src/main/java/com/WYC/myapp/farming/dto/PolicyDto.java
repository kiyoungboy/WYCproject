package com.WYC.myapp.farming.dto;

public class PolicyDto {
	private int areaCode;
	private String areaName;
	private String policyName;
	private int policyAgeUp;
	private int policyAgeDown;
	private int productionCost;
	private int fixedCost;
	private int farmingPeriod;
	private String description;
	
	public PolicyDto() {}
	public PolicyDto(int areaCode, String areaName, String policyName, int policyAgeUp, int policyAgeDown, int resisdencePeriod, int productionCost, int fixedCost, String description) {
		this.areaCode = areaCode;
		this.areaName = areaName;
		this.policyName = policyName;
		this.policyAgeUp = policyAgeUp;
		this.policyAgeDown = policyAgeDown;
		this.farmingPeriod = resisdencePeriod;
		this.productionCost = productionCost;
		this.fixedCost = fixedCost;
		this.description = description;
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
	public String getPolicyName() {
		return policyName;
	}
	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}
	public int getPolicyAgeUp() {
		return policyAgeUp;
	}
	public void setPolicyAgeUp(int policyAgeUp) {
		this.policyAgeUp = policyAgeUp;
	}
	public int getPolicyAgeDown() {
		return policyAgeDown;
	}
	public void setPolicyAgeDown(int policyAgeDown) {
		this.policyAgeDown = policyAgeDown;
	}
	public int getProductionCost() {
		return productionCost;
	}
	public void setProductionCost(int productionCost) {
		this.productionCost = productionCost;
	}
	public int getFixedCost() {
		return fixedCost;
	}
	public void setFixedCost(int fixedCost) {
		this.fixedCost = fixedCost;
	}
	public int getFarmingPeriod() {
		return farmingPeriod;
	}
	public void setFarmingPeriod(int resisdencePeriod) {
		this.farmingPeriod = resisdencePeriod;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
