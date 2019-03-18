package com.lwj.service;

import com.lwj.bean.Checkin;



public interface CheckinService {
	public void createCheckinTable(String username,String day);
	public void addCheckin(String username);
	public Checkin queryCheckInByUsername(String username);
     
}
