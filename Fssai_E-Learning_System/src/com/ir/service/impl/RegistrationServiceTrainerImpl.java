package com.ir.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import com.ir.dao.RegistrationTrainerDAO;
import com.ir.form.RegistrationFormTrainer;
import com.ir.service.RegistrationServiceTrainer;


@Component("registrationServiceTrainer")
public class RegistrationServiceTrainerImpl implements RegistrationServiceTrainer{
	
	@Autowired
	@Qualifier("registrationTrainerDAO")
	RegistrationTrainerDAO registrationTrainerDAO; 

	@Override
	public String registerPersonalInformationTrainer(RegistrationFormTrainer registrationFormTrainer) {
		// TODO Auto-generated method stub
		String personalInformationTrainer = registrationTrainerDAO.register(registrationFormTrainer);
		return personalInformationTrainer;
	}
	
}
