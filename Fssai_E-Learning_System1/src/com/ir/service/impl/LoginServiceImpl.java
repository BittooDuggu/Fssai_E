package com.ir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ir.dao.LoginDAO;
import com.ir.form.LoginForm;
import com.ir.model.CourseEnrolled;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.TrainingPartner;
import com.ir.service.LoginService;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {

	@Autowired(required=true)
	@Qualifier(value="loginDAO")
	private LoginDAO loginDAO;

	@Override
	public LoginDetails login(LoginForm loginForm) {
		LoginDetails loginDetails = loginDAO.login(loginForm);
		return loginDetails;
	}

	@Override
	public List<CourseEnrolled> courseEnrolledList() {
		List<CourseEnrolled> courseEnrolledList= loginDAO.courseEnrolledList();
		return courseEnrolledList;
	}

	@Override
	public PersonalInformationTrainee FullDetail(int loginId) {
		PersonalInformationTrainee personalInformationTrainee = loginDAO.fullDetail(loginId);
		return personalInformationTrainee;
	}
	

	@Override
	public List<TrainingPartner> trainingPartnerCountList() {
		List<TrainingPartner> trainingPartnerCountList= loginDAO.trainingPartnerCountList();
		return trainingPartnerCountList;
	}
}
