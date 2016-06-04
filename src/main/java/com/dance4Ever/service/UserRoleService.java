package com.dance4Ever.service;

import com.dance4Ever.domain.UserRole;

public interface UserRoleService {
	public void addUserRole(String userId , String roleId);
	public void updateUr(UserRole userRole);
}
