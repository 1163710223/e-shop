package com.lwj.bean;


public class Order {	
	private Integer orderId;
	private String orderNo;
	private String userName;
	private String userAddress;
	private String userPhone;
	

	public Order() {
		
	}
	public Order(String orderNo, String userName, String userAddress,
			String userPhone) {
		this.orderNo = orderNo;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
	}
	public Order(Integer orderId, String orderNo, String userName,
			String userAddress, String userPhone) {
		this.orderId = orderId;
		this.orderNo = orderNo;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	
	
}
