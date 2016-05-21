package com.dance4Ever.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.Videos;
import com.dance4Ever.service.VideoService;

@Controller
@RequestMapping("/")
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Resource
	private VideoService videoService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)  
    public ModelAndView index(Model model){
        logger.debug("******首页******");
        ModelAndView mav = new ModelAndView();
        List<Videos> vlist = videoService.vlist();
        mav.addObject("vlist", vlist);
        mav.setViewName("index");
        return mav;  
    }
}
