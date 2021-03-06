package com.ir.service;

import java.util.List;

import com.ir.form.RegistrationFormTrainingPartner;
import com.ir.model.CourseName;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.model.TrainingPartner;

public interface RegistrationServiceTrainingPartner {
	
	public String registerPersonalInformationTrainer(RegistrationFormTrainingPartner registrationFormTrainingPartner);

	public List<State> loadState();

	public List<Title> loadTitle();

	public List<CourseName> basicCourseName();

	public List<ManageTrainingPartner> trainingPartnerNameList();

	public String registerPersonalInformationTrainingPartner(
			RegistrationFormTrainingPartner registrationFormTrainingPartner);

	public List<ManageTrainingPartner> trainingCenterList();

}
