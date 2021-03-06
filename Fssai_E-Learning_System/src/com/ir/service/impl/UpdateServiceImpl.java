package com.ir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import com.ir.dao.UpdateDAO;
import com.ir.form.RegistrationFormTrainer;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainer;
import com.ir.service.UpdateService;

public class UpdateServiceImpl implements UpdateService {

	
	@Autowired
	@Qualifier("updateDAO")
	private UpdateDAO updateDAO;
	
	@Override
	public List<PersonalInformationTrainer> UpdateService(LoginDetails loginDetails) {
		List<PersonalInformationTrainer> personalInformationTrainer = updateDAO.FullInformation(loginDetails);
		return personalInformationTrainer;
	}


}
