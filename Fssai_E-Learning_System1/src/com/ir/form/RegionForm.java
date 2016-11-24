package com.ir.form;

public class RegionForm {

	private int districtId;
	private String regionName;
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
		return "RegionForm [districtId=" + districtId + ", regionName=" + regionName + "]";
	}
	public RegionForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
