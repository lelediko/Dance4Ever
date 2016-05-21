package com.dance4Ever.domain;

import java.io.Serializable;

/**
 * 用户音乐关联表    多--多
 */
public class UserMusicsLove implements Serializable {

	private static final long serialVersionUID = 1L;

	private String userMusicsLoveId;
	private String userId;
	private String MusicId;
	
	public String getUserMusicsLoveId() {
		return userMusicsLoveId;
	}
	public void setUserMusicsLoveId(String userMusicsLoveId) {
		this.userMusicsLoveId = userMusicsLoveId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMusicId() {
		return MusicId;
	}
	public void setMusicId(String musicId) {
		MusicId = musicId;
	}
	
	
}
