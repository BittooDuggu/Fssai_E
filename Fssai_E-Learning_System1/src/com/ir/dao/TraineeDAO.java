package com.ir.dao;

import java.util.List;

import com.ir.form.ContactTrainee;
import com.ir.form.RegistrationFormTrainee;
import com.ir.model.CourseName;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.State;
import com.ir.model.TrainingPartner;

public interface TraineeDAO {
	
	public String contactTraineeSave(ContactTrainee contactTrainee);

	public List<CourseName> courseNameList();

	public List<TrainingPartner> trainingPartnerList();

	public List<State> trainingCenterStateList();

	public String updateTrainee(RegistrationFormTrainee registrationFormTrainee , Integer ss);
}
