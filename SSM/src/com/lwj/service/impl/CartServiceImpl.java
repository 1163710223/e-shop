package com.lwj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwj.bean.GoodInfo;
import com.lwj.mapper.CartMapper;
import com.lwj.service.CartService;
@Service
public class CartServiceImpl implements CartService {

	
	@Autowired
	private CartMapper cartMapper ;
	public List<GoodInfo> queryByUsernameInCart(String username) {
		return cartMapper.queryByUsernameInCart(username);
	}

	public Integer queryNum(String username, String id) {
		return cartMapper.queryNum(username, id);
	}

	public void clearCart(String[] ids) {
		cartMapper.clearCart(ids);

	}

	public void addToCart(String username, String id) {
		
		cartMapper.addToCart(username, id);
	}


	public void addToOrder(String username, String id) {
		cartMapper.addToOrder(username, id);
	}

	public List<GoodInfo> queryOrderByUsername(String username) {
		return cartMapper.queryOrderByUsername(username);
	}

	public GoodInfo queryGoodByIdInCart(String id) {
		return cartMapper.queryGoodByIdInCart(id);
	}

}
