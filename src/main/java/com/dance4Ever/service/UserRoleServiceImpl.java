package com.dance4Ever.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.UserRole;
import com.dance4Ever.mapper.UserRoleMapper;
import com.dance4Ever.util.PrimaryKeyUtil;

@Service
public class UserRoleServiceImpl implements UserRoleService {

	@Autowired
	private UserRoleMapper userRoleMapper;

	public void addUserRole(String userId , String roleId) {
		UserRole userRole = new UserRole();
		userRole.setUserRoleId(PrimaryKeyUtil.getPrimaryKey());
		userRole.setUserId(userId);
		userRole.setRoleId(roleId);
		userRoleMapper.addUserRole(userRole);
		
	}

	@Override
	public void updateUr(UserRole userRole) {
		userRoleMapper.updateUr(userRole);
	}

}
