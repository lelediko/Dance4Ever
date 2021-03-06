package com.dance4Ever.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dance4Ever.domain.Category;
import com.dance4Ever.domain.Product;
import com.dance4Ever.domain.User;
import com.dance4Ever.domain.UserProduct;
import com.dance4Ever.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Resource
	private ShopService shopService;
	
	@RequestMapping(value="/showShop",method=RequestMethod.GET)  
    public String showShop(Model model){
        logger.debug("******首页******");
        return "/shop";  
    }
	
	@RequestMapping(value="/showShopMain",method=RequestMethod.GET)  
    public ModelAndView showShopMain(HttpSession session){
		logger.debug("******显示商品种类******");
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("loginuser")==null){
			mav.setViewName("wrong");
			return mav;
		}else{
			List<Product> proList = shopService.proList();
	        mav.addObject("proList", proList);
	        mav.setViewName("shop/main");
	        return mav;  
		}
    }
	
	@RequestMapping(value="/showCategory/{productType}",method=RequestMethod.GET )  
    public ModelAndView showCategory(Model model ,@PathVariable String productType ){
        logger.debug("******显示产品种类******");
        ModelAndView mav = new ModelAndView();
        List<Category> catelist = shopService.catelist(productType);
        //List<Product> prList = shopService.prList(productType);
        mav.addObject("catelist", catelist);
        mav.setViewName("shop/viewCategory");
        return mav;  
    }
	
	@RequestMapping(value="/showCategory/showItem/{categoryId}",method=RequestMethod.GET )  
    public ModelAndView showProduct(@PathVariable String categoryId){
        logger.debug("******显示该种类的商品******");
        ModelAndView mav = new ModelAndView();
        List<Product> pplist = shopService.pplist(categoryId);
        mav.addObject("pplist", pplist);
        mav.setViewName("shop/viewProduct");
        return mav;  
    }
	
	@RequestMapping(value="/showCategory/showItem/showProduct/{productId}",method=RequestMethod.GET)  
    public ModelAndView showItem(@PathVariable String productId){
        logger.debug("******显示商品详情******");
        ModelAndView mav = new ModelAndView();
        Product prod = shopService.getMessageById(productId);
        mav.addObject("prod", prod);
        mav.setViewName("shop/viewItem");
        return mav;  
    }
	
	@RequestMapping(value="/showCategory/showItem/showProduct/{productId}/addToShopCar",method=RequestMethod.GET)  
    public ModelAndView addToShopCar(@PathVariable String productId,HttpSession session){
        logger.debug("******加入购物车******");
        ModelAndView mav = new ModelAndView();
        User user1 = (User) session.getAttribute("loginuser");
        
        UserProduct userProduct0 = shopService.go(user1.getId(), productId);
        
        if(userProduct0 != null){
        	shopService.updateNum(userProduct0);
        }else{
        	shopService.addtoUP(user1.getId(), productId);
        }
          
//        List<UserProduct> uplist = shopService.uplist(user1.getId());
//        List<Product> plist = new ArrayList();
//        for(int i = 0 ; i < uplist.size() ; i++){
//        	UserProduct up = uplist.get(i);
//        	String pid = up.getProductId();
//        	Product p = shopService.getMessageById(pid);
//        	p.setProductSellNum(up.getSellNum());
//        	plist.add(p);
//        }
        
        mav.addObject("plist", productList(user1.getId()));
        mav.setViewName("shop/addItemToCart");
        return mav; 
    }
	
	@RequestMapping(value="/showCar",method=RequestMethod.GET)  
    public ModelAndView showCar(HttpSession session){
        logger.debug("******加入购物车******");
        ModelAndView mav = new ModelAndView();
        User user1 = (User) session.getAttribute("loginuser");
        
        mav.addObject("plist", productList(user1.getId()));
        mav.setViewName("shop/addItemToCart");
        return mav; 
	}
	
	@RequestMapping(value="/remove/{productId}",method=RequestMethod.GET)
	public ModelAndView removeFromBuyCar(@PathVariable String productId,HttpSession session){
		logger.debug("******加入购物车******");
        ModelAndView mav = new ModelAndView();
		
        User user1 = (User) session.getAttribute("loginuser");
        UserProduct userProduct0 = shopService.go(user1.getId(), productId);
        shopService.deleteFromBuyCar(userProduct0);
        
        mav.addObject("plist", productList(user1.getId()));
        mav.setViewName("shop/addItemToCart");
        return mav; 
	}
	
	@RequestMapping(value="/showCategory/showItem/showProduct/addToShopCar/remove/{productId}",method=RequestMethod.GET)
	public ModelAndView deleteFromBuyCar(@PathVariable String productId,HttpSession session){
		logger.debug("******加入购物车******");
        ModelAndView mav = new ModelAndView();
		
        User user1 = (User) session.getAttribute("loginuser");
        UserProduct userProduct0 = shopService.go(user1.getId(), productId);
        shopService.deleteFromBuyCar(userProduct0);
        
        mav.addObject("plist", productList(user1.getId()));
        mav.setViewName("shop/addItemToCart");
        return mav; 
	}
	
	
	
	private List<Product> productList(String userId){
		 List<UserProduct> uplist = shopService.uplist(userId);
	        List<Product> plist = new ArrayList();
	        for(int i = 0 ; i < uplist.size() ; i++){
	        	UserProduct up = uplist.get(i);
	        	String pid = up.getProductId();
	        	Product p = shopService.getMessageById(pid);
	        	p.setProductSellNum(up.getSellNum());
	        	plist.add(p);
	        }
		return plist;
	}
}
