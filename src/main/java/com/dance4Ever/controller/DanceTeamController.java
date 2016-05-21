package com.dance4Ever.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.DanceTeam;
import com.dance4Ever.domain.TeamMemberRole;
import com.dance4Ever.domain.User;
import com.dance4Ever.service.DanceTeamService;

@Controller
@RequestMapping("/danceTeam")
public class DanceTeamController {
	private static final Logger logger = LoggerFactory.getLogger(DanceTeamController.class);
	@Resource
	private DanceTeamService danceTeamService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)  
    public String index(Model model){
        logger.debug("******首页******");
        return "index";  
    }
	
	@RequestMapping(value="/teamCenter",method=RequestMethod.GET)  
    public String teamCenter(Model model){
        logger.debug("******首页******");
        return "/teamLeft";  
    }
	
	@RequestMapping(value="/teamlogin",method=RequestMethod.GET)  
    public String teamloginForm(Model model){
        logger.debug("******登陆页面******");
        return "team/teamlogin";  
    }
	
	@RequestMapping(value="/teamlogin" , method=RequestMethod.POST)
	public String login(@ModelAttribute DanceTeam danceTeam , HttpServletRequest request,HttpSession session){
		logger.debug("【舞团登录】");
		DanceTeam danceTeam1 = danceTeamService.login(danceTeam);
		if(danceTeam1 == null){
			return "/error";
		}else{
			session.setAttribute("teamuser", danceTeam1);
			return "redirect:/index";
		}
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)  
    public String register(Model model){
        logger.debug("******显示注册******");
        return "team/register";  
    }
	
	@RequestMapping(value="/register",method=RequestMethod.POST)  
    public String addUser(@ModelAttribute DanceTeam danceTeam , HttpServletRequest request ){
        logger.debug("******用户注册******");
        danceTeamService.addTeam(danceTeam);
        return "team/register";  
    }
	
	@RequestMapping(value="/getDanceTeam" , method=RequestMethod.GET)
	public ModelAndView getDanceTeam(){
		ModelAndView mav = new ModelAndView();
		List<DanceTeam> dlist = danceTeamService.dlist();
		mav.addObject("dlist", dlist);
		mav.setViewName("");  //页面名字
		return mav;
	}
	
	
	@RequestMapping(value="/showDanceTeamMessage",method=RequestMethod.POST)  
	public ModelAndView showDanceTeamMessage(HttpSession session){
		logger.debug("******舞团登录后，舞团信息显示******");
		ModelAndView mav = new ModelAndView();
		DanceTeam danceTeam = (DanceTeam) session.getAttribute("teamuser");
		
		mav.setViewName("team/teamMessage");
		mav.addObject("danceTeam", danceTeam);
		return mav;
	}
	
	@RequestMapping(value="/getMember",method=RequestMethod.POST)  
    public ModelAndView getMember(HttpSession session){
        logger.debug("******成员管理，获得队员信息及角色******");
        ModelAndView mav = new ModelAndView();
        DanceTeam danceTeam = (DanceTeam) session.getAttribute("teamuser");
        List<TeamMemberRole> tmrlist =danceTeamService.getMember(danceTeam.getDanceTeamId());
        mav.addObject("tmrlist", tmrlist);
        mav.setViewName("team/teamCenter");  //页面名字
        return mav;  
    }
	
	//显示修改角色页
	@RequestMapping(value = "/showUpdateRole",method=RequestMethod.GET)
	public String showUpdateRole(@ModelAttribute TeamMemberRole tmr){
		logger.debug("******成员管理，显示修改角色页******");
		
		return "";
	}
	
	//提交角色修改
	@ResponseBody
	@RequestMapping(value = "/updateRole",method=RequestMethod.GET)
	public String updateRole(@ModelAttribute TeamMemberRole tmr){
		logger.debug("******成员管理，获得队员信息及角色******");
		danceTeamService.updateRole(tmr);
		return "success";
	}
	
	//删除舞团该成员
	@RequestMapping(value = "/deleteTeamMember",method=RequestMethod.GET)
	public String deleteTeamMember(@ModelAttribute TeamMemberRole tmr){
		logger.debug("******成员管理，删除队员信息及角色******");
		boolean flag = danceTeamService.deleteUserRole(tmr);
		if(flag == true){
			return "redirect:";
		}else{
			return "error";
		}
	}
	
}
