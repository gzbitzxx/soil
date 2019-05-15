package com.soil.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soil.pojo.Admin;
import com.soil.pojo.User;
import com.soil.service.UserService;
import com.soil.util.Pagination;
import com.soil.util.SecurityUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	/**
	 * 跳转到注册页面
	 * @return
	 */
	@RequestMapping("/toRegister")
	public String toRegister() {
		return "management/user/register";
	}
	
	/**
	 * 用户注册
	 */
	@RequestMapping("/register")
	@ResponseBody
	public String register(User user) {
		user.setPassword(SecurityUtil.strToMD5(user.getPassword()));
		userService.insert(user);
		return "ok";
	}
	/**
	 * 用户登录
	 * @param user 用户信息
	 * @return
	 */
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		 user.setPassword(SecurityUtil.strToMD5(user.getPassword()));
		 User result=userService.login(user);
		 if (result==null) {
			return "redirect:../index/login";
		}else {
			request.getSession().setAttribute("user", result);
			return "redirect:../index/index";
		}
	}
	/**
	 * 退出
	 * @param request
	 * @return
	 */
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		return "login";
	}
	
	/**
	 * 进入用户列表
	 * @return
	 */
	@RequestMapping("/toList")
	public String toList() {
		return "management/user/list";
	};
	/**
	 * 返回用户数据
	 * @param pagination
	 * @return data
	 */
	@RequestMapping("/list")
	@ResponseBody
	public String list(Pagination pagination){
		String data=userService.list(pagination);
		return data;
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/detele")
	@ResponseBody
	public String delete(User user){
		userService.delete(user);
		return "ok";
	}
	//通过id获取用户数据

	@RequestMapping("/findById")
	@ResponseBody
	public String findUserById(String id) {
		return userService.findById(id);
	}
	//通过用户数据跟新数据库
	@RequestMapping("/update")
	@ResponseBody
	public String update(User user) {
	userService.update(user);
		return "";
	}
	
	/**
	 * 添加管理员
	 * @param admin
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addUser(User user) {
		user.setPassword(SecurityUtil.strToMD5(user.getPassword()));
		userService.insert(user);
		return "ok";
	}
}
