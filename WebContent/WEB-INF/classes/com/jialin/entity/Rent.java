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
	private String title;		//标题
	private String region;		//区域
	private int price;			//价格
	private int area;			//面积
	private String housetype;	//户型
	private int floor;			//楼层
	private String fit;			//装修情况
	private int furniture;		//是否有家具
	private int device;			//是否有家电
	private int tv;				//是否有电视
	private int network;		//是否有网络
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
	
	@Column(name="title", length=40, nullable=false)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	
	@Column(name="fit", length=20, nullable=false)
	public String getFit() {
		return fit;
	}
	public void setFit(String fit) {
		this.fit = fit;
	}
	
	@Column(name="furniture", nullable=false)
	public int getFurniture() {
		return furniture;
	}
	public void setFurniture(int furniture) {
		this.furniture = furniture;
	}
	
	@Column(name="device", nullable=false)
	public int getDevice() {
		return device;
	}
	public void setDevice(int device) {
		this.device = device;
	}
	
	@Column(name="tv", nullable=false)
	public int getTv() {
		return tv;
	}
	public void setTv(int tv) {
		this.tv = tv;
	}
	
	@Column(name="network", nullable=false)
	public int getNetwork() {
		return network;
	}
	public void setNetwork(int network) {
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
