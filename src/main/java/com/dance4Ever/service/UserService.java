package com.dance4Ever.service;

import com.dance4Ever.domain.Role;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserMessage;

public interface UserService {
	public boolean addUser(User user);
	public User login(User user);
	public Role selectRoleByLoginName(String loginName);
	public UserMessage selectUserMessageByLoginName(String loginName);
	public String selectByUserId(String userId);
	public boolean updateByLoginName(User user);
	public User selectUserByLoginName(String loginName);
	public void outTeam(String userId);
}
