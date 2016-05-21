package com.dance4Ever.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.Role;

@Component
public interface RoleMapper {
	Role selectByRole(@Param("role") String role);
}
