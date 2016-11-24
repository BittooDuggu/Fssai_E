package com.ir.model;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="coursename")
public class CourseName implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private int coursenameid;
	private String coursename;
	private int coursetypeid;
	private String courseduration;
	private String status;
	private int createdby;
	private int updatedby;
	private String paidunpaid;
	private Date createddate;
	private String modeOfTraining;
	public String getModeOfTraining() {
		return modeOfTraining;
	}
	public void setModeOfTraing(String modeOfTraining) {
		this.modeOfTraining = modeOfTraining;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public CourseName() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCoursenameid() {
		return coursenameid;
	}
	public void setCoursenameid(int coursenameid) {
		this.coursenameid = coursenameid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public int getCoursetypeid() {
		return coursetypeid;
	}
	public void setCoursetypeid(int coursetypeid) {
		this.coursetypeid = coursetypeid;
	}
	public String getCourseduration() {
		return courseduration;
	}
	public void setCourseduration(String courseduration) {
		this.courseduration = courseduration;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getCreatedby() {
		return createdby;
	}
	public void setCreatedby(int createdby) {
		this.createdby = createdby;
	}
	public int getUpdatedby() {
		return updatedby;
	}
	public void setUpdatedby(int updatedby) {
		this.updatedby = updatedby;
	}
	public String getPaidunpaid() {
		return paidunpaid;
	}
	public void setPaidunpaid(String paidunpaid) {
		this.paidunpaid = paidunpaid;
	}
	public Date getCreateddate() {
		return createddate;
	}
	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}	
}
