package com.lwj.bean;

public class GoodInfo {
    /**
     * name varchar(50) not null, #商品名称
kind varchar(20) not null, #种类
introduction varchar(50) not null, #描述
size int,#尺码
image varchar(20) not null , #图片位置
location varchar(20) , #所在地
price int not null, #价格
id int(20) not null auto_increment,primary key (id) #id
     */
	
	
	private String name;
	private String kind;
	private String introduction;
	private int size;
	private String image;
	private String location;
	private int price;
	private String id;
	
	

	
	public GoodInfo() {
	}
	public GoodInfo(String name, String kind, String introduction, int size,
			String image, String location, int price) {
		this.name = name;
		this.kind = kind;
		this.introduction = introduction;
		this.size = size;
		this.image = image;
		this.location = location;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
}
