package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.DanceTeam;
import com.dance4Ever.domain.TeamMemberRole;

public interface DanceTeamService {
	public List<DanceTeam> dlist();
	public DanceTeam login(DanceTeam danceTeam);
	public boolean addTeam(DanceTeam danceTeam);
	public List<TeamMemberRole> getMember(String alongTeamId);
	public boolean updateRole(TeamMemberRole tmr);
	public boolean deleteUserRole(TeamMemberRole tmr);
	public DanceTeam queryById(String danceTeamId);
	public boolean updateTeamMessage(DanceTeam danceTeam);
	public int getTeamNum(String danceTeamId);
}
