package com.ir.dao.impl;

import java.security.NoSuchAlgorithmException;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import com.ir.dao.RegistrationTrainingPartnerDAO;
import com.ir.form.RegistrationFormTrainingPartner;
import com.ir.model.CourseEnrolled;
import com.ir.model.CourseName;
import com.ir.model.LoginDetails;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.model.TrainingPartner;
import com.ir.util.EncryptionPasswordANDVerification;
import com.ir.util.PasswordGenerator;
import com.ir.util.SendMail;

public class RegistrationTrainingPartnerDAOImpl implements RegistrationTrainingPartnerDAO {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public String register(RegistrationFormTrainingPartner registrationFormTrainingPartner) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<State> loadState() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from State");
		List listState = query.list();
		session.close();
		System.out.println("state list dao     :"+ listState);
		// TODO Auto-generated method stub
		return listState;
	}

	@Override
	public List<Title> loadTitle() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Title");
		List titleList = query.list();
		session.close();
		return titleList;
	}

	@Override
	public List<CourseName> basicCourseName() {
		// TODO Auto-generated method stub
				Session session = sessionFactory.openSession();
				Query query = session.createQuery("from CourseName");
				List courseNameList = query.list();
				session.close();
				return courseNameList;
	}

	@Override
	public List<ManageTrainingPartner> trainingPartnerNameList() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from ManageTrainingPartner");
		List<ManageTrainingPartner> trainingPartnerNameList = query.list();
		session.close();
		return trainingPartnerNameList;
	}

	@Override
	public String registerTrainingPartner(RegistrationFormTrainingPartner registrationFormTrainingPartner) {
		Integer personalInformationTrainingPartnerIdd=null;
		Session session = sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		String passwordString = null;
		try{
			PasswordGenerator passwordGenerator = new PasswordGenerator(6);
			char[] pass = passwordGenerator.get();
			passwordString = String.valueOf(pass);
		}catch(Exception e){
			passwordString = "password";
		}
		
		
		
		String encryprPassword = null;
		try{
			EncryptionPasswordANDVerification encryptionPasswordANDVerification = new EncryptionPasswordANDVerification();
			encryprPassword = encryptionPasswordANDVerification.encryptPass(passwordString);
			
		}catch(NoSuchAlgorithmException e){
			System.out.println( " no such algo exception error catch ");
		}
		
		LoginDetails loginDetails = new LoginDetails();
		loginDetails.setLoginId(registrationFormTrainingPartner.getUserId());
		loginDetails.setStatus("I");
		loginDetails.setPassword("lalit");
		//loginDetails.setPassword(encryprPassword);
		loginDetails.setProfileId(7);
		
		PersonalInformationTrainingPartner personalInformationTrainingPartner = new PersonalInformationTrainingPartner();
		personalInformationTrainingPartner.setTitle(registrationFormTrainingPartner.getTitle());
		personalInformationTrainingPartner.setTrainingPartnerName(registrationFormTrainingPartner.getTrainingPartnerName());
		personalInformationTrainingPartner.setFirstName(registrationFormTrainingPartner.getFirstName());
		personalInformationTrainingPartner.setLastName(registrationFormTrainingPartner.getLastName());
		personalInformationTrainingPartner.setMiddleName(registrationFormTrainingPartner.getMiddleName());
		personalInformationTrainingPartner.setPAN(registrationFormTrainingPartner.getPAN());
		personalInformationTrainingPartner.setTrainingPartnerPermanentLine1(registrationFormTrainingPartner.getTrainingPartnerPermanentLine1());
		personalInformationTrainingPartner.setTrainingPartnerPermanentLine2(registrationFormTrainingPartner.getTrainingPartnerPermanentLine2());
		personalInformationTrainingPartner.setTrainingPartnerPermanentState(registrationFormTrainingPartner.getTrainingPartnerPermanentState());
		personalInformationTrainingPartner.setTrainingPartnerPermanentDistrict(registrationFormTrainingPartner.getTrainingPartnerPermanentDistrict());
		personalInformationTrainingPartner.setTrainingPartnerPermanentCity(registrationFormTrainingPartner.getTrainingPartnerPermanentCity());
		personalInformationTrainingPartner.setTrainingPartnerPermanentPincode(registrationFormTrainingPartner.getTrainingPartnerPermanentPincode());
		personalInformationTrainingPartner.setTrainingPartnerPermanentEmail(registrationFormTrainingPartner.getTrainingPartnerPermanentEmail());
		personalInformationTrainingPartner.setTrainingPartnerPermanentMobile(registrationFormTrainingPartner.getTrainingPartnerPermanentMobile());
		personalInformationTrainingPartner.setSeatCapacityPerSession(registrationFormTrainingPartner.getSeatCapacityPerSession());
		personalInformationTrainingPartner.setNoOfInHouseTrainers(registrationFormTrainingPartner.getNoOfInHouseTrainers());
		personalInformationTrainingPartner.setAvailabiltyOfTVProjector(registrationFormTrainingPartner.getAvailabiltyOfInHouseTrainersInFoodSafety());
		personalInformationTrainingPartner.setNoOfYearsInBusinessOfTraining(registrationFormTrainingPartner.getNoOfYearsInBusinessOfTraining());
		personalInformationTrainingPartner.setAvailabiltyOfInHouseTrainersInFoodSafety(registrationFormTrainingPartner.getAvailabiltyOfInHouseTrainersInFoodSafety());
		personalInformationTrainingPartner.setNoOfTrainingSessionWishToConductInAMonth(registrationFormTrainingPartner.getNoOfTrainingSessionWishToConductInAMonth());
		personalInformationTrainingPartner.setLoginDetails(loginDetails);
		personalInformationTrainingPartner.setProfileCode(5);
		
		try{
			personalInformationTrainingPartnerIdd = (Integer) session.save(personalInformationTrainingPartner);
		}catch (Exception e) {
			System.out.println("Oops !!");
		}
		try{
			String BasicCourse = registrationFormTrainingPartner.getBasicCourse1();
			String[] BasicCoursesplited = BasicCourse.split(",");
			System.out.println("basic course length   "+ BasicCoursesplited.length);
			if(BasicCoursesplited.length > 0){
				for(int i=0 ; i < BasicCoursesplited.length ; i++){
					CourseEnrolled courseEnrolledBasic = new CourseEnrolled();
					courseEnrolledBasic.setLoginDetails(loginDetails);
					courseEnrolledBasic.setCoursenameid(Integer.parseInt(BasicCoursesplited[i]));
					System.out.println("BasicCoursesplited  "+ BasicCoursesplited[i]);
					Integer courseenrolledBasicc = (Integer)session.save(courseEnrolledBasic);
				}
			}
			
			String AdvanceCourse = registrationFormTrainingPartner.getAdvanceCourse1();
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

			String SpecialCourse = registrationFormTrainingPartner.getSpecialCourse1();
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
		}catch (Exception e) {
			System.out.println("Oops !! course basic");
		}
		System.out.println("all insert done");
		transaction.commit();
		session.close();
		if(personalInformationTrainingPartnerIdd != 0){
			SendMail sendMail = new SendMail();
			sendMail.mailProperty(passwordString, registrationFormTrainingPartner.getTrainingPartnerPermanentEmail(), registrationFormTrainingPartner.getFirstName()+ " " + registrationFormTrainingPartner.getLastName());

			return "created";
		}else{
			return "error";
		}
	}

	@Override
	public List<ManageTrainingPartner> trainingCenterList() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from ManageTrainingPartner");
		List<ManageTrainingPartner> trainingCenterList = query.list();
		session.close();
		return trainingCenterList;
	}	
	
}
