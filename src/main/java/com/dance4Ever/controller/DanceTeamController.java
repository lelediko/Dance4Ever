package com.dance4Ever.controller;

import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.DanceTeam;
import com.dance4Ever.domain.DanceTeamNews;
import com.dance4Ever.domain.Musics;
import com.dance4Ever.domain.Role;
import com.dance4Ever.domain.TeamMemberRole;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserRole;
import com.dance4Ever.domain.Videos;
import com.dance4Ever.service.DanceTeamService;
import com.dance4Ever.service.MusicService;
import com.dance4Ever.service.RoleService;
import com.dance4Ever.service.UserRoleService;
import com.dance4Ever.service.UserService;
import com.dance4Ever.service.VideoService;
import com.dance4Ever.util.DateUtil;
import com.dance4Ever.util.PrimaryKeyUtil;

@Controller
@RequestMapping("/danceTeam")
public class DanceTeamController {
	private static final Logger logger = LoggerFactory.getLogger(DanceTeamController.class);
	@Resource
	private DanceTeamService danceTeamService;
	@Resource
	private UserService userService;
	@Resource
	private RoleService roleService;
	@Resource
	private UserRoleService userRoleService;
	@Resource
	private MusicService musicService;
	@Resource
	private VideoService videoService;
	
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
	
