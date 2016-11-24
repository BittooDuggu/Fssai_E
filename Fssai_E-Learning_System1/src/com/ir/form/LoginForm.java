package com.ir.form;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;



public class LoginForm {
	
	
	@NotNull
	@Size(min=1, max=20 , message="Please enter userId")
	private String userId;
	@NotNull
	@Size(min=1, max=20 , message="Please enter password")
	private String password;
	@NotNull @Size(min=2, max=20 , message="Please enter captcha !!")
	private String captcha;
	

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	
}
