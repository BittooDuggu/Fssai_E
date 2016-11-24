package com.ir.dao.impl;


import java.security.NoSuchAlgorithmException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import com.ir.dao.RegistrationTrainerDAO;
import com.ir.form.RegistrationFormTrainer;
import com.ir.model.CourseEnrolled;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainer;
import com.ir.util.EncryptionPasswordANDVerification;
import com.ir.util.PasswordGenerator;
import com.ir.util.SendMail;



@Component("registrationDAO")
public class RegistrationTrainerDAOImpl implements RegistrationTrainerDAO {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public String register(RegistrationFormTrainer registrationFormTrainer) {
		// TODO Auto-generated method stub
		System.out.println("RegistrationDAOImpl [register] begin for registration trainer");
		Integer personalInformationTrainerIdd=null;
		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction(); 
		
		PasswordGenerator passwordGenerator = new PasswordGenerator(6);
		char[] pass = passwordGenerator.get();
		String passwordString = String.valueOf(pass);
		
		
		String encryprPassword = null;
		try{
			EncryptionPasswordANDVerification encryptionPasswordANDVerification = new EncryptionPasswordANDVerification();
			encryprPassword = encryptionPasswordANDVerification.encryptPass(passwordString);
			
		}catch(NoSuchAlgorithmException e){
			System.out.println( " no such algo exception error catch ");
		}
		
		LoginDetails loginDetails = new LoginDetails();
		loginDetails.setLoginId(registrationFormTrainer.getUserId());
		loginDetails.setPassword("lalit");
		//loginDetails.setPassword(encryprPassword);
		loginDetails.setProfileId(4);
		loginDetails.setStatus("A");
		
		PersonalInformationTrainer personalInformationTrainer = new PersonalInformationTrainer();
		personalInformationTrainer.setTitle(registrationFormTrainer.getTitle());
		personalInformationTrainer.setAadharNumber(registrationFormTrainer.getAadharNumber());
		personalInformationTrainer.setFirstName(registrationFormTrainer.getFirstName());
		personalInformationTrainer.setLastName(registrationFormTrainer.getLastName());
		personalInformationTrainer.setMiddleName(registrationFormTrainer.getMiddleName());
		personalInformationTrainer.setDOB(registrationFormTrainer.getDOB());
		personalInformationTrainer.setGender(registrationFormTrainer.getGender());
		personalInformationTrainer.setTrainingCenterCorrespondenceLine1(registrationFormTrainer.getTrainingCenterCorrespondenceLine1());
		personalInformationTrainer.setTrainingCenterCorrespondenceLine2(registrationFormTrainer.getTrainingCenterCorrespondenceLine2());
		personalInformationTrainer.setTrainingCenterCorrespondenceState(registrationFormTrainer.getTrainingCenterCorrespondenceState());
		personalInformationTrainer.setTrainingCenterCorrespondenceDistrict(registrationFormTrainer.getTrainingCenterCorrespondenceDistrict());
		personalInformationTrainer.setTrainingCenterCorrespondenceCity(registrationFormTrainer.getTrainingCenterCorrespondenceCity());
		personalInformationTrainer.setTrainingCenterCorrespondencePincode(registrationFormTrainer.getTrainingCenterCorrespondencePincode());
		personalInformationTrainer.setTrainingCenterPermanentEmail(registrationFormTrainer.getTrainingCenterPermanentEmail());
		personalInformationTrainer.setTrainingCenterPermanentMobile(registrationFormTrainer.getTrainingCenterPermanentMobile());
		personalInformationTrainer.setTrainingCenterPermanentLine1(registrationFormTrainer.getTrainingCenterPermanentLine1());
		personalInformationTrainer.setTrainingCenterPermanentLine2(registrationFormTrainer.getTrainingCenterPermanentLine2());
		personalInformationTrainer.setTrainingCenterPermanentState(registrationFormTrainer.getTrainingCenterPermanentState());
		personalInformationTrainer.setTrainingCenterPermanentDistrict(registrationFormTrainer.getTrainingCenterPermanentDistrict());
		personalInformationTrainer.setTrainingCenterPermanentCity(registrationFormTrainer.getTrainingCenterPermanentCity());
		personalInformationTrainer.setTrainingCenterPermanentPincode(registrationFormTrainer.getTrainingCenterPermanentPincode());
		personalInformationTrainer.setFoodSafetyExpBackground(registrationFormTrainer.getFoodSafetyExpBackground());
		personalInformationTrainer.setTrainingSessionWishToConduct(registrationFormTrainer.getTrainingSessionWishToConduct());
		personalInformationTrainer.setExpInFoodSafefyTimeYear(registrationFormTrainer.getExpInFoodSafefyTimeYear());
		personalInformationTrainer.setExpInFoodSafefyTimeMonth(registrationFormTrainer.getExpInFoodSafefyTimeMonth());
		personalInformationTrainer.setAssociatedWithAnyTrainingPartner(registrationFormTrainer.getAssociatedWithAnyTrainingPartner());
		personalInformationTrainer.setNoOfTrainingSessionConducted(registrationFormTrainer.getNoOfTrainingSessionConducted());
		personalInformationTrainer.setAssociatedTrainingpartnerName(registrationFormTrainer.getAssociatedTrainingpartnerName());
		personalInformationTrainer.setLoginDetails(loginDetails);
		
