package com.soil.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.soil.util.Pagination;
import com.soil.util.SelectCustom;
import com.soil.util.Util;
import com.soil.mapper.AreaMapper;
import com.soil.pojo.Area;
import com.soil.service.AreaService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class AreaServiceimpl implements AreaService {
	@Autowired
	@Qualifier("areaMapper")
	private AreaMapper areaMapper;
	
	public String list(Pagination pagination) {
		List<Area> complaints=areaMapper.list(pagination);
		pagination.setCount(areaMapper.count(pagination));
		Util<Area> util=new Util<Area>();
		return util.SplitPage(complaints, pagination.getCount());
	}
	
	public void delete(Area t) {
		areaMapper.delete(t);
		
	}
	
	public String findById(String id) {
		Area complaint=areaMapper.findById(id);
		JSONObject jsonObject=JSONObject.fromObject(complaint);
		return jsonObject.toString();
	}
	
	public void update(Area t) {
		areaMapper.update(t);
	}

	@Override
	public void insert(Area t) {
		areaMapper.insert(t);
	}

	@Override
	public List<Area> getList(Pagination pagination) {
		// TODO Auto-generated method stub
		return areaMapper.list(pagination);
	}

	public String findIDAndNumber() {
		List<SelectCustom> list=areaMapper.findIDAndNumber();
		String data=JSONArray.fromObject(list).toString();
		return data;
	}
	
}
