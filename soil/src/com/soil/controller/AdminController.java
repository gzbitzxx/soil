package com.soil.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soil.pojo.Admin;
import com.soil.pojo.User;
import com.soil.service.AdminService;
import com.soil.util.Pagination;
import com.soil.util.SecurityUtil;

/**
 * 
 * 管理员控制器
 * @author 
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	/**
	 * 添加管理员
	 * @param admin
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addAdmin(Admin admin) {
		admin.setPassword(SecurityUtil.strToMD5(admin.getPassword()));
		adminService.insert(admin);
		return "ok";
	}
	
	/**
	 * 用户登录
	 * @param user 用户信息
	 * @return
	 */
	@RequestMapping("/login")
	public String login(Admin admin,HttpServletRequest request){
		 admin.setPassword(SecurityUtil.strToMD5(admin.getPassword()));
		 Admin result=adminService.login(admin);
		 if (result==null) {
			return "management/login";
		}else {
			request.getSession().setAttribute("admin", result);
			return "management/index";
		}
	}
	
	/**
	 * 退出
	 * @param request
	 * @return
	 */
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return "management/login";
	}
	
	/**
	 * 进入管理员列表
	 * @return
	 */
	@RequestMapping("/toList")
	public String toList() {
		return "management/admin/list";
	};
	
	/**
	 * 返回管理员数据
	 * @param pagination
	 * @return data
	 */
	@RequestMapping("/list")
	@ResponseBody
	public String list(Pagination pagination){
		String data=adminService.list(pagination);
		return data;
	}
	
	/**
	 * 删除管理员
	 * @param id
	 * @return
	 */
	@RequestMapping("/detele")
	@ResponseBody
	public String delete(Admin admin){
		adminService.delete(admin);
		return "ok";
	}

	/**
	 * 通过id查询数据
	 * @param id
	 * @return
	 */
	@RequestMapping("/findById")
	@ResponseBody
	public String findUserById(String id) {
		return adminService.findById(id);
	}

	/**
	 * 更新信息
	 * @param admin
	 * @return
	 */
	@RequestMapping("/update")
	@ResponseBody
	public String update(Admin admin) {
		adminService.update(admin);
		return "";
	}
	
}
