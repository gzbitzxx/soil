package com.soil.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soil.pojo.Message;
import com.soil.service.MessageService;
import com.soil.util.Pagination;

/**
 * 消息列表
 * @author 
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {
	@Autowired
	@Qualifier("messageService")
	private MessageService messageService;
	
	/**
	 * 添加消息
	 * @param message
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addAdmin(Message message) {
		message.setCreateTime(new Date());
		message.setRead(false);
		messageService.insert(message);
		return "ok";
	}
	
	/**
	 * 进入消息列表
	 * @return
	 */
	@RequestMapping("/toList")
	public String toList() {
		return "management/message/list";
	};
	/**
	 * 返回信息数据
	 * @param pagination
	 * @return data
	 */
	@RequestMapping("/list")
	@ResponseBody
	public String list(Pagination pagination){
		String data=messageService.list(pagination);
		return data;
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/detele")
	@ResponseBody
	public String delete(Message message){
		messageService.delete(message);
		return "ok";
	}

	/**
	 * 通过id查询数据
	 * @param id
	 * @return
	 */
	@RequestMapping("/findById")
	@ResponseBody
	public String findUserById(String id) {
		return messageService.findById(id);
	}

	/**
	 * 更新信息
	 * @param admin
	 * @return
	 */
	@RequestMapping("/update")
	@ResponseBody
	public String update(Message message) {
		messageService.update(message);
		return "";
	}
	
}
