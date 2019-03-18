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
			//System.out.println("������û�������");
			map.put("errorMessage", "������û�������");
			map.put("errorLocation", "login");
			return "error";
		} else {
			if (ui.getPassword().equals(password)) {	
				//System.out.println("��¼�ɹ�");
				map.put("username", newUsername);
				userInfoService.updateLoginStatusByUsername(newUsername);
				return "main";
			}else{
				//System.out.println("���벻��ȷ");
				map.put("errorMessage", "���벻��ȷ");
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
			map.put("errorMessage", "�û����Ѵ��ڣ���������");
			map.put("errorLocation", "signup");
			return "error";		
		}
		if(uiPhone!=null)
		{
			map.put("errorMessage", "�绰������ʹ�ù�");
			map.put("errorLocation", "signup");
			return "error";	
		}
		if(username.equals("Username")||password.equals("Password")||phoneNum.equals("PhoneNum")||address.equals("Address"))
		{
			map.put("errorMessage", "���벻��Ϊ��");
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
		//ע��ɹ�
		//userInfoService.signup(username, password, phoneNum, address);
	   return "succeed";
		
	}

}
