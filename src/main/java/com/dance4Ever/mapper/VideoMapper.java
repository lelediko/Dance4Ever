package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.Musics;
import com.dance4Ever.domain.Videos;

@Component
public interface VideoMapper {
	//1.根据视频id查询其对应的url地址
	String getPath(@Param("videoId") String videoId);
	//2.根据视频id查询其所有信息
	Videos getVideoMessage(@Param("videoId") String videoId);
	//3.查询所有的视频(top 8)
	List<Videos> vlist();
	//4.根据视频id查询
	//5.上传视频
	void createVideo(@Param("video") Videos video);
	//6.查询视频
	List<Videos> vvlist(@Param("userId") String userId);
	//7.查询视频
	public Videos downloadVideo(@Param(value = "videoId") String videoId);
}
