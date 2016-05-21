package com.dance4Ever.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.Videos;
import com.dance4Ever.service.VideoService;

@Controller
@RequestMapping("/video")
public class VideoController {
	private static final Logger logger = LoggerFactory.getLogger(VideoController.class);
	
	@Resource
	private VideoService videoService;
	
	@RequestMapping(value="/playVideo/{videoName}",method=RequestMethod.GET)  
    public ModelAndView playVideo(Model model , @ModelAttribute Videos video){
        logger.debug("******播放视频******");
        ModelAndView mav = new ModelAndView();
        mav.addObject("video1", video);
        mav.setViewName("index");
        return mav;
    }
	
	/**
	 * 获取播放视频的地址
	 * @param video
	 * @return String--videoPath
	 */
	@ResponseBody
	@RequestMapping(value = "getVideoPath/{videoId}" , method = RequestMethod.GET)
	public String getVideoPath(@ModelAttribute Videos video){
		logger.debug("******获取播放视频的地址******");
		logger.debug("******传入参数为******"+video.getVideoId());
		String videoPath = videoService.getVideoPath(video.getVideoId());
		return videoPath+video.getVideoName();
	}
	
	/**
	 * 获取播放视频的地址2
	 * @param video
	 * @return String--videoPath
	 */
	@ResponseBody
	@RequestMapping(value = "getVideoPath2/{videoId}" , method = RequestMethod.GET)
	public String getVideoPath2(@ModelAttribute Videos video){
		logger.debug("******获取播放视频的地址******");
		logger.debug("******传入参数为******"+video.getVideoId());
		Videos vi = videoService.getVideoMessage(video.getVideoId());
		String videoPath = vi.getVideoPath()+vi.getVideoName();
		return videoPath;
	}
}
