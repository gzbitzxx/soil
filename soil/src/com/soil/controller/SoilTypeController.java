package com.soil.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soil.pojo.SoilType;
import com.soil.service.SoilTypeService;
import com.soil.util.Pagination;

/**
 * 土地管理控制器
 * 
 * @author
 *
 */
@Controller
@RequestMapping("/soiltype")
public class SoilTypeController {
	@Autowired
	@Qualifier("soilTypeService")
	private SoilTypeService soilTypeService;

	/**
	 * 添加土地信息
	 * 
	 * @param soil
	 * @return
	 */
	@RequestMapping("/add")
	public String add(SoilType type, HttpSession session) throws Exception {
		
		soilTypeService.insert(type);

		return "management/soiltype/list";
	}

	/**
	 * 进入土地列表
	 * 
	 * @return
	 */
	@RequestMapping("/toList")
	public String toList() {
		return "management/soiltype/list";
	};

	/**
	 * 返回管理员数据
	 * 
	 * @param pagination
	 * @return data
	 */
	@RequestMapping("/list")
	@ResponseBody
	public String list(Pagination pagination) {
		String data = soilTypeService.list(pagination);
		return data;
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/detele")
	@ResponseBody
	public String delete(SoilType type) {
		soilTypeService.delete(type);
		return "ok";
	}

	/**
	 * 通过id查询数据
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/findById")
	@ResponseBody
	public String findUserById(String id) {
		return soilTypeService.findById(id);
	}

	/**
	 * 更新信息
	 * 
	 * @param admin
	 * @return
	 */
	@RequestMapping("/update")
	public String update(SoilType type, HttpSession session) throws Exception{
		soilTypeService.update(type);
		return "management/soiltype/list";
	}
	
	@RequestMapping("/findIDAndNumberSoilTypeId")
	@ResponseBody
	public String GetSoilTypeSelection() {
		return soilTypeService.findIDAndNumber();
	}
}
