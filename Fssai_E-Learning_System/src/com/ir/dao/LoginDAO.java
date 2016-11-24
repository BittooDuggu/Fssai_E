package com.ir.dao;

import java.util.List;

import com.ir.form.LoginForm;
import com.ir.model.CourseEnrolled;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.TrainingPartner;

public interface LoginDAO {

	public LoginDetails login(LoginForm loginForm);

	public List<CourseEnrolled> courseEnrolledList();

	public PersonalInformationTrainee fullDetail(int loginId);

	public List<TrainingPartner> trainingPartnerCountList();
}
