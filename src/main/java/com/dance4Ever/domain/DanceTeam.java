package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;
/**
 * 舞团信息
 */
public class DanceTeam implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String danceTeamId;					//舞团id
	private String danceTeamName;				//舞团名称
	private String danceTeamPassword;			//舞团登录密码
	private int danceTeamPersonNum;				//舞团人数
	private String danceTeamCity;				//舞团所在城市
	private String danceTeamLogo;				//舞团logo
	private String danceTeamIntro;				//舞团简介
	private Date danceTeamCreateTime;			//舞团成立时间
	private Date danceTeamLastUpdateTime;		//舞团最后一次操作时间
	public String getDanceTeamId() {
		return danceTeamId;
	}
	public void setDanceTeamId(String danceTeamId) {
		this.danceTeamId = danceTeamId;
	}
	public String getDanceTeamName() {
		return danceTeamName;
	}
	public void setDanceTeamName(String danceTeamName) {
		this.danceTeamName = danceTeamName;
	}
	public String getDanceTeamPassword() {
		return danceTeamPassword;
	}
	public void setDanceTeamPassword(String danceTeamPassword) {
		this.danceTeamPassword = danceTeamPassword;
	}
	public int getDanceTeamPersonNum() {
		return danceTeamPersonNum;
	}
	public void setDanceTeamPersonNum(int danceTeamPersonNum) {
		this.danceTeamPersonNum = danceTeamPersonNum;
	}
	public String getDanceTeamCity() {
		return danceTeamCity;
	}
	public void setDanceTeamCity(String danceTeamCity) {
		this.danceTeamCity = danceTeamCity;
	}
	public String getDanceTeamLogo() {
		return danceTeamLogo;
	}
	public void setDanceTeamLogo(String danceTeamLogo) {
		this.danceTeamLogo = danceTeamLogo;
	}
	public String getDanceTeamIntro() {
		return danceTeamIntro;
	}
	public void setDanceTeamIntro(String danceTeamIntro) {
		this.danceTeamIntro = danceTeamIntro;
	}
	public Date getDanceTeamCreateTime() {
		return danceTeamCreateTime;
	}
	public void setDanceTeamCreateTime(Date danceTeamCreateTime) {
		this.danceTeamCreateTime = danceTeamCreateTime;
	}
	public Date getDanceTeamLastUpdateTime() {
		return danceTeamLastUpdateTime;
	}
	public void setDanceTeamLastUpdateTime(Date danceTeamLastUpdateTime) {
		this.danceTeamLastUpdateTime = danceTeamLastUpdateTime;
	}
	
}
