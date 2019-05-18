package com.soil.pojo;

/***
 * 土地类型
 * @author 
 *
 */
public class SoilType {
	
	//类型id
	private int id;
	
	//类型名称
	private String name;
	
	//父id
	private int parentid;

	//类型父名称
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
	
	
	
}
