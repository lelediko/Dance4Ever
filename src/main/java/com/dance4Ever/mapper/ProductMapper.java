package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.Product;

@Component
public interface ProductMapper {
	//1.显示所有商品种类
	List<Product> proList();
	//2.显示某一种类的所有信息
	List<Product> prList(@Param("productType") String productType);
	//3.显示某一商品的信息
	Product getMessageById(@Param("productId") String productId);
	//4.根据categoryId查询对应的商品
	List<Product> pplist(@Param("categoryId") String categoryId);
}
