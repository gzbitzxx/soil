package com.soil.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.soil.mapper.MessageMapper;
import com.soil.pojo.Message;
import com.soil.service.MessageService;
import com.soil.util.Pagination;
import com.soil.util.Util;

import net.sf.json.JSONObject;

public class MessageServiceimpl implements MessageService {
	@Autowired
	@Qualifier("messageMapper")
	private MessageMapper messageMapper;
	
	public String list(Pagination pagination) {
		List<Message> complaints=messageMapper.list(pagination);
		pagination.setCount(messageMapper.count(pagination));
		Util<Message> util=new Util<Message>();
		return util.SplitPage(complaints, pagination.getCount());
	}
	
	public void delete(Message t) {
		messageMapper.delete(t);
		
	}
	
	public String findById(String id) {
		Message complaint=messageMapper.findById(id);
		JSONObject jsonObject=JSONObject.fromObject(complaint);
		return jsonObject.toString();
	}
	
	public void update(Message t) {
		messageMapper.update(t);
	}

	@Override
	public void insert(Message t) {
		messageMapper.insert(t);
		
	}

}
