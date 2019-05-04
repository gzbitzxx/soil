package com.soil.service;

import com.soil.pojo.User;

public interface UserService extends BaseService<User>{

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @return
	 */
	public User login(User user);
	
	/**
	 * 获取用户下拉信息
	 * @return
	 */
	public String findIDAndNumber();

}
