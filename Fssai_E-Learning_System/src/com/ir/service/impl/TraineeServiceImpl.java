package com.ir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.ir.dao.TraineeDAO;
import com.ir.form.ContactTrainee;
import com.ir.form.RegistrationFormTrainee;
import com.ir.model.CourseName;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.State;
import com.ir.model.TrainingPartner;
import com.ir.service.TraineeService;

public class TraineeServiceImpl implements TraineeService {

	@Autowired
	@Qualifier("traineeDAO")
	public TraineeDAO traineeDAO;
	
	@Override
	public String contactTraineeSave(ContactTrainee contactTrainee) {
		String contactTraineeSave = traineeDAO.contactTraineeSave(contactTrainee);
		return contactTraineeSave;
	}

	@Override
	public List<CourseName> courseNameList() {
		List<CourseName> courseNameList = traineeDAO.courseNameList();
		return courseNameList;
	}

	@Override
	public List<TrainingPartner> trainingPartnerList() {
		List<TrainingPartner> trainingPartnerList = traineeDAO.trainingPartnerList();
		return trainingPartnerList;
	}

	@Override
	public List<State> trainingCenterStateList() {
		List<State> trainingCenterStateList = traineeDAO.trainingCenterStateList();
		return trainingCenterStateList;
	}

	@Override
	public String updateTrainee(RegistrationFormTrainee registrationFormTrainee , Integer ss) {
		String updateTrainee= traineeDAO.updateTrainee(registrationFormTrainee , ss);
		return updateTrainee;
	}
}
