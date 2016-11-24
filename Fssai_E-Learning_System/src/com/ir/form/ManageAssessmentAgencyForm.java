package com.ir.form;

import javax.validation.constraints.NotNull;

public class ManageAssessmentAgencyForm {
	@NotNull
	private String userId;
	@NotNull
	private String PAN;
	@NotNull
	private String assessmentAgencyName;
	@NotNull
	private String status;
	@NotNull
	private String websiteUrl;
	@NotNull
	private String headOfficeDataAddress1;
	@NotNull
	private String headOfficeDataAddress2;
	@NotNull
	private String pin;
	@NotNull
	private int district;
	//@NotNull
	private String city;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPAN() {
		return PAN;
	}
	public void setPAN(String pAN) {
		PAN = pAN;
	}
	
	public String getAssessmentAgencyName() {
		return assessmentAgencyName;
	}
	public void setAssessmentAgencyName(String assessmentAgencyName) {
		this.assessmentAgencyName = assessmentAgencyName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getWebsiteUrl() {
		return websiteUrl;
	}
	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}
	public String getHeadOfficeDataAddress1() {
		return headOfficeDataAddress1;
	}
	public void setHeadOfficeDataAddress1(String headOfficeDataAddress1) {
		this.headOfficeDataAddress1 = headOfficeDataAddress1;
	}
	public String getHeadOfficeDataAddress2() {
		return headOfficeDataAddress2;
	}
	public void setHeadOfficeDataAddress2(String headOfficeDataAddress2) {
		this.headOfficeDataAddress2 = headOfficeDataAddress2;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public int getDistrict() {
		return district;
	}
	public void setDistrict(int district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	

}
