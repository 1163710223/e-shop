package com.lwj.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lwj.bean.GoodInfo;
import com.lwj.service.GoodInfoService;


@Controller
public class GoodInfoController {
	
	@Autowired
	private GoodInfoService goodInfoService;
	@RequestMapping("/cart")
	public String query(Map<String, List<?>> map)
	{
		//orderService.query();
		//System.out.print("��������");
		map.put("goods", goodInfoService.query());
		//���ص��ض�����ַ����׺��springMVC����
		return "cart";
	}
	@RequestMapping("/queryByKind")
	public String queryByKind(String kind,String username,Map<String, List<?>> map,Map<String, String> mp)
	{
		//orderService.query();
		//System.out.print("��������");
		//System.out.print(kind);
		String newKind = null;
		String newUsername = null;
		try {
			 newKind=new String(kind.getBytes("iso-8859-1"),"gbk");
			 newUsername=new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
	  	System.out.println(e.getMessage());
		}
		map.put("goodsByKind", goodInfoService.queryByKind(newKind));
		mp.put("username", newUsername);
		//���ص��ض�����ַ����׺��springMVC����
		return "queryByKind";
	}
	@RequestMapping("/buy")
	public String buy(String id,String username,Map<String, GoodInfo> map,Map<String, String> mapStr)
	{
	  // System.out.println("��Ʒ��id"+id);
	   map.put("good",goodInfoService.queryById(id));	
	   
	   
	   String newUsername = null;
	try {
		newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   mapStr.put("username", newUsername);
	  // GoodInfo g= goodInfoService.queryById(id);
	  // System.out.println( g.getName());
	 //  System.out.println( g.getId());
	  // System.out.println( g.getImage());
	 //  System.out.println( g.getKind());
		return "buy";
	}
	@RequestMapping("/buyGoods")
	public String removeByIds(String[] ids)
	{
		 for(String id:ids)
		 {
			 System.out.println(id+"\t");
		 }
		 goodInfoService.removeRyIds(ids);
		//�ض����κ�һ��controller��@RequestMapping·��
		return "cart";
	}
	@RequestMapping("/pay")
	public String pay(String username,Map<String, String> map)
	{
		String newUsername = null;
		try {
			newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 map.put("username",newUsername);
		return "main";
	}
}
