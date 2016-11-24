package com.ir.dao;

import java.util.List;

import com.ir.form.RegistrationFormAssessor;
import com.ir.model.AssessmentAgency;
import com.ir.model.CourseName;
import com.ir.model.ManageAssessmentAgency;
import com.ir.model.State;
import com.ir.model.Title;

public interface RegistrationAssessorDAO {

	String register(RegistrationFormAssessor registrationFormAssessor);

	List<State> loadState();

	List<Title> loadTitle();

	List<CourseName> basicCourseName();

	List<ManageAssessmentAgency> loadAssessmentAgency();


}
