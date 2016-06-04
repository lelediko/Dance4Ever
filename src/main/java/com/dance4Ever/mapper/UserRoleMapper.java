package com.dance4Ever.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.UserRole;

@Component
public interface UserRoleMapper {
	//1.更新修改用户角色
	void updateUr(@Param("userRole") UserRole userRole);
	//2.删除用户角色连接表内信息
	void deleteUserRole(@Param("userId") String userId);
	//3.添加用户角色
	void addUserRole(@Param("userRole") UserRole userRole);
}
