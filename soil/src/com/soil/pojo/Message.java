package com.soil.pojo;

import java.util.Date;

public class Message {
	//编号
	private int id;
	//创建用户编号
	private int createUserId;
	//回复用户编号
	private int replayUserId;
	//创建时间
	private Date createTime;
	//创建内容
	private String content;
	//是否已读
	private boolean isRead;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCreateUserId() {
		return createUserId;
	}
	public void setCreateUserId(int createUserId) {
		this.createUserId = createUserId;
	}
	public int getReplayUserId() {
		return replayUserId;
	}
	public void setReplayUserId(int replayUserId) {
		this.replayUserId = replayUserId;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isRead() {
		return isRead;
	}
	public void setRead(boolean isRead) {
		this.isRead = isRead;
	}
	
}
