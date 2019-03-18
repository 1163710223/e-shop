package com.lwj.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lwj.service.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@RequestMapping("/query")
	public String query(Map map)
	{
		//orderService.query();
		map.put("orders", orderService.query());
		//返回到特定的网址，后缀由springMVC决定
		return "query";
	}

}
