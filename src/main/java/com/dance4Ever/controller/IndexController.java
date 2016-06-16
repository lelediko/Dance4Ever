package com.dance4Ever.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.Musics;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserMusicsLove;
import com.dance4Ever.domain.UserVideosLove;
import com.dance4Ever.domain.Videos;
import com.dance4Ever.service.MusicService;
import com.dance4Ever.service.VideoService;
import com.dance4Ever.util.PrimaryKeyUtil;

@Controller
@RequestMapping("/")
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Resource
	private VideoService videoService;
	@Resource
	private MusicService musicService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)  
    public ModelAndView index(Model model){
        logger.debug("******首页******");
        ModelAndView mav = new ModelAndView();
        List<Videos> vlist = videoService.vlist();
        List<Musics> mlist = musicService.mmlist();
        mav.addObject("mmlist", mlist);
        mav.addObject("vlist", vlist);
        mav.setViewName("index");
        return mav;  
    }
	
	@RequestMapping(value="/addloveVideo/{videoId}",method=RequestMethod.GET)  
    public String addloveVideo(@PathVariable String videoId , HttpSession session){
        logger.debug("******添加收藏视频 ******");
        User user1 = (User) session.getAttribute("loginuser");
        if(user1 != null){
        	UserVideosLove uvl = new UserVideosLove();
        	uvl.setUserVideoLoveId(PrimaryKeyUtil.getPrimaryKey());
        	uvl.setUserId(user1.getId());
        	uvl.setVideoId(videoId);
        	videoService.addtoLove(uvl);
        	return "redirect:/index";
        }else{
        	return "error";
        }
    }
	
	@RequestMapping(value="/addloveMusic/{musicId}",method=RequestMethod.GET)  
    public String addloveMusic(@PathVariable String musicId , HttpSession session){
        logger.debug("******添加收藏音乐 ******");
        User user1 = (User) session.getAttribute("loginuser");
        if(user1 != null){
        	UserMusicsLove uml = new UserMusicsLove();
        	uml.setUserMusicsLoveId(PrimaryKeyUtil.getPrimaryKey());
        	uml.setUserId(user1.getId());
        	uml.setMusicId(musicId);
        	musicService.addtoLove(uml);
        	return "redirect:/index";
        }else{
        	return "error";
        }
    }
	
	@ResponseBody
	@RequestMapping(value="/downloadvideo/{videoId}",method=RequestMethod.GET)
	public String downloadVideo(@PathVariable String videoId,
			  HttpSession session){
		Videos video1 = videoService.downloadVideo(videoId);
		byte[] videoData = video1.getVideoFile();
		try {
			String path = "D:\\dance4Ever\\videos";
			File file = new File(path);
			if(!file.exists()&& !file .isDirectory()){
				logger.debug("文件夹不存在，创建文件夹");
				file.mkdirs();
			}
			FileOutputStream fos = new FileOutputStream(path+"/"+video1.getVideoName());
			try {
				fos.write(videoData);
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	@ResponseBody
	@RequestMapping(value="/download/{musicId}",method=RequestMethod.GET)
	public String downloadMusic(@PathVariable String musicId,
			  HttpSession session){
		Musics music1 = musicService.download(musicId);
		byte[] musicData = music1.getMusicFile();
		try {
			String path = "D:\\dance4Ever\\musics";
			File file = new File(path);
			if(!file.exists()&& !file .isDirectory()){
				logger.debug("文件夹不存在，创建文件夹");
				file.mkdir();
			}
			FileOutputStream fos = new FileOutputStream(path+"/"+music1.getMusicName());
			try {
				fos.write(musicData);
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return "success";
	}
}
