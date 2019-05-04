package com.soil.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.soil.mapper.AdminMapper;
import com.soil.pojo.Admin;
import com.soil.pojo.User;
import com.soil.service.AdminService;
import com.soil.util.Pagination;
import com.soil.util.Util;

import net.sf.json.JSONObject;

public class AdminServiceimpl implements AdminService {
	@Autowired
	@Qualifier("adminMapper")
	private AdminMapper adminMapper;
	
	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}
	
	public String list(Pagination pagination) {
		List<Admin> complaints=adminMapper.list(pagination);
		pagination.setCount(adminMapper.count(pagination));
		Util<Admin> util=new Util<Admin>();
		return util.SplitPage(complaints, pagination.getCount());
	}
	
	public void delete(Admin t) {
		adminMapper.delete(t);
		
	}
	
	public String findById(String id) {
		Admin complaint=adminMapper.findById(id);
		JSONObject jsonObject=JSONObject.fromObject(complaint);
		return jsonObject.toString();
	}
	
	public void update(Admin t) {
		adminMapper.update(t);
	}

	@Override
	public void insert(Admin t) {
		adminMapper.insert(t);
		
	}
}
