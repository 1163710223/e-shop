package com.lwj.bean;

public class UserInfo {
            private String username;
            private String password;
            private String phoneNum;
            private String address;
            private int loginStatus;
            
            
            
			public UserInfo() {
			
			}
			public UserInfo(String username, String password, String phoneNum,
					String address) {
			
				this.username = username;
				this.password = password;
				this.phoneNum = phoneNum;
				this.address = address;
			}
			
			
			public int getLoginStatus() {
				return loginStatus;
			}
			public void setLoginStatus(int loginStatus) {
				this.loginStatus = loginStatus;
			}
			public String getUsername() {
				return username;
			}
			public void setUsername(String username) {
				this.username = username;
			}
			public String getPassword() {
				return password;
			}
			public void setPassword(String password) {
				this.password = password;
			}
			public String getPhoneNum() {
				return phoneNum;
			}
			public void setPhoneNum(String phoneNum) {
				this.phoneNum = phoneNum;
			}
			public String getAddress() {
				return address;
			}
			public void setAddress(String address) {
				this.address = address;
			}
            
            
            
}
