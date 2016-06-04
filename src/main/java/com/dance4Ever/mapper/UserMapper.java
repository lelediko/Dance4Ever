package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.Role;
import com.dance4Ever.domain.TeamMemberRole;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserMessage;

@Component
public interface UserMapper {
	//1.注册
	void register(@Param("user") User user);
	//2.登录
	User login(@Param("user") User user);
	//3.根据登录用户名查询角色
	Role selectRoleByLoginName(@Param(value = "loginName") String loginName);
	//4.修改用户信息
	void updateByLoginName(@Param(value = "user") User user);
	//5.根据userid查询舞团id
	String selectByUserId(@Param(value = "id") String id);
	//6.根据舞团id，查询该舞团成员及角色
	List<TeamMemberRole> tmrlist(@Param(value = "alongTeamId") String alongTeamId);
	//7.修改用户角色
	User updateRole(@Param(value = "tmr") TeamMemberRole tmr);
	//8.根据id查出该用户的角色信息
	Role selectById(@Param(value = "id") String id);
	//9.根据用户id修改所属舞团
	void updateAlongTeam(@Param(value = "id") String id);
	//10.根据用户loginName查询部分信息，包括角色，舞团等；
	UserMessage selectUserMessageByLoginName(@Param(value = "loginName") String loginName);
	//11.根据用户loginName查询用户信息
	User selectUserByLoginName(@Param(value = "loginName") String loginName);
	//12.舞团添加成员
	void addMembers(@Param(value = "user") User user);
}
