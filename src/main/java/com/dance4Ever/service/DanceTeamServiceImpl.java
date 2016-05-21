package com.dance4Ever.service;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.DanceTeam;
import com.dance4Ever.domain.Role;
import com.dance4Ever.domain.TeamMemberRole;
import com.dance4Ever.domain.UserRole;
import com.dance4Ever.mapper.DanceTeamMapper;
import com.dance4Ever.mapper.RoleMapper;
import com.dance4Ever.mapper.UserMapper;
import com.dance4Ever.mapper.UserRoleMapper;
import com.dance4Ever.util.PrimaryKeyUtil;

@Service
public class DanceTeamServiceImpl implements DanceTeamService {
	private static final Logger logger = LoggerFactory.getLogger(DanceTeamServiceImpl.class);
	
	@Autowired
	private DanceTeamMapper danceTeamMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;

	public List<DanceTeam> dlist() {
		return danceTeamMapper.dlist();
	}

	@Override
	public DanceTeam login(DanceTeam danceTeam) {
		DanceTeam danceTeam1 =  new DanceTeam();
		danceTeam1 = danceTeamMapper.teamlogin(danceTeam);
		return danceTeam1;
		
	}

	@Override
	public boolean addTeam(DanceTeam danceTeam) {
		danceTeam.setDanceTeamId(PrimaryKeyUtil.getPrimaryKey());
		danceTeam.setDanceTeamLastUpdateTime(new Date());
		danceTeamMapper.registerTeam(danceTeam);
		return true;
	}

	@Override
	public List<TeamMemberRole> getMember(String alongTeamId) {
		return userMapper.tmrlist(alongTeamId);
	}

	@Override
	public boolean updateRole(TeamMemberRole tmr) {
		//得到角色的id
		Role ro = roleMapper.selectByRole(tmr.getRole());
		UserRole userRole = new UserRole();
		userRole.setRoleId(ro.getRoleId());
		userRole.setUserId(tmr.getId());
		
		userRoleMapper.updateUr(userRole);
		return true;
	}

	@Override
	public boolean deleteUserRole(TeamMemberRole tmr) {
		userRoleMapper.deleteUserRole(tmr.getId());
		userMapper.updateAlongTeam(tmr.getId());
		return true;
	}

	@Override
	public DanceTeam queryById(String danceTeamId) {
		return danceTeamMapper.queryById(danceTeamId);
	}
}