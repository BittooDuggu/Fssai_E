package com.ir.service;

import java.util.List;

import com.ir.form.RegistrationFormAssessor;
import com.ir.model.AssessmentAgency;
import com.ir.model.CourseName;
import com.ir.model.ManageAssessmentAgency;
import com.ir.model.State;
import com.ir.model.Title;

public interface RegistrationServiceAssessor {
	
	public String registerPersonalInformationTrainer(RegistrationFormAssessor registrationFormAssessor);

	public List<State> loadState();

	public List<Title> loadTitle();

	public List<CourseName> basicCourseName();

	public String registerPersonalInformationAssessor(RegistrationFormAssessor registrationFormAssessor);

	public List<ManageAssessmentAgency> loadAssessmentAgency();

}
