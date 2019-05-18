package com.soil.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soil.pojo.Area;
import com.soil.pojo.SoilType;
import com.soil.service.AreaService;
import com.soil.service.SoilTypeService;
import com.soil.util.Pagination;

/**
 * 区域管理控制器
 * 
 * @author
 *
 */
@Controller
@RequestMapping("/area")
public class AreaController {
	@Autowired
	@Qualifier("areaService")
	private AreaService areaService;

	/**
	 * 添加土地信息
	 * 
	 * @param soil
	 * @return
	 */
	@RequestMapping("/add")
	public String add(Area type, HttpSession session) throws Exception {
		
		areaService.insert(type);

		return "management/area/list";
	}

	/**
	 * 进入土地列表
	 * 
	 * @return
	 */
	@RequestMapping("/toList")
	public String toList() {
		return "management/area/list";
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
		String data = areaService.list(pagination);
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
	public String delete(Area type) {
		areaService.delete(type);
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
		return areaService.findById(id);
	}

	/**
	 * 更新信息
	 * 
	 * @param admin
	 * @return
	 */
	@RequestMapping("/update")
	public String update(Area type, HttpSession session) throws Exception{
		areaService.update(type);
		return "management/area/list";
	}
	
	@RequestMapping("/findIDAndNumberAreaId")
	@ResponseBody
	public String GetSoilTypeSelection() {
		return areaService.findIDAndNumber();
	}

}
