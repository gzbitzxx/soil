package com.soil.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.soil.mapper.UserMapper;
import com.soil.pojo.User;
import com.soil.service.UserService;
import com.soil.util.Pagination;
import com.soil.util.SelectCustom;
import com.soil.util.Util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class UserServiceimpl implements UserService {
	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;
	public void insert(User info) {
		userMapper.insert(info);
	}
	public User login(User user) {
		return userMapper.login(user);
	}
	public String list(Pagination pagination) {
		List<User> users=userMapper.list(pagination);
		pagination.setCount(userMapper.count(pagination));
		Util<User> util=new Util<User>();
		return util.SplitPage(users, pagination.getCount());
	}
	public void delete(User user) {
		userMapper.delete(user);
		
	}
	public String findById(String id) {
		User user=userMapper.findById(id);
		JSONObject jsonObject=JSONObject.fromObject(user);
		return jsonObject.toString();
	}
	public void update(User user) {
		userMapper.update(user);
	}
	
	public String findIDAndNumber() {
		List<SelectCustom> list=userMapper.findIDAndNumber();
		String data=JSONArray.fromObject(list).toString();
		return data;
	}
	@Override
	public List<User> getList(Pagination pagination) {
		// TODO Auto-generated method stub
		return userMapper.list(pagination);
	}
	
}
