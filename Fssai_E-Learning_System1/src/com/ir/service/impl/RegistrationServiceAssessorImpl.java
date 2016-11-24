package com.ir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import com.ir.dao.RegistrationAssessorDAO;
import com.ir.form.RegistrationFormAssessor;
import com.ir.model.AssessmentAgency;
import com.ir.model.CourseName;
import com.ir.model.ManageAssessmentAgency;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.service.RegistrationServiceAssessor;



@Component("registrationServiceTrainer")
public class RegistrationServiceAssessorImpl implements RegistrationServiceAssessor{
	
	@Autowired
	@Qualifier("registrationAssessorDAO")
	RegistrationAssessorDAO registrationAssessorDAO; 

	@Override
	public String registerPersonalInformationTrainer(RegistrationFormAssessor registrationFormAssessor) {
		// TODO Auto-generated method stub
		String personalInformationTrainer = registrationAssessorDAO.register(registrationFormAssessor);
		return personalInformationTrainer;
	}

	@Override
	public List<State> loadState() {
		List<State> listState = registrationAssessorDAO.loadState();
		return listState;
	}

	@Override
	public List<Title> loadTitle() {
		List<Title> titleList = registrationAssessorDAO.loadTitle();
		return titleList;
	}

	@Override
	public List<CourseName> basicCourseName() {
		// TODO Auto-generated method stub
				List<CourseName> basicCourseName= registrationAssessorDAO.basicCourseName();
				return basicCourseName;
	}

	@Override
	public String registerPersonalInformationAssessor(RegistrationFormAssessor registrationFormAssessor) {
		String personalInformationassessor = registrationAssessorDAO.register(registrationFormAssessor);
		return personalInformationassessor;
	}

	@Override
	public List<ManageAssessmentAgency> loadAssessmentAgency() {
		List<ManageAssessmentAgency> loadAssessmentAgency = registrationAssessorDAO.loadAssessmentAgency();
		return loadAssessmentAgency;
	}
	
}
