package com.dance4Ever.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.UserVideosLove;
import com.dance4Ever.domain.Videos;
import com.dance4Ever.mapper.UserVideosLoveMapper;
import com.dance4Ever.mapper.VideoMapper;

@Service
public class VideoServiceImpl implements VideoService {
	private static final Logger logger = LoggerFactory.getLogger(VideoServiceImpl.class);

	@Autowired
	private VideoMapper videoMapper;
	@Autowired
	private UserVideosLoveMapper userVideosLoveMapper;
	
	
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

	@Override
	public void createVideo(Videos video) {
		videoMapper.createVideo(video);
	}

	@Override
	public List<Videos> vlist(String userId) {
		
		return videoMapper.vvlist(userId);
	}

	@Override
	public Videos downloadVideo(String videoId) {
		return videoMapper.downloadVideo(videoId);
	}

	@Override
	public void addtoLove(UserVideosLove uvl) {
		userVideosLoveMapper.addtoLove(uvl);
	}

	@Override
	public List<Videos> getVideosId(String userId) {
		List<String> videoIdList = userVideosLoveMapper.getVideosId(userId);
		List<Videos> vlist = new ArrayList<Videos>();
		for(int i = 0 ; i < videoIdList.size() ; i++){
			String videoId = videoIdList.get(i);
			Videos videos = videoMapper.downloadVideo(videoId);
			vlist.add(videos);
		}
		return vlist;
	}

	@Override
	public void deleteLoveVideo(String videoId, String userId) {
		userVideosLoveMapper.deleteLoveVideo(videoId, userId);
	}

}
