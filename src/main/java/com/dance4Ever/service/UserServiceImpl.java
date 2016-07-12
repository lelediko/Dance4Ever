package com.dance4Ever.service;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Role;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserMessage;
import com.dance4Ever.mapper.UserMapper;
import com.dance4Ever.mapper.UserRoleMapper;
import com.dance4Ever.util.PrimaryKeyUtil;

@Service
public class UserServiceImpl implements UserService {
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;
	
	public boolean addUser(User user) {
		user.setCreateTime(new Date());
		user.setLastLoginTime(new Date());
		if(user.getId() == null){
			user.setId(PrimaryKeyUtil.getPrimaryKey());
		}
		userMapper.register(user);
		return true;
	}

	public User login(User user) {
		User user1 = new User();
		user1 = userMapper.login(user);
		return user1;
	}

	@Override
	public Role selectRoleByLoginName(String loginName) {
		return userMapper.selectRoleByLoginName(loginName);
	}

	@Override
	public UserMessage selectUserMessageByLoginName(String loginName) {
		
		return userMapper.selectUserMessageByLoginName(loginName);
	}

	@Override
	public String selectByUserId(String userId) {
		
		return userMapper.selectByUserId(userId);
	}

	@Override
	public boolean updateByLoginName(User user) {
		userMapper.updateByLoginName(user);
		
			return true;
		
	}

	@Override
	public User selectUserByLoginName(String loginName) {
		
		return userMapper.selectUserByLoginName(loginName);
	}

	@Override
	public void outTeam(String userId) {
		userMapper.updateAlongTeam(userId);
		userRoleMapper.deleteUserRole(userId);
	}
	
}
