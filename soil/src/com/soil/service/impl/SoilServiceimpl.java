package com.soil.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.soil.mapper.SoilMapper;
import com.soil.pojo.Soil;
import com.soil.service.SoilService;
import com.soil.util.Pagination;
import com.soil.util.Util;

import net.sf.json.JSONObject;

public class SoilServiceimpl implements SoilService {
	@Autowired
	@Qualifier("soilMapper")
	private SoilMapper soilMapper;
	
	public String list(Pagination pagination) {
		List<Soil> complaints=soilMapper.list(pagination);
		pagination.setCount(soilMapper.count(pagination));
		Util<Soil> util=new Util<Soil>();
		return util.SplitPage(complaints, pagination.getCount());
	}
	
	public void delete(Soil t) {
		soilMapper.delete(t);
		
	}
	
	public String findById(String id) {
		Soil complaint=soilMapper.findById(id);
		JSONObject jsonObject=JSONObject.fromObject(complaint);
		return jsonObject.toString();
	}
	
	public void update(Soil t) {
		soilMapper.update(t);
	}

	@Override
	public void insert(Soil t) {
		soilMapper.insert(t);
		
	}
}
