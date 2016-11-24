package com.ir.form;

public class ContactTrainee {
	
	private  String emailId;
	private String message;
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "ContactTrainee [emailId=" + emailId + ", message=" + message + "]";
	}
	public ContactTrainee() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
