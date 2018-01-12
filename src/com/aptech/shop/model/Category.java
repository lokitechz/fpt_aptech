package com.aptech.shop.model;

public class Category {
	private long cateId;
	private String cateName;

	public Category() {
		super();
	}

	public Category(long cateId, String cateName) {
		super();
		this.cateId = cateId;
		this.cateName = cateName;
	}

	public long getCateId() {
		return cateId;
	}

	public void setCateId(long cateId) {
		this.cateId = cateId;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

}
