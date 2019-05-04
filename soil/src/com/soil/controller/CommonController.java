package com.soil.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soil.service.UserService;

@Controller
@RequestMapping("/common")
public class CommonController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@RequestMapping("/login")
	public String toFrame() {
		return "management/login";
	}
	
	@RequestMapping("/index")
	public String AdminIndex() {
		return "management/index";
	}
	
	@RequestMapping("/findIDAndNumberUserId")
	@ResponseBody
	public String GetUserSelection() {
		return userService.findIDAndNumber();
	}
	
}
