package com.ir.dao;

import java.util.List;

import com.ir.form.RegistrationFormTrainingPartner;
import com.ir.model.CourseName;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.model.TrainingPartner;

public interface RegistrationTrainingPartnerDAO {

	String register(RegistrationFormTrainingPartner registrationFormTrainingPartner);
	List<State> loadState();

	List<Title> loadTitle();

	List<CourseName> basicCourseName();

	List<ManageTrainingPartner> trainingPartnerNameList();

	String registerTrainingPartner(RegistrationFormTrainingPartner registrationFormTrainingPartner);

	List<ManageTrainingPartner> trainingCenterList();




}
