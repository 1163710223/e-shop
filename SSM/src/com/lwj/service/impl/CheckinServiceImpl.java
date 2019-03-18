package com.lwj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwj.bean.Checkin;
import com.lwj.mapper.CheckinMapper;
import com.lwj.service.CheckinService;
@Service
public class CheckinServiceImpl implements CheckinService {
	@Autowired
	private CheckinMapper checkinMapper;
	public void addCheckin(String username) {
		checkinMapper.addCheckin(username);
	}



	public void createCheckinTable(String username, String day) {
		checkinMapper.createCheckinTable(username, day);
		
	}



	public Checkin queryCheckInByUsername(String username) {
		return checkinMapper.queryCheckInByUsername(username);
	}

}
