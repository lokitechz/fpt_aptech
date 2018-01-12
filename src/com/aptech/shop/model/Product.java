package com.aptech.shop.model;

public class Product {
	private long productId;
	private long cateId;
	private long brandId;
	private String productName;
	private String productImage;
	private double productPrice;
	private String productDes;

	public Product() {
		super();
	}

	public Product(long productId, long cateId, long brandId, String productName, String productImage,
			double productPrice, String productDes) {
		super();
		this.productId = productId;
		this.cateId = cateId;
		this.productName = productName;
		this.productImage = productImage;
		this.productPrice = productPrice;
		this.productDes = productDes;
	}

	public long getBrandId() {
		return brandId;
	}

	public void setBrandId(long brandId) {
		this.brandId = brandId;
	}

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public long getCateId() {
		return cateId;
	}

	public void setCateId(long cateId) {
		this.cateId = cateId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDes() {
		return productDes;
	}

	public void setProductDes(String productDes) {
		this.productDes = productDes;
	}

}
