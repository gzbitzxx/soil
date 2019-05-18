package com.soil.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.soil.util.Pagination;
import com.soil.util.SelectCustom;
import com.soil.util.Util;
import com.soil.mapper.SoilTypeMapper;
import com.soil.pojo.SoilType;
import com.soil.service.SoilTypeService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SoilTypeServiceimpl implements SoilTypeService {
	@Autowired
	@Qualifier("soilTypeMapper")
	private SoilTypeMapper soilTypeMapper;
	
	public String list(Pagination pagination) {
		List<SoilType> complaints=soilTypeMapper.list(pagination);
		pagination.setCount(soilTypeMapper.count(pagination));
		Util<SoilType> util=new Util<SoilType>();
		return util.SplitPage(complaints, pagination.getCount());
	}
	
	public void delete(SoilType t) {
		soilTypeMapper.delete(t);
		
	}
	
	public String findById(String id) {
		SoilType complaint=soilTypeMapper.findById(id);
		JSONObject jsonObject=JSONObject.fromObject(complaint);
		return jsonObject.toString();
	}
	
	public void update(SoilType t) {
		soilTypeMapper.update(t);
	}

	@Override
	public void insert(SoilType t) {
		soilTypeMapper.insert(t);
	}

	@Override
	public List<SoilType> getList(Pagination pagination) {
		// TODO Auto-generated method stub
		return soilTypeMapper.list(pagination);
	}

	public String findIDAndNumber() {
		List<SelectCustom> list=soilTypeMapper.findIDAndNumber();
		String data=JSONArray.fromObject(list).toString();
		return data;
	}
}
