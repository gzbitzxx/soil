package com.soil.mapper;

import java.util.List;

import com.soil.pojo.Area;
import com.soil.util.Pagination;
import com.soil.util.SelectCustom;

public interface AreaMapper{
	/**
	 * 添加信息
	 * @param info
	 */
	public void insert(Area t);
	/**
	 * 获取信息列表
	 * @param pagination 分页条件
	 * @return 信息 json 数据
	 */
	public List<Area> list(Pagination pagination);
	
	/**
	 * 获取信息条数的个数
	 * @param pagination 分页条件
	 * @return 条数
	 */
	public int count(Pagination pagination);
	/**
	 * 删除信息
	 * @param id
	 * @return
	 */
	public void delete(Area t);
	/**
	 * 根据Id查询信息
	 * @param id 
	 * @return 信息
	 */
	public Area findById(String id);
	/**
	 * 根据id修改信息
	 * @param 修改信息
	 */
	public void update(Area t);
	
	/**
	 * 获取下拉列表
	 * @return
	 */
	public List<SelectCustom> findIDAndNumber();
}
