package com.soil.service;

import com.soil.pojo.Soil;

public interface SoilService extends BaseService<Soil> {
	/**
	 * 根据Id查询信息
	 * @param id 
	 * @return 信息
	 */
	public Soil findSoilById(String id);

}
