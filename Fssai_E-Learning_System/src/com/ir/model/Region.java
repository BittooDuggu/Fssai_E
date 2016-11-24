package com.ir.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="region")
public class Region {
	
	@Id @GeneratedValue
	private int id;
	@NotNull
	private int districtId;
	@NotNull
	private String regionName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDistrictId() {
		return districtId;
	}
	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}
	public String getRegionName() {
		return regionName;
	}
	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}
	@Override
	public String toString() {
		return "Region [id=" + id + ", districtId=" + districtId + ", regionName=" + regionName + "]";
	}
	public Region() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
