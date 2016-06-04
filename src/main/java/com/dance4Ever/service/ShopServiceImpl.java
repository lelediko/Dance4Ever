package com.dance4Ever.service;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dance4Ever.domain.Category;
import com.dance4Ever.domain.Product;
import com.dance4Ever.domain.UserProduct;
import com.dance4Ever.mapper.CategoryMapper;
import com.dance4Ever.mapper.ProductMapper;
import com.dance4Ever.mapper.UserProductMapper;
import com.dance4Ever.util.PrimaryKeyUtil;

@Service
public class ShopServiceImpl implements ShopService {
	private static final Logger logger = LoggerFactory.getLogger(ShopServiceImpl.class);

	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private CategoryMapper categoryMapper;
	@Autowired
	private UserProductMapper userProductMapper;
	
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

	@Override
	public void addtoUP(String userId, String productId) {
		UserProduct userProduct = new UserProduct();
		userProduct.setUserProductId(PrimaryKeyUtil.getPrimaryKey());
		userProduct.setUserId(userId);
		userProduct.setProductId(productId);
		userProduct.setLastUpdateTime(new Date());
		userProduct.setSellNum(1);
		userProduct.setStatu(0);
		userProductMapper.addtoUP(userProduct);
	}

	@Override
	public List<UserProduct> uplist(String userId) {
		
		return userProductMapper.selectAllByUserId(userId);
	}

	@Override
	public UserProduct go(String userId, String productId) {
		return userProductMapper.go(userId, productId);
	}

	@Override
	public void updateNum(UserProduct userProduct) {
		int sellNum = userProduct.getSellNum()+1;
		userProductMapper.updateNum(userProduct.getUserProductId(), sellNum);
	}

	@Override
	public void deleteFromBuyCar(UserProduct userProduct) {
		userProductMapper.deleteFromBuyCar(userProduct.getUserProductId());
	}
	
	
}
