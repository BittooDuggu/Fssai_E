package com.ir.service.impl;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import com.ir.dao.PageLoadDao;
import com.ir.model.City;
import com.ir.model.CourseName;
import com.ir.model.District;
import com.ir.model.KindOfBusiness;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.service.PageLoadService;

public class PageLoadServiceImpl implements PageLoadService {

	@Autowired
	@Qualifier("pageLoadDao")
	private PageLoadDao pageLoadDao;
	
	@Override
	public List<State> loadState() {
		List<State> listState = pageLoadDao.loadState();
		return listState;
	}

	@Override
	public List<City> loadCity(int stat) {
		// TODO Auto-generated method stub
		System.out.println("page load service");
		List<City> cityList = pageLoadDao.loadCity();
		return cityList;
	}

	@Override
	public List<Title> loadTitle() {
		// TODO Auto-generated method stub
		List<Title> titleList = pageLoadDao.loadTitle();
		return titleList;
	}

	@Override
	public List<KindOfBusiness> loadKindOfBusiness() {
		// TODO Auto-generated method stub
		List<KindOfBusiness> KindOfBusinessList = pageLoadDao.loadKindOfBusiness();
		return KindOfBusinessList;
	}

	@Override
	public List<CourseName> loadCourseName() {
		// TODO Auto-generated method stub
		List<CourseName> loadCourseName= pageLoadDao.loadCourseName();
		return loadCourseName;
	}

	@Override
	public List<District> loadDistrict() {
		// TODO Auto-generated method stub
		List<District> districtList = pageLoadDao.District();
		return districtList;
	}

	@Override
	public List<CourseName> basicCourseName() {
		// TODO Auto-generated method stub
		List<CourseName> basicCourseName= pageLoadDao.basicCourseName();
		return basicCourseName;
	}

	@Override
	public List<CourseName> advanceCourseList() {
		// TODO Auto-generated method stub
		List<CourseName> advanceCourseName= pageLoadDao.advanceCourseName();
		return advanceCourseName;
	}

	@Override
	public List<CourseName> specialCourseList() {
		// TODO Auto-generated method stub
		List<CourseName> specialCourseList= pageLoadDao.specialCourseList();
		return specialCourseList;
	}

}
