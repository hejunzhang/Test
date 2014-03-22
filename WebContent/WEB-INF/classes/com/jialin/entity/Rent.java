package com.jialin.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Table(name = "rent")
public class Rent {
	private int id;
	private String type;		//出租，求租
	private String username;	//发布人
	private String region;		//区域
	private int price;			//价格
	private int area;			//面积
	private String housetype;	//户型
	private int floor;			//楼层
	private String condition;	//装修情况
	private boolean furniture;	//是否有家具
	private boolean device;		//是否有家电
	private boolean tv;			//是否有电视
	private boolean network;	//是否有网络
	private String issuedate;	//发布日期
	private String remark;		//备注
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name="type", length=20, nullable=false)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name="username", length=20, nullable=false)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name="region", length=20, nullable=false)
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	@Column(name="price", nullable= true)
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Column(name="area", nullable=true)
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	
	@Column(name="housetype", length=20, nullable=true)
	public String getHousetype() {
		return housetype;
	}
	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}
	
	@Column(name="floor", nullable=false)
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	
	@Column(name="condition", length=20, nullable=false)
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	@Column(name="furniture", nullable=false)
	public boolean isFurniture() {
		return furniture;
	}
	public void setFurniture(boolean furniture) {
		this.furniture = furniture;
	}
	
	@Column(name="device", nullable=false)
	public boolean isDevice() {
		return device;
	}
	public void setDevice(boolean device) {
		this.device = device;
	}
	
	@Column(name="tv", nullable=false)
	public boolean isTv() {
		return tv;
	}
	public void setTv(boolean tv) {
		this.tv = tv;
	}
	
	@Column(name="network", nullable=false)
	public boolean isNetwork() {
		return network;
	}
	public void setNetwork(boolean network) {
		this.network = network;
	}
	
	@Column(name="issuedate", length=20, nullable=false)
	public String getIssuedate() {
		return issuedate;
	}	
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	
	@Column(name="remark", length=20, nullable=false)
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}	
}
