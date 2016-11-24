package com.ir.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="district")
public class District {

	@Id
	@GeneratedValue
	private int districtId;
	
	@NotEmpty(message="Please select your district !")
	private String districtName;
	
	private int stateId;
	
	private String status;
	
	

	public int getDistrictId() {
		return districtId;
	}



	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}



	public String getDistrictName() {
		return districtName;
	}



	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}



	public int getStateId() {
		return stateId;
	}



	public void setStateId(int stateId) {
		this.stateId = stateId;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public District(){
		
	}
	
	
}
