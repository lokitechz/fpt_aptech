package com.aptech.shop.model;

public class Brand {
	private long brandId;
	private String brandName;

	public Brand() {
		super();
	}

	public Brand(long brandId, String brandName) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
	}

	public long getBrandId() {
		return brandId;
	}

	public void setBrandId(long brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

}
