package com.dance4Ever.domain;

import java.io.Serializable;

/**
 * 商品种类
 */
public class Category implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String categoryId;
	private String categoryName;
	private String categoryType;
	
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}
	
	
}
