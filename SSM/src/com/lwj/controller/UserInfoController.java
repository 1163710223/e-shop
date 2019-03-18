package com.lwj.controller;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lwj.bean.UserInfo;
import com.lwj.service.UserInfoService;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoService userInfoService;
	public String str;

	@RequestMapping("/login")
	public String executeLogin(String username, String password,
			Map<String, String> map) {

		//System.out.println(username);
		//System.out.println(password);
		String newUsername = null;
		try {
			 newUsername=new String(username.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		UserInfo ui = userInfoService.queryByUsername(newUsername);
		if (ui == null) {
			//System.out.println("输入的用户不存在");
			map.put("errorMessage", "输入的用户不存在");
			map.put("errorLocation", "login");
			return "error";
		} else {
			if (ui.getPassword().equals(password)) {	
				//System.out.println("登录成功");
				map.put("username", newUsername);
				userInfoService.updateLoginStatusByUsername(newUsername);
				return "main";
			}else{
				//System.out.println("密码不正确");
				map.put("errorMessage", "密码不正确");
				map.put("errorLocation", "login");
				return "error";			
			}
		}	
	}
	
	@RequestMapping("/signup")
	public String signup(String username, String password,String phoneNum,String address,
			Map<String, String> map) {
		
		UserInfo ui = userInfoService.queryByUsername(username);
		UserInfo uiPhone = userInfoService.queryByPhoneNum(phoneNum);
		if(ui!=null)
		{
			map.put("errorMessage", "用户名已存在，换个名吧");
			map.put("errorLocation", "signup");
			return "error";		
		}
		if(uiPhone!=null)
		{
			map.put("errorMessage", "电话号码已使用过");
			map.put("errorLocation", "signup");
			return "error";	
		}
		if(username.equals("Username")||password.equals("Password")||phoneNum.equals("PhoneNum")||address.equals("Address"))
		{
			map.put("errorMessage", "输入不能为空");
			map.put("errorLocation", "signup");
			return "error";	
		}
		String newUsername = null;
		String newAddress = null;
		try {
			newUsername=new String(username.getBytes("iso-8859-1"),"gbk");
			newAddress=new String(address.getBytes("iso-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
		   System.out.println(e.getMessage());
		}
		userInfoService.signup(newUsername, password, phoneNum, newAddress);
		map.put("username", newUsername);
		//注册成功
		//userInfoService.signup(username, password, phoneNum, address);
	   return "succeed";
		
	}

}
