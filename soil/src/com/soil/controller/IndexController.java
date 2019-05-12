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
	
	@RequestMapping("/index")
	public String Index() {
		return "index";
	}
}
