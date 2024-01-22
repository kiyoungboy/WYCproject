package com.WYC.myapp.farming.dto;

public class FarmSalesTextDto {
	private int year;
	private int revenue;
	private int pcost;
	private int dcost;
	private int temp;
	private int rain;
	private int sun;
	private int insolation;
	private int hprice;
	private int gdp;
	private int area;
	private int yield;
	
	public FarmSalesTextDto() {
	}
	
	public FarmSalesTextDto(int year, int revenue, int pcost, int dcost, int temp, int rain, int sun, int insolation, int hprice, int gdp, int area, int yield) {
		this.year = year;
		this.revenue = revenue;
		this.pcost = pcost;
		this.dcost = dcost;
		this.temp = temp;
		this.rain = rain;
		this.sun = sun;
		this.insolation = insolation;
		this.hprice = hprice;
		this.gdp = gdp;
		this.area = area;
		this.yield = yield;
		
	}

	
	
	
	
}
