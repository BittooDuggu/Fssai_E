package com.ir.dao;

import java.util.List;
import com.ir.model.City;
import com.ir.model.CourseName;
import com.ir.model.District;
import com.ir.model.KindOfBusiness;
import com.ir.model.State;
import com.ir.model.Title;

public interface PageLoadDao {
	public List<State> loadState();
	public List<City> loadCity();
	public List<Title> loadTitle();
	public List<KindOfBusiness> loadKindOfBusiness();
	public List<CourseName> loadCourseName();
	public List<District> District();
	public List<CourseName> basicCourseName();
	public List<CourseName> advanceCourseName();
	public List<CourseName> specialCourseList();

}
