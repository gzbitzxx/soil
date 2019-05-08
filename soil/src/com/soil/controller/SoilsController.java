package com.soil.controller;

import java.io.File;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.ClassUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.soil.pojo.Soil;
import com.soil.service.SoilService;
import com.soil.util.Pagination;

/**
 * 土地管理控制器
 * 
 * @author
 *
 */
@Controller
@RequestMapping("/soils")
public class SoilsController {
	@Autowired
	@Qualifier("soilService")
	private SoilService soilService;

	/**
	 * 添加土地信息
	 * 
	 * @param soil
	 * @return
	 */
	@RequestMapping("/add")
	public String add(Soil soil, HttpSession session) throws Exception {
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

		return "management/soil/list";
	}

	/**
	 * 进入土地列表
	 * 
	 * @return
	 */
	@RequestMapping("/toList")
	public String toList() {
		return "management/soil/list";
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
		String data = soilService.list(pagination);
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
	public String delete(Soil soil) {
		soilService.delete(soil);
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
		return soilService.findById(id);
	}

	/**
	 * 更新信息
	 * 
	 * @param admin
	 * @return
	 */
	@RequestMapping("/update")
	public String update(Soil soil, HttpSession session) throws Exception{
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
		soilService.update(soil);
		return "management/soil/list";
	}

}
