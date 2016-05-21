package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.Videos;

public interface VideoService {
	public String getVideoPath(String videoId);
	public Videos getVideoMessage(String videoId);
	public List<Videos> vlist();
}
