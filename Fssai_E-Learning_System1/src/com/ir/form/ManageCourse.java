package com.ir.form;

public class ManageCourse {

	private int courseType;
	private String freePaid;
	private String modeOfTraining;
	private String status;
	private String courseName;
	private String duration;
	public int getCourseType() {
		return courseType;
	}
	public void setCourseType(int courseType) {
		this.courseType = courseType;
	}
	public String getFreePaid() {
		return freePaid;
	}
	public void setFreePaid(String freePaid) {
		this.freePaid = freePaid;
	}
	public String getModeOfTraining() {
		return modeOfTraining;
	}
	public void setModeOfTraining(String modeOfTraining) {
		this.modeOfTraining = modeOfTraining;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	@Override
	public String toString() {
		return "ManageCourse [courseType=" + courseType + ", freePaid=" + freePaid + ", modeOfTraining="
				+ modeOfTraining + ", status=" + status + ", courseName=" + courseName + ", duration=" + duration + "]";
	}
}