		System.out.println("person save before save");
		personalInformationTrainerIdd = (Integer)session.save(personalInformationTrainer);
		System.out.println("RegistrationDAOImpl [register] begin for registration trainee login   :"+ personalInformationTrainer);
		
		
		String BasicCourse = registrationFormTrainer.getBasicCourse1();
		String[] BasicCoursesplited = BasicCourse.split(",");
		System.out.println("basic course length   "+ BasicCoursesplited.length);
		if(BasicCoursesplited.length > 0){
			for(int i=0 ; i < BasicCoursesplited.length ; i++){
				CourseEnrolled courseEnrolledBasic = new CourseEnrolled();
				courseEnrolledBasic.setLoginDetails(loginDetails);
				courseEnrolledBasic.setCoursenameid(Integer.parseInt(BasicCoursesplited[i]));
				System.out.println("BasicCoursesplited  "+ BasicCoursesplited[i]);
				Integer courseenrolledbasic = (Integer)session.save(courseEnrolledBasic);
			}
		}
		
		String AdvanceCourse = registrationFormTrainer.getAdvanceCourse1();
		String[] AdvanceCoursesplited = AdvanceCourse.split(",");
		System.out.println("advance course length   "+ AdvanceCoursesplited.length);
		if(AdvanceCoursesplited.length > 0){
			for(int i=0 ; i < AdvanceCoursesplited.length ; i++){
				CourseEnrolled courseEnrolledAdvance = new CourseEnrolled();
				courseEnrolledAdvance.setLoginDetails(loginDetails);
				courseEnrolledAdvance.setCoursenameid(Integer.parseInt(AdvanceCoursesplited[i]));
				System.out.println("AdvanceCoursesplited  "+ AdvanceCoursesplited[i]);
				Integer courseenrolledAdvancee = (Integer)session.save(courseEnrolledAdvance);
			}
		}

		String SpecialCourse = registrationFormTrainer.getSpecialCourse1();
		String[] SpecialCoursesplited = SpecialCourse.split(",");
		System.out.println("SpecialCourse course length   "+ SpecialCoursesplited.length);
		if(SpecialCoursesplited.length > 0){
			for(int i=0 ; i < SpecialCoursesplited.length ; i++){
				CourseEnrolled courseEnrolledSpecial = new CourseEnrolled();
				courseEnrolledSpecial.setLoginDetails(loginDetails);
				courseEnrolledSpecial.setCoursenameid(Integer.parseInt(SpecialCoursesplited[i]));
				System.out.println("SpecialCoursesplited  "+ SpecialCoursesplited[i]);
				Integer courseenrolledSpeciall = (Integer)session.save(courseEnrolledSpecial);
			}
		}
		
		System.out.println("all insert done");
		transaction.commit();
		session.close();
		if(personalInformationTrainerIdd != 0){
			SendMail sendMail = new SendMail();
			sendMail.mailProperty(passwordString, registrationFormTrainer.getTrainingCenterPermanentEmail(), registrationFormTrainer.getFirstName()+ " " + registrationFormTrainer.getLastName());

			return "created";
		}else{
			return "error";
		}
	}
	
}
