package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.DanceTeam;

@Component
public interface DanceTeamMapper {
	//1.查询所有舞团的信息
	List<DanceTeam> dlist();
	//2.查询舞团所有成员及角色
	//List<> list();
	//3.舞团登录
	DanceTeam teamlogin(@Param("danceTeam") DanceTeam danceTeam);
	//4.注册舞团
	void registerTeam(@Param("danceTeam") DanceTeam danceTeam);
	//5.根据舞团id，查询所在舞团的信息
	DanceTeam queryById(@Param("id") String id);
	//6.根据舞团登录名，更改舞团信息
	void updateDanceTeamMessage(@Param("danceTeam") DanceTeam danceTeam);
	//7.求舞团人数
	int getTeamNum(@Param("danceTeamId") String danceTeamId);
}
