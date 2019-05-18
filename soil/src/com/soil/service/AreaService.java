package com.soil.service;


import com.soil.pojo.Area;

public interface AreaService extends BaseService<Area> {

	/**
	 * 获取区域下拉信息
	 * @return
	 */
	public String findIDAndNumber();
}
