package com.dance4Ever.domain;

import java.io.Serializable;

/**
 * 用户信息显示表
 */
public class UserMessage implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String loginName;
	private String email;
	private int age;
	private int sex;
	private String danceType;
	private String danceAge;
	private String danceTeamName;
	private String role;
	private String roleNote;
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getDanceType() {
		return danceType;
	}
	public void setDanceType(String danceType) {
		this.danceType = danceType;
	}
	public String getDanceAge() {
		return danceAge;
	}
	public void setDanceAge(String danceAge) {
		this.danceAge = danceAge;
	}
	public String getDanceTeamName() {
		return danceTeamName;
	}
	public void setDanceTeamName(String danceTeamName) {
		this.danceTeamName = danceTeamName;
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
