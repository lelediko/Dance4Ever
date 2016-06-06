package com.dance4Ever.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.Musics;
import com.dance4Ever.domain.User;
import com.dance4Ever.service.MusicService;
import com.dance4Ever.util.FileUtil;
import com.dance4Ever.util.PrimaryKeyUtil;

@Controller
@RequestMapping("user/music")
public class MusicController {
	private static final Logger logger = LoggerFactory.getLogger(MusicController.class);
	
	@Resource
	private MusicService musicService;
	
	@RequestMapping(value="/upLoadMusic" , method=RequestMethod.POST )
	public String upLoadMusic(@RequestParam(value = "uploadmusic", required = true) MultipartFile file ,
							  @RequestParam(value = "musicType", required = true) String musicType,
							  HttpSession session){
		ModelAndView mav = new ModelAndView();
		User user1 = (User) session.getAttribute("loginuser");
		try {
			InputStream is = file.getInputStream();
			byte[] musicData = file.getBytes();
			
			String fileName = file.getOriginalFilename();
			Musics musics = new Musics();
			musics.setCreatePersonId(user1.getId());
			musics.setCreateTime(new Date());
			musics.setLastUpdateTime(new Date());
			musics.setMusicId(PrimaryKeyUtil.getPrimaryKey());
			musics.setMusicName(fileName);
			musics.setMusicPath(FileUtil.getPath(user1.getId()));
			musics.setMusicType(musicType);
			musics.setMusicFile(musicData);
			musicService.createMusic(musics);
			
		} catch (IOException e) {
			logger.error("上传文件出错"+e.getMessage(),e);
		}
		
		return "redirect:/user/user";
	}
	
	@RequestMapping(value="/showMusics" , method=RequestMethod.GET )
	public ModelAndView showMusics(HttpSession session){
		ModelAndView mav = new ModelAndView();
		User user1 = (User) session.getAttribute("loginuser");
			
		mav.addObject("mlist", getMusicList(user1.getId()));
		mav.setViewName("music-video/musicList");
		return mav;
	}
	
	private List<Musics> getMusicList(String userId){
		List<Musics> mlist = new ArrayList<Musics>();
		musicService.mlist(userId);
		return mlist;
	}
	
	@ResponseBody
	@RequestMapping(value="/download/{musicId}",method=RequestMethod.GET)
	public String download(@PathVariable String musicId,
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
