package com.dance4Ever.domain;

import java.io.Serializable;
/**
 * 用户视频关联表    多--多
 */
public class UserVideosLove implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String userVideoLoveId;
	private String userId;
	private String videoId;
	
	public String getUserVideoLoveId() {
		return userVideoLoveId;
	}
	public void setUserVideoLoveId(String userVideoLoveId) {
		this.userVideoLoveId = userVideoLoveId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getVideoId() {
		return videoId;
	}
	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}
	
	
}
