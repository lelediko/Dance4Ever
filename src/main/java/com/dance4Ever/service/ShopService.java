package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.Category;
import com.dance4Ever.domain.Product;
import com.dance4Ever.domain.UserProduct;

public interface ShopService {
	public List<Product> proList();
	public List<Product> prList(String productType);
	public Product getMessageById(String productId);
	public List<Category> catelist(String productType);
	public List<Product> pplist(String categoryId);
	public void addtoUP(String userId , String productId);
	public List<UserProduct> uplist(String userId);
	public UserProduct go(String userId , String productId);
	public void updateNum(UserProduct userProduct);
	public void deleteFromBuyCar(UserProduct userProduct);
}
