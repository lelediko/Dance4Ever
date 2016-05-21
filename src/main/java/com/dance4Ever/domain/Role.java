package com.dance4Ever.domain;

import java.io.Serializable;
/**
 * 角色表
 */
public class Role implements Serializable {

	private static final long serialVersionUID = 1L;

	private String roleId;			//角色id
	private String role;		//角色名称
	private String roleNote;	//角色说明
	
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRoleNote() {
		return roleNote;
	}
	public void setRoleNote(String roleNote) {
		this.roleNote = roleNote;
	}
	
	
}
