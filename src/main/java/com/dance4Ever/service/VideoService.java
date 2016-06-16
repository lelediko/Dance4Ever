package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.UserVideosLove;
import com.dance4Ever.domain.Videos;

public interface VideoService {
	public String getVideoPath(String videoId);
	public Videos getVideoMessage(String videoId);
	public List<Videos> vlist();
	public void createVideo(Videos video);
	public List<Videos> vlist(String userId);
	public Videos downloadVideo(String videoId);
	public void addtoLove(UserVideosLove uvl);
	public List<Videos> getVideosId(String userId);
	public void deleteLoveVideo(String videoId, String userId);
}
