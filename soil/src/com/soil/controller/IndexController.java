package com.soil.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.soil.pojo.Message;
import com.soil.pojo.Soil;
import com.soil.pojo.User;
import com.soil.service.MessageService;
import com.soil.service.SoilService;
import com.soil.service.UserService;
import com.soil.util.Pagination;
import com.soil.util.SecurityUtil;

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
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	
	@Autowired
	@Qualifier("messageService")
	private MessageService messageService;
	
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
	public String detail(Model model,String id) {
		Soil soil=soilService.findSoilById(id);
		model.addAttribute("soil", soil);
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
	
	/***
	 * 注册
	 * @return
	 */
	@RequestMapping("/addUser")
	public String addUser(User user) {
		user.setAge(0);
		user.setType("1");
		user.setSex("男");
		userService.insert(user);
		return "login";
	}
	
	/***
	 *寻找土地
	 * @return
	 */
	@RequestMapping("foundSoil")
	public String foundSoil() {
		return "seek";
	}
	
	
	/***
	 *添加土地信息
	 * @return
	 */
	@RequestMapping("insertSoil")
	public String insertSoil() {
		return "insert";
	}
	
	
	/***
	 *搜索信息
	 * @return
	 */
	@RequestMapping("abouts")
	public String abouts(int type) {
		String result="";
		if(type==1) result="aboutgz";
		if(type==2) result="aboutld";
		if(type==3) result="aboutyd";
		
		return result;
	}
	
	/***
	 * 获取当前跳转到当前用户页面
	 * @return
	 */
	@RequestMapping("myself")
	public String myself() {
		return "myself";
	}
	
	/****
	 * 修改当前用户信息
	 * @param user
	 * @return
	 */
	@RequestMapping("updata")
	public String updata(User user,HttpServletRequest request) {
		user.setPassword(SecurityUtil.strToMD5(user.getPassword()));
		
		userService.update(user);
		
		request.getSession().removeAttribute("user");
		
		User user2=userService.findUserById(user.getId()+"");
		
		request.getSession().setAttribute("user", user2);
		
		return "myself";
	}
	
	/****
	 * 修改当前用户信息
	 * @param user
	 * @return
	 */
	@RequestMapping("addSoil")
	public String addSoil(Soil soil, HttpSession session)throws Exception {
		MultipartFile blFile = soil.getBlFile();
		if (!blFile.isEmpty()) {
			String oldFileName = blFile.getOriginalFilename();
			String path = session.getServletContext().getRealPath("/") + "/Images";
			String randomStr = UUID.randomUUID().toString();
			String newFileName = randomStr + oldFileName.substring(oldFileName.lastIndexOf("."));
			File file = new File(path, newFileName);
			if (!file.getParentFile().exists()) {
				file.getParentFile().mkdirs();
			}
			blFile.transferTo(file);
			soil.setPicture("/Images/" + newFileName);
		}
		Date data = new Date();
		soil.setCreateTime(data);
		soilService.insert(soil);

		return "index";
	}
	
	/***
	 * 消息回复
	 * @param message
	 * @return
	 */
	@RequestMapping("message")
	public boolean Contant(Message message) {
		messageService.insert(message);
		return true;
	}
}
