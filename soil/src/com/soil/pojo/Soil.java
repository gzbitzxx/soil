package com.soil.pojo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Soil {
	//编号
	private int Id;
	//用户编号
	private int userId;
	//区域
	private String region;
	//价格
	private double price;
	//类型
	private String type;
	//长
	private int length;
	//宽
	private int width;
	//图片
	private String picture;
	//状态（是否已出租）
	private boolean state;
	//创建时间
	private Date createTime;
	
	//图片
	private MultipartFile blFile;
	
	//描述
	private String description;
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public MultipartFile getBlFile() {
		return blFile;
	}
	public void setBlFile(MultipartFile blFile) {
		this.blFile = blFile;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
