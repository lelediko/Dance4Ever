package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.UserVideosLove;

@Component
public interface UserVideosLoveMapper {
	public void addtoLove(@Param("uvl") UserVideosLove uvl);
	public List<String> getVideosId(@Param(value="userId") String userId);
	public void deleteLoveVideo(@Param(value="videoId") String videoId ,@Param(value="userId") String userId );
}
