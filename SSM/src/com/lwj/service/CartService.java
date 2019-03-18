package com.lwj.service;

import java.util.List;

import com.lwj.bean.GoodInfo;

public interface CartService {
	public void addToCart(String username,String id);
	 public List<GoodInfo> queryByUsernameInCart(String username); 
	 public List<GoodInfo> queryOrderByUsername(String username); 
	 public Integer queryNum(String username,String id); 
     public void clearCart(String[] ids);
     public void addToOrder(String username,String id);
     public GoodInfo queryGoodByIdInCart(String id);
     
}
