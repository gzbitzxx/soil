package com.soil.service;

import com.soil.pojo.Admin;

public interface AdminService extends BaseService<Admin>{

	/**
	 * 管理员登录
	 * 
	 * @param admin
	 * @return
	 */
	public Admin login(Admin admin);
}
