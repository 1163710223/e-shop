package com.lwj.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lwj.bean.GoodInfo;
import com.lwj.bean.UserInfo;
import com.lwj.service.CartService;
import com.lwj.service.GoodInfoService;


@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	private GoodInfoService goodIndoService;
	//private UserInfoService userInfoService;
	@RequestMapping("/addToCart")
	public String addToCart(String username,String id,Map<String, String> map)
	{
		//System.out.println("加入购物车");
		//System.out.println(username);
		//System.out.println(id);
		if(username==null||id==null||username=="")
		{
			return "login";
		}
		String newUsername = null;
		try {
			 newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		cartService.addToCart(newUsername, id);
		map.put("username",newUsername);
		return "main";
	
	}
	@RequestMapping("/queryByUsernameInCart")
	 public String queryByUsernameInCart(String username,Map<String, List<GoodInfo>> map,Map<String, String> map2)
	 {
		if(username==null||username.equals(""))
		{
			return "login";
		}
		String newUsername = null;
		try {
			 newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<GoodInfo> cartContaions = cartService.queryByUsernameInCart(newUsername);
		map.put("goods", cartContaions);
		map2.put("username",newUsername);
		//System.out.println("进入购物车");
		//System.out.println(newUsername);
		 return "cart";
	 }
	
	//queryOrderByUsername
	
	@RequestMapping("/queryOrderByUsername")
	 public String queryOrderByUsername(String username,Map<String, List<GoodInfo>> map,Map<String, UserInfo> map1,Map<String, String> map2)
	 {
		if(username==null||username.equals(""))
		{
			return "login";
		}
		String newUsername = null;
		try {
			 newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			System.out.println(e.getMessage());
		}
		System.out.println(newUsername);
		List<GoodInfo> cartContaions = cartService.queryOrderByUsername(newUsername);
		map.put("goods", cartContaions);
		// UserInfo ui =	
			// userInfoService.queryByUsername(newUsername);
		  // map1.put("userinfo",ui);
		
		map2.put("username",newUsername);

		 return "order";
	 }
	//clearCart
	@RequestMapping("/clearCart")
	 public String clearCart(String username,String image,String price,String[] ids,Map<String, GoodInfo> map ,Map<String, String> map2,Map<String, List<GoodInfo>> map3)
	 {
		if(ids==null)
		{
			return "main";
		}
		//System.out.println("加入订单");
		if(username==null||username.equals(""))
		{
			return "login";
		}
		String newUsername = null;
		
		try {
			 newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		//List<GoodInfo> list = null ;
		//GoodInfo gi = null;
		for(String id:ids)
		{
			// gi = cartService.queryGoodByIdInCart(id);
			cartService.addToOrder(newUsername,id);
			//list.add(gi);
		}
		//if(gi!=null)
		//{
		//	map.put("good1",gi);
		//}
		cartService.clearCart(ids);
		map2.put("username", newUsername);
		map2.put("image",image);
		map2.put("price",price);
		map2.put("id",ids[0]+"");
		//map3.put("goods",goods);
		//System.out.println("就是这里啦"+goods.get(0).getImage());
		 return "pay";
	 }

	
}
