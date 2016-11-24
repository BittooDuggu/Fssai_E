package com.ir.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity @Table(name="courseEnrolledUser")
public class CourseEnrolledUser {
	
	@Id @GeneratedValue
	private int courseEnrolledUserid;
	
	private int courseName;
	private int modeOfTraining;
	private int trainingPartner;
	private int trainingDate;
	private int profileCode;
	private int trainingCenterState ; 
	private int trainingCenterCity;
	
	@OneToOne (cascade=CascadeType.ALL)  @JoinColumn(name="loginDetails")
	private LoginDetails loginDetails;
	
	
	public int getTrainingCenterState() {
		return trainingCenterState;
	}
	public void setTrainingCenterState(int trainingCenterState) {
		this.trainingCenterState = trainingCenterState;
	}
	public int getTrainingCenterCity() {
		return trainingCenterCity;
	}
	public void setTrainingCenterCity(int trainingCenterCity) {
		this.trainingCenterCity = trainingCenterCity;
	}
	public LoginDetails getLoginDetails() {
		return loginDetails;
	}
	public void setLoginDetails(LoginDetails loginDetails) {
		this.loginDetails = loginDetails;
	}
	public int getCourseEnrolledUserid() {
		return courseEnrolledUserid;
	}
	public void setCourseEnrolledUserid(int courseEnrolledUserid) {
		this.courseEnrolledUserid = courseEnrolledUserid;
	}
	public int getProfileCode() {
		return profileCode;
	}
	public void setProfileCode(int profileCode) {
		this.profileCode = profileCode;
	}
	public int getCourseName() {
		return courseName;
	}
	public void setCourseName(int courseName) {
		this.courseName = courseName;
	}
	public int getModeOfTraining() {
		return modeOfTraining;
	}
	public void setModeOfTraining(int modeOfTraining) {
		this.modeOfTraining = modeOfTraining;
	}
	public int getTrainingPartner() {
		return trainingPartner;
	}
	public void setTrainingPartner(int trainingPartner) {
		this.trainingPartner = trainingPartner;
	}
	public int getTrainingDate() {
		return trainingDate;
	}
	public void setTrainingDate(int trainingDate) {
		this.trainingDate = trainingDate;
	}

}
