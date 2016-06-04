package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户商品表
 */
public class UserProduct implements Serializable {

	private static final long serialVersionUID = 1L;

	private String UserProductId;
	private String userId;
	private String productId;
	private int sellNum;
	private Date lastUpdateTime;
	private int statu;
	
	
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}
	public String getUserProductId() {
		return UserProductId;
	}
	public void setUserProductId(String userProductId) {
		UserProductId = userProductId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public int getSellNum() {
		return sellNum;
	}
	public void setSellNum(int sellNum) {
		this.sellNum = sellNum;
	}
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}
	
}
