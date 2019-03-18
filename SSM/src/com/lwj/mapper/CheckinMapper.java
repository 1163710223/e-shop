package com.lwj.mapper;

import com.lwj.bean.Checkin;


public interface CheckinMapper {
	public void createCheckinTable(String username,String day);
	public void addCheckin(String username);
	public Checkin queryCheckInByUsername(String username);
}
