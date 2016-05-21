package com.dance4Ever.service;

import java.util.List;

import com.dance4Ever.domain.Category;
import com.dance4Ever.domain.Product;

public interface ShopService {
	public List<Product> proList();
	public List<Product> prList(String productType);
	public Product getMessageById(String productId);
	public List<Category> catelist(String productType);
	public List<Product> pplist(String categoryId);
}
