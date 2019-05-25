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
@RequestMapping("/detail")
public class DetailController {
	
	@RequestMapping("item1")
	public String item1() {
		return "item1";
	}
	
	@RequestMapping("item2")
	public String item2() {
		return "item2";
	}
	@RequestMapping("item3")
	public String item3() {
		return "item3";
	}
	
}
