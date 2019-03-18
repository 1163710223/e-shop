package com.lwj.bean;

public class Cart {
      private String username;
      private String id;
      private String num;
      
	public Cart() {
	}
	public Cart(String username, String id, String num) {
		this.username = username;
		this.id = id;
		this.num = num;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
      
      
      
}
