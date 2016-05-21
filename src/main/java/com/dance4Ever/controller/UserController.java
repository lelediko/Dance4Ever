package com.dance4Ever.controller;

import java.util.HashMap;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.DanceTeam;
import com.dance4Ever.domain.Role;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserMessage;
import com.dance4Ever.service.DanceTeamService;
import com.dance4Ever.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource
	private UserService userService;
	@Resource
	private DanceTeamService danceTeamService;
	
	@RequestMapping(value="/userlogin",method=RequestMethod.GET)  
    public String userloginForm(Model model){
        logger.debug("******登陆页面******");
        return "user/userlogin";  
    }
	
	@RequestMapping(value="/userlogin" , method=RequestMethod.POST)
	public String login(@ModelAttribute User user , HttpServletRequest request,HttpSession session){
		logger.debug("【用户登录】");
		User user1 = userService.login(user);
		if(user1 == null){
			return "/error";
		}else{
			session.setAttribute("loginuser", user1);
			return "redirect:/index";
		}
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)  
    public String index(Model model){
        logger.debug("******首页******");
        
        return "index";  
    }
	@RequestMapping(value="/register",method=RequestMethod.GET)  
    public String register(Model model){
        logger.debug("******显示注册******");
        return "user/register";  
    }
	
	@RequestMapping(value="/register",method=RequestMethod.POST)  
    public String addUser(@ModelAttribute User user , HttpServletRequest request ){
        logger.debug("******用户注册******");
        userService.addUser(user);
        return "user/register";  
    }
	
	@RequestMapping(value="/user",method=RequestMethod.GET)  
    public String user(HttpSession session){
        logger.debug("******用户中心******");
        User user1 = (User) session.getAttribute("loginuser");
        return "/userLeft";
    }
	
	@RequestMapping(value="/changeModal",method=RequestMethod.POST)  
    public ModelAndView modal(HttpSession session){
        logger.debug("******用户中心******");
        ModelAndView mav = new ModelAndView();
        User user1 = (User) session.getAttribute("loginuser");
        //UserMessage um = userService.selectUserMessageByLoginName(user1.getLoginName());
        User user2 = userService.selectUserByLoginName(user1.getLoginName());
        String alongteamId = user1.getAlongTeamId();
        if(alongteamId != null){
        	Role role = userService.selectRoleByLoginName(user1.getLoginName());
        	mav.addObject("role", role);
        	DanceTeam danceTeam1 = danceTeamService.queryById(alongteamId);
        	mav.addObject("dt", danceTeam1);
        }
        
        mav.setViewName("user/userMessage");
        mav.addObject("um", user2);
        return mav;
    }
	
	@RequestMapping(value="/myTeam",method=RequestMethod.POST)  
    public ModelAndView myTeam(HttpSession session){
        logger.debug("******我的舞团******");
        ModelAndView mav = new ModelAndView();
        User user1 = (User) session.getAttribute("loginuser");
        //从session中获取该用户id
        String userId = user1.getId();
        //获得角色
        Role role = userService.selectRoleByLoginName(user1.getLoginName());
        //获得舞团id
        String danceTeamId = userService.selectByUserId(userId);
        //获得舞团信息
        DanceTeam danceTeam = danceTeamService.queryById(danceTeamId);
        
        
        mav.setViewName("user/myTeam");
        mav.addObject("role1", role);
        mav.addObject("danceTeam", danceTeam);
        return mav;
    }
	
	@RequestMapping(value = "/updateUserMessage" ,method = RequestMethod.POST)
	public String updateUserMessage(@RequestParam(value = "loginName",required=false) String loginNameValue ,
									@RequestParam(value = "age",required=false) int age ,
									@RequestParam(value = "sex",required=false) int sex ,
									@RequestParam(value = "email",required=false) String email ,
									@RequestParam(value = "danceType",required=false) String danceType ,
									@RequestParam(value = "danceAge",required=false) int danceAge ,
									@RequestParam(value = "danceTeamName",required=false) String danceTeamNameValue ,
									@RequestParam(value = "roleNote",required=false) String roleNote ,
									HttpSession session){
		logger.debug("******更新我的信息******");
		
		String [] sloginName = loginNameValue.split(":");
		String loginName = sloginName[1];
//		String [] sdanceTeamName = danceTeamNameValue.split(":");
//		String danceTeamName = sdanceTeamName[1];
		
		User user1 = new User();
		user1.setAge(age);
		user1.setDanceAge(danceAge);
		user1.setEmail(email);
		user1.setDanceType(danceType);
		user1.setLoginName(loginName);
		user1.setSex(sex);
		
		boolean flag = userService.updateByLoginName(user1);
		if(flag == false){
			return "error";
		}
		return "redirect:user";
	}
	
}
