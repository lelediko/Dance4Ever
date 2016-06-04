package com.dance4Ever.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Role;
import com.dance4Ever.mapper.RoleMapper;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleMapper;
	
	public Role selectByRole(String role) {
		
		return roleMapper.selectByRole(role);
	}

}
