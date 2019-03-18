package com.lwj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwj.bean.UserInfo;
import com.lwj.mapper.UserInfoMapper;
import com.lwj.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userInfoMapper;
	
	
	public UserInfo queryByUsername(String username) {
		return userInfoMapper.queryByUsername(username);
	}
	public UserInfo executeLogin(String username, String password) {
		return userInfoMapper.executeLogin(username, password);
	}
	public void signup(String username, String password, String phoneNum,
			String address) {
		// TODO Auto-generated method stub
		userInfoMapper.signup(username, password, phoneNum, address);
	}
	public UserInfo queryByPhoneNum(String phoneNum) {
		return userInfoMapper.queryByPhoneNum(phoneNum);
	}
	public void updateLoginStatusByUsername(String username) {
		userInfoMapper.updateLoginStatusByUsername(username);
	}

}
