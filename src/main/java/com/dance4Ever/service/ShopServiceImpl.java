package com.dance4Ever.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Category;
import com.dance4Ever.domain.Product;
import com.dance4Ever.mapper.CategoryMapper;
import com.dance4Ever.mapper.ProductMapper;

@Service
public class ShopServiceImpl implements ShopService {
	private static final Logger logger = LoggerFactory.getLogger(ShopServiceImpl.class);

	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public List<Product> proList() {
		return productMapper.proList();
	}

	@Override
	public List<Product> prList(String productType) {
		return productMapper.prList(productType);
	}

	@Override
	public Product getMessageById(String productId) {
		return productMapper.getMessageById(productId);
	}

	@Override
	public List<Category> catelist(String productType) {
		return categoryMapper.catelist(productType);
	}

	@Override
	public List<Product> pplist(String categoryId) {
		return productMapper.pplist(categoryId);
	}
	
	
}
