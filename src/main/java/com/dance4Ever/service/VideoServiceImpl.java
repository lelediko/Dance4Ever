package com.dance4Ever.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Videos;
import com.dance4Ever.mapper.VideoMapper;

@Service
public class VideoServiceImpl implements VideoService {
	private static final Logger logger = LoggerFactory.getLogger(VideoServiceImpl.class);

	@Autowired
	private VideoMapper videoMapper;
	
	public String getVideoPath(String videoId) {
		logger.debug("【获取视频的物理地址】");
		return videoMapper.getPath(videoId);
	}

	public Videos getVideoMessage(String videoId) {
		logger.debug("【获取视频的所有信息】");
		return videoMapper.getVideoMessage(videoId);
	}

	@Override
	public List<Videos> vlist() {
		logger.debug("【获取全部视频的信息】");
		return videoMapper.vlist();
	}

}
