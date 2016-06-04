package com.dance4Ever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.dance4Ever.domain.UserProduct;

@Component
public interface UserProductMapper {
	public void addtoUP(@Param(value="userProduct") UserProduct userProduct);
	public List<UserProduct> selectAllByUserId(@Param(value="userId") String userId);
	public UserProduct go(@Param(value="userId") String userId ,@Param(value="productId") String productId);
	public void updateNum(@Param(value="userProductId") String userProductId ,@Param(value="sellNum") int sellNum);
	public void deleteFromBuyCar(@Param(value="userProductId") String userProductId);
}
