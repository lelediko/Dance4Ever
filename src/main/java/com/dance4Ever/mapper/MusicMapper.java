package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.Musics;

@Component
public interface MusicMapper {
	public void createMusic(@Param(value = "music") Musics music);
	public List<Musics> getMusics(@Param(value = "userId") String userId);
	public Musics download(@Param(value = "musicId") String musicId);
}
