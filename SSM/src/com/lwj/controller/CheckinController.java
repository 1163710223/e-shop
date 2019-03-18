package com.lwj.controller;

import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lwj.bean.Checkin;
import com.lwj.service.CheckinService;

@Controller
public class CheckinController {

	@Autowired
	private CheckinService checkinService;

	// private UserInfoService userInfoService;
	@RequestMapping("/checkin")
	public String addToCheckin(String username, Map<String, String> map,
			Map<String, Checkin> map1) {
		// System.out.println("到达了签到");
		// System.out.println(username);
		// System.out.println(id);
		if (username == null || username == "") {
			return "login";
		}
		String newUsername = null;
		try {
			newUsername = new String(username.getBytes("iso-8859-1"), "gbk");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Date date = new Date();
		String[] weekDays = { "sunday", "monday", "tuesday", "wednesday",
				"thursday", "friday", "saturday" };
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int w = cal.get(Calendar.DAY_OF_WEEK) - 1;
		if (w < 0) {
			w = 0;
		}
		System.out.println(weekDays[w]);

		checkinService.createCheckinTable(newUsername, weekDays[w]);
		Checkin ck = checkinService.queryCheckInByUsername(newUsername);
		int count = 0;
		
			if (ck.getSunday().equals("yes")) {
				count++;
			}
			if (ck.getMonday().equals("yes")) {
				count++;
			}
			if (ck.getTuesday().equals("yes")) {
				count++;
			}
			if (ck.getWednesday().equals("yes")) {
				count++;
			}
			if (ck.getThursday().equals("yes")) {
				count++;
			}
			if (ck.getFriday().equals("yes")) {
				count++;
			}
			if (ck.getSaturday().equals("yes")) {
				count++;
			}
		map.put("username", newUsername);
		map.put("checkinDayNums", count + "");
		map1.put("checkin", ck);

		return "checkin";

	}

}
