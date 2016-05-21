package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.Category;

@Component
public interface CategoryMapper {
	//1.根据type查询种类
	List<Category> catelist(@Param("categoryType") String categoryType);
}