	@RequestMapping(value="logout" , method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.setAttribute("teamuser", null);
		return "redirect:/index";
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
		
		DanceTeam danceTeam1 = danceTeamService.getMessage(danceTeam.getDanceTeamId());
		int danceTeamNum = this.getTeamNum(danceTeam.getDanceTeamId());
		danceTeam1.setDanceTeamPersonNum(danceTeamNum);
		
		mav.setViewName("team/teamMessage");
		mav.addObject("danceTeam", danceTeam1);
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
	
	//添加成员
	@RequestMapping(value="/addMembers",method=RequestMethod.POST)
	public String addMembers(@RequestParam(value = "username",required=false) String username,
			@RequestParam(value = "password",required=false) String password,
			@RequestParam(value = "role",required=false) String roleId,
			HttpSession session){
		
		DanceTeam dt =(DanceTeam) session.getAttribute("teamuser");
		User user = new User();
		user.setLoginName(username);
		user.setPassword(password);
		user.setAlongTeamId(dt.getDanceTeamId());
		user.setId(PrimaryKeyUtil.getPrimaryKey());
		
		userService.addUser(user);
		String userId = user.getId();
		
		userRoleService.addUserRole(userId, roleId);
		
		return "redirect:teamCenter";
	}
	
	//显示修改角色页
	@RequestMapping(value = "/showUpdateRole",method=RequestMethod.GET)
	public String showUpdateRole(@ModelAttribute TeamMemberRole tmr){
		logger.debug("******成员管理，显示修改角色页******");
		
		return "";
	}
	
	//提交角色修改
	
	@RequestMapping(value = "/updateRole",method=RequestMethod.POST)
	public String updateRole(@RequestParam(value = "username",required=true) String loginName,
			@RequestParam(value = "urole",required=true) String roleId){
		logger.debug("******成员管理，修改用户角色******");
		User user1 = userService.selectUserByLoginName(loginName);
		String userId = user1.getId();
		UserRole userRole = new UserRole();
		userRole.setUserId(userId);
		userRole.setRoleId(roleId);
		userRoleService.updateUr(userRole);
		
		return "redirect:teamCenter";
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
	
	@RequestMapping(value="updateTeamMessage",method=RequestMethod.POST)
	public String updateTeamMessage(@RequestParam(value = "danceTeamName",required=false) String danceTeamName,
			@RequestParam(value = "danceTeamCity",required=false) String danceTeamCity,
			@RequestParam(value = "danceTeamCreateTime",required=false) String danceTeamCreateTime,
			@RequestParam(value = "danceTeamPersonNum",required=false) String danceTeamPersonNum,
			@RequestParam(value = "danceTeamIntro",required=false) String danceTeamIntro,
			HttpSession session){
		logger.debug("******更新舞团的信息******");
		
		//DanceTeam dt =(DanceTeam) session.getAttribute("teamuser");
		
		DanceTeam danceTeam = new DanceTeam();
		danceTeam.setDanceTeamCity(danceTeamCity);
		danceTeam.setDanceTeamCreateTime(DateUtil.StrToSimpleDate(danceTeamCreateTime));
		danceTeam.setDanceTeamIntro(danceTeamIntro);
		danceTeam.setDanceTeamName(danceTeamName);
		danceTeam.setDanceTeamLastUpdateTime(new Date());
		boolean flag = danceTeamService.updateTeamMessage(danceTeam);
		if(flag==false){
			return "error";
		}else{
			return "redirect:teamCenter";
		}
	}
	
	private int getTeamNum(String teamId){
		return danceTeamService.getTeamNum(teamId);
	}
	
	@RequestMapping(value="publishNews" , method=RequestMethod.POST)
	public String publishNews(@RequestParam(value = "title",required=true) String title,
			@RequestParam(value = "container",required=true) String news,
			@RequestParam(value = "action",required=true) String action,
			@RequestParam(value = "newsId",required=false) String newsId,
			HttpSession session){
		DanceTeam danceTeam = (DanceTeam) session.getAttribute("teamuser");
		DanceTeamNews dtn = new DanceTeamNews();
		if("add".equals(action)){
			dtn.setDanceTeamNewsId(PrimaryKeyUtil.getPrimaryKey());
			dtn.setDanceTeamId(danceTeam.getDanceTeamId());
			dtn.setNews(cutString(news));
			dtn.setTitle(title);
			dtn.setLastUpdateTime(new Date());
			danceTeamService.publishNews(dtn);
		}else if("update".equals(action)){
			dtn.setDanceTeamNewsId(newsId);
			dtn.setLastUpdateTime(new Date());
			dtn.setNews(cutString1(news));
			dtn.setTitle(title);
			danceTeamService.updateNews(dtn);
		}
		
		
		return "redirect:teamCenter";
	}
	
	@RequestMapping(value="showNews" , method=RequestMethod.POST)
	public ModelAndView showNews(HttpSession session){
		DanceTeam danceTeam = (DanceTeam) session.getAttribute("teamuser");
		ModelAndView mav = new ModelAndView();
		List<DanceTeamNews> dtnlist = danceTeamService.dtnList(danceTeam.getDanceTeamId());
		mav.addObject("dtnlist", dtnlist);
		mav.setViewName("team/teamNews");
		return mav;
	}
	
	@RequestMapping(value="/showMusics" , method=RequestMethod.POST )
	public ModelAndView showMusics(HttpSession session){
		ModelAndView mav = new ModelAndView();
		DanceTeam danceTeam = (DanceTeam) session.getAttribute("teamuser");
		
		List<Musics> mlist = musicService.mlist(danceTeam.getDanceTeamId());
		mav.addObject("mlist",mlist);
		mav.setViewName("music-video/musicList");
		return mav;
	}
	
	@RequestMapping(value="/showVideos" , method=RequestMethod.POST )
	public ModelAndView showVideos(HttpSession session){
		ModelAndView mav = new ModelAndView();
		DanceTeam danceTeam = (DanceTeam) session.getAttribute("teamuser");
		
		List<Videos> vlist = videoService.vlist(danceTeam.getDanceTeamId());
		mav.addObject("vlist",vlist);
		mav.setViewName("music-video/videoList");
		return mav;
	}
	

	@RequestMapping(value="/deleteNews/{danceTeamNewsId}" , method = RequestMethod.GET)
	public String deleteNews(@PathVariable String danceTeamNewsId){
		danceTeamService.deleteNews(danceTeamNewsId);
		//return "delete success";
		return "redirect:/danceTeam/teamCenter";
	}
	
	private String cutString(String testStr){
		Pattern p = Pattern.compile("<p>(.*)</p>");
		Matcher m = p.matcher(testStr);
		String a = "";
		while(m.find()){
			a = m.group(1);
		}
		return a.substring(0, a.length()-5);
		
	}
	
	private String cutString1(String testStr){
		Pattern p = Pattern.compile("<p>(.*)</p>");
		Matcher m = p.matcher(testStr);
		String a = "";
		while(m.find()){
			a = m.group(1);
		}
		return a;
		
	}
}
