package com.soil.service;


import com.soil.pojo.SoilType;

public interface SoilTypeService extends BaseService<SoilType> {
	
	/**
	 * 获取土地类型下拉信息
	 * @return
	 */
	public String findIDAndNumber();
}
