package com.ir.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity @Table(name="trainingCalendar")
public class TrainingCalendar {
	
	@Id @GeneratedValue
	private int trainingCalendarId;
	
	private int courseType;
	private int courseName;
	private int trainingPartner;
	private int trainingCenter;
	private String trainingDate;
	private String trainingTime;
	private String trainerName;
	private int trainingType;
	public int getCourseType() {
		return courseType;
	}
	public void setCourseType(int courseType) {
		this.courseType = courseType;
	}
	public int getCourseName() {
		return courseName;
	}
	public void setCourseName(int courseName) {
		this.courseName = courseName;
	}
	public int getTrainingPartner() {
		return trainingPartner;
	}
	public void setTrainingPartner(int trainingPartner) {
		this.trainingPartner = trainingPartner;
	}
	public int getTrainingCenter() {
		return trainingCenter;
	}
	public void setTrainingCenter(int trainingCenter) {
		this.trainingCenter = trainingCenter;
	}
	public String getTrainingDate() {
		return trainingDate;
	}
	public void setTrainingDate(String trainingDate) {
		this.trainingDate = trainingDate;
	}
	public String getTrainingTime() {
		return trainingTime;
	}
	public void setTrainingTime(String trainingTime) {
		this.trainingTime = trainingTime;
	}
	public String getTrainerName() {
		return trainerName;
	}
	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	public int getTrainingType() {
		return trainingType;
	}
	public void setTrainingType(int trainingType) {
		this.trainingType = trainingType;
	}
	
	
	
}
