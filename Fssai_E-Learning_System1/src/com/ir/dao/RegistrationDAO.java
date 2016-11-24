package com.ir.dao;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import com.ir.form.RegistrationFormTrainee;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.RegisterTraineeInformationFull;


public interface RegistrationDAO {

	public RegisterTraineeInformationFull register(RegistrationFormTrainee registrationFormTrainee)  ;
	public String registerUserIdCheck(RegistrationFormTrainee registrationFormTrainee) ;
	public String registerPersonalInformationTrainee(
			RegistrationFormTrainee registrationFormTrainee) ;	
}
