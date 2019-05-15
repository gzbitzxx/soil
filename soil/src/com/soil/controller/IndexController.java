package com.soil.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 首页列表
 * @author 
 *
 */
@Controller
@RequestMapping("/index")
public class IndexController {
	
	/***
	 * 系统首页
	 * @return
	 */
	@RequestMapping("/index")
	public String Index() {
		return "index";
	}
	
	/***
	 * 我要找地
	 * @return
	 */
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	/***
	 * 土地咨询
	 * @return
	 */
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	/***
	 * 帮助中心
	 * @return
	 */
	@RequestMapping("/services")
	public String services() {
		return "services";
	}
	
	/***
	 * 登录
	 * @return
	 */
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	/***
	 * 注册
	 * @return
	 */
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
}
