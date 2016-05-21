package com.dance4Ever.domain;

import java.io.Serializable;
/**
 * 用户角色关联表
 */
public class UserRole implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String userRoleId;		//用户角色id
	private String userId;			//用户id
	private String roleId;			//角色id
	public String getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(String userRoleId) {
		this.userRoleId = userRoleId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
}
