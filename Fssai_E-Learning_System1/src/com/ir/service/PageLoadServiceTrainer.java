package com.ir.service;

import java.util.List;
import com.ir.model.City;
import com.ir.model.CourseName;
import com.ir.model.District;
import com.ir.model.State;
import com.ir.model.Title;

public interface PageLoadServiceTrainer {
	
	public List<State> loadState();
	//public List<City> loadCity(int stat);
	public List<Title> loadTitle();
	//public List<District> loadDistrict();
	public List<CourseName> basicCourseName();
	//public List<CourseName> advanceCourseList();
	//public List<CourseName> specialCourseList();
}
