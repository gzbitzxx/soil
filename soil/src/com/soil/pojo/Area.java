package com.soil.pojo;

/***
 * 土地表
 * @author 
 *
 */
public class Area {

	// 区域id
	private int id;

	// 区域名称
	private String name;

	// 父id
	private int parentid;
	
	//区域
	private String code;
	
	//区域节点名称
	private String parentName;
	
	

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParentid() {
		return parentid;
	}

	public void setParentid(int parentid) {
		this.parentid = parentid;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
}
