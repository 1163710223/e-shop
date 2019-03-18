package com.lwj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwj.bean.Order;
import com.lwj.mapper.OrderMapper;
import com.lwj.service.OrderService;


@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper ;
	public List<Order> query() {
		return orderMapper.query();
	}






}
