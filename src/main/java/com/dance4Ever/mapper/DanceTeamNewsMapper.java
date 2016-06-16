package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.DanceTeamNews;

@Component
public interface DanceTeamNewsMapper {
	public void publishNews(@Param(value="dtn") DanceTeamNews dtn);
	public List<DanceTeamNews> dtnList(@Param(value="danceTeamId") String danceTeamId);
	public void deleteNews(@Param(value="danceTeamNewsId") String danceTeamNewsId);
	public void updateNews(@Param(value="dtn") DanceTeamNews dtn);
}
