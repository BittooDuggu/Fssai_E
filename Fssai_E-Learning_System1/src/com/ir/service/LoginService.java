package com.ir.service;

import java.util.List;

import com.ir.form.LoginForm;
import com.ir.model.CourseEnrolled;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.State;
import com.ir.model.TrainingPartner;

public interface LoginService {
	public LoginDetails login(LoginForm loginForm);

	public List<CourseEnrolled> courseEnrolledList();

	public PersonalInformationTrainee FullDetail(int loginId);

	public List<TrainingPartner> trainingPartnerCountList();

}
