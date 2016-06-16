package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;
/**
 * 视频信息表
 * @author Administrator
 *
 */
public class Videos implements Serializable {
	
private static final long serialVersionUID = 1L;
	
	private String videoId;
	private String videoName;
	private String videoType;
	private Date createTime;
	private Date lastUpdateTime;
	private String createPersonId;
	private String videoPath;
	private byte[] videoFile;
	
	
	public byte[] getVideoFile() {
		return videoFile;
	}
	public void setVideoFile(byte[] videoFile) {
		this.videoFile = videoFile;
	}
	public String getVideoId() {
		return videoId;
	}
	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public String getVideoType() {
		return videoType;
	}
	public void setVideoType(String videoType) {
		this.videoType = videoType;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}
	public String getCreatePersonId() {
		return createPersonId;
	}
	public void setCreatePersonId(String createPersonId) {
		this.createPersonId = createPersonId;
	}
	public String getVideoPath() {
		return videoPath;
	}
	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}
	
	
}
