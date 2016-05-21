package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String productId;
	private String categoryId;
	private String productName;
	private String productType;
	private int productNum;
	private int productSellNum;
	private int productUnitPrice;
	private String productDesc;
	private String productNote;
	private Date lastUpdateTime;
	
	
	public int getProductSellNum() {
		return productSellNum;
	}
	public void setProductSellNum(int productSellNum) {
		this.productSellNum = productSellNum;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getProductUnitPrice() {
		return productUnitPrice;
	}
	public void setProductUnitPrice(int productUnitPrice) {
		this.productUnitPrice = productUnitPrice;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductNote() {
		return productNote;
	}
	public void setProductNote(String productNote) {
		this.productNote = productNote;
	}
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}
	
}
