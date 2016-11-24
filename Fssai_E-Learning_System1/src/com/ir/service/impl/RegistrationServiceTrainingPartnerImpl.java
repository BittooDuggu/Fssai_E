package com.ir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import com.ir.dao.RegistrationTrainingPartnerDAO;
import com.ir.form.RegistrationFormTrainingPartner;
import com.ir.model.CourseName;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.model.TrainingPartner;
import com.ir.service.RegistrationServiceTrainingPartner;


@Component("registrationServiceTrainingPartner")
public class RegistrationServiceTrainingPartnerImpl implements RegistrationServiceTrainingPartner{
	
	@Autowired
	@Qualifier("registrationTrainingPartnerDAO")
	RegistrationTrainingPartnerDAO registrationTrainingPartnerDAO; 

	@Override
	public String registerPersonalInformationTrainer(RegistrationFormTrainingPartner registrationFormTrainingPartner) {
		// TODO Auto-generated method stub
		String personalInformationTrainingPartner = registrationTrainingPartnerDAO.register(registrationFormTrainingPartner);
		return personalInformationTrainingPartner;
	}

	@Override
	public List<State> loadState() {
		// TODO Auto-generated method stub
		List<State> listState = registrationTrainingPartnerDAO.loadState();
		return listState;
	}

	@Override
	public List<Title> loadTitle() {
		List<Title> titleList = registrationTrainingPartnerDAO.loadTitle();
		return titleList;
	}

	@Override
	public List<CourseName> basicCourseName() {
		// TODO Auto-generated method stub
				List<CourseName> basicCourseName= registrationTrainingPartnerDAO.basicCourseName();
				return basicCourseName;
	}

	@Override
	public List<ManageTrainingPartner> trainingPartnerNameList() {
		List<ManageTrainingPartner> trainingPartnerNameList= registrationTrainingPartnerDAO.trainingPartnerNameList();
		return trainingPartnerNameList;
	}

	@Override
	public String registerPersonalInformationTrainingPartner(
			RegistrationFormTrainingPartner registrationFormTrainingPartner) {
		String registerPersonalInformationTrainingPartner = registrationTrainingPartnerDAO.registerTrainingPartner(registrationFormTrainingPartner);
		return registerPersonalInformationTrainingPartner;
	}

	@Override
	public List<ManageTrainingPartner> trainingCenterList() {
		List<ManageTrainingPartner> trainingCenterList= registrationTrainingPartnerDAO.trainingCenterList();
		return trainingCenterList;
	}


	
}
