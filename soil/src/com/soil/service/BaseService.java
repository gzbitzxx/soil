package com.soil.service;

import com.soil.util.Pagination;

public interface BaseService<T> {
	/**
	 * 添加
	 * @param info
	 */
	public void insert(T t);
	/**
	 * 获取列表
	 * @param pagination 分页条件
	 * @return  json 数据
	 */
	public String list(Pagination pagination);
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public void delete(T t);
	/**
	 * 根据Id查询信息
	 * @param id 
	 * @return 信息
	 */
	public String findById(String id);
	/**
	 * 根据id修改信息
	 * @param user 信息
	 */
	public void update(T t);
}
