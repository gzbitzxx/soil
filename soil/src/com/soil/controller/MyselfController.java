package com.soil.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soil.pojo.Soil;
import com.soil.pojo.User;
import com.soil.service.SoilService;
import com.soil.service.UserService;
import com.soil.util.Pagination;

import sun.management.counter.Variability;


/**
 * 首页列表
 * @author 
 *
 */
@Controller
@RequestMapping("/myself")
public class MyselfController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@RequestMapping("myself")
	public String myself() {
		return "myself";
	}
	
	
	@RequestMapping("updata")
	public String updata(User user) {
		userService.update(user);
		return "myself";
	}
	
}
