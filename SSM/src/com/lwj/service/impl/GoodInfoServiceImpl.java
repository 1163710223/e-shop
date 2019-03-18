package com.lwj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwj.bean.GoodInfo;
import com.lwj.mapper.GoodInfoMapper;
import com.lwj.service.GoodInfoService;
@Service
public class GoodInfoServiceImpl implements GoodInfoService {
	@Autowired
	private GoodInfoMapper goodInfoMapper ;
	public List<GoodInfo> query() {
		return goodInfoMapper.query();
	}

	public void removeRyIds(String[] ids) {
		goodInfoMapper.removeRyIds(ids);

	}

	public List<GoodInfo> queryByKind(String kind) {
		
		return goodInfoMapper.queryByKind(kind);
	}

	public GoodInfo queryById(String id) {
		return goodInfoMapper.queryById(id);
	}

}
