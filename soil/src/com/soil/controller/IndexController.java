package com.soil.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soil.pojo.Soil;
import com.soil.service.SoilService;
import com.soil.util.Pagination;

import sun.management.counter.Variability;


/**
 * 首页列表
 * @author 
 *
 */
@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	@Qualifier("soilService")
	private SoilService soilService;
	
	/***
	 * 系统首页
	 * @return
	 */
	@RequestMapping("/index")
	public String Index(Model model) {
		Pagination pagination=new Pagination();
		List<Soil> soils=soilService.getList(pagination);
		model.addAttribute("soils",soils);
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
	 * 帮助中心
	 * @return
	 */
	@RequestMapping("/detail")
	public String detail() {
		return "details";
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
