package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 消息类
 */
public class DanceTeamNews implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String danceTeamNewsId;
	private String danceTeamId;
	private String news;
	private String title;
	private Date lastUpdateTime;
	public String getDanceTeamNewsId() {
		return danceTeamNewsId;
	}
	public void setDanceTeamNewsId(String danceTeamNewsId) {
		this.danceTeamNewsId = danceTeamNewsId;
	}
	public String getDanceTeamId() {
		return danceTeamId;
	}
	public void setDanceTeamId(String danceTeamId) {
		this.danceTeamId = danceTeamId;
	}
	public String getNews() {
		return news;
	}
	public void setNews(String news) {
		this.news = news;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}
	
	
}
