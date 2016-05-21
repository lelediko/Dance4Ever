package com.dance4Ever.domain;

import java.io.Serializable;

/**
 * 舞团成员信息及角色
 */
public class TeamMemberRole implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	private String loginName;
	private int telephone;
	private String danceType;
	private int danceAge;
	private int sex;
	private String role;
	private String roleNote;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	public String getDanceType() {
		return danceType;
	}
	public void setDanceType(String danceType) {
		this.danceType = danceType;
	}
	public int getDanceAge() {
		return danceAge;
	}
	public void setDanceAge(int danceAge) {
		this.danceAge = danceAge;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
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
