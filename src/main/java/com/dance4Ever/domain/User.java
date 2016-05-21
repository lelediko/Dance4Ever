package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;
/**
 * 用户信息表
 */
public class User implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String id;				//用户id
	private String loginName;		//用户昵称
	private String userName;		//用户真实姓名
	private String password;		//用户密码
	private String rpassword;		//再次输入密码
	private String email;			//用户邮箱
	private int telephone;			//用户电话
	private int age;				//用户年龄
	private int danceAge;			//用户舞龄
	private int sex;				//用户性别 0-保密;1-男;2-女
	private String danceType;		//用户舞种
	private String alongTeamId;		//用户所属舞团id
	private Date createTime;		//注册时间
	private Date lastLoginTime;		//最后一次登录时间
	
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRpassword() {
		return rpassword;
	}
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	public String getDanceType() {
		return danceType;
	}
	public void setDanceType(String danceType) {
		this.danceType = danceType;
	}
	public String getAlongTeamId() {
		return alongTeamId;
	}
	public void setAlongTeamId(String alongTeamId) {
		this.alongTeamId = alongTeamId;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	
	
}
