package com.dance4Ever.domain;

import java.io.Serializable;
import java.util.Date;
/**
 * 音乐信息表
 * @author Administrator
 *
 */
public class Musics implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String musicId;
	private String musicName;
	private String musicType;
	private Date createTime;
	private Date lastUpdateTime;
	private String createPersonId;
	private String musicPath;
	private byte[] musicFile;
	
	public String getMusicId() {
		return musicId;
	}
	public void setMusicId(String musicId) {
		this.musicId = musicId;
	}
	public String getMusicName() {
		return musicName;
	}
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	public String getMusicType() {
		return musicType;
	}
	public void setMusicType(String musicType) {
		this.musicType = musicType;
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
	public String getMusicPath() {
		return musicPath;
	}
	public void setMusicPath(String musicPath) {
		this.musicPath = musicPath;
	}
	public byte[] getMusicFile() {
		return musicFile;
	}
	public void setMusicFile(byte[] musicFile) {
		this.musicFile = musicFile;
	}
	
	
}
