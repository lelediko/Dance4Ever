package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dance4Ever.domain.UserMusicsLove;

public interface UserMusicsLoveMapper {
	public void addtoLove(@Param(value="uml") UserMusicsLove uml);
	public List<String> getMusicsId(@Param(value="userId") String userId);
	public void deleteLoveMusic(@Param(value="musicId") String musicId ,@Param(value="userId") String userId );
}
