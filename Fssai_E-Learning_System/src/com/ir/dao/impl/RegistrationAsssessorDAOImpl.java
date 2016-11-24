package com.ir.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import com.ir.dao.RegistrationAssessorDAO;
import com.ir.form.RegistrationFormAssessor;
import com.ir.model.AssessmentAgency;
import com.ir.model.CourseEnrolled;
import com.ir.model.CourseName;
import com.ir.model.LoginDetails;
import com.ir.model.ManageAssessmentAgency;
import com.ir.model.PersonalInformationAssessor;
import com.ir.model.State;
import com.ir.model.Title;



@Component("RegistrationAssessorDAO")
public class RegistrationAsssessorDAOImpl implements RegistrationAssessorDAO {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public String register(RegistrationFormAssessor registrationFormAssessor) {
		// TODO Auto-generated method stub
		System.out.println("RegistrationDAOImpl [register] begin for registration trainer");
		Integer personalInformationTrainerId=null;
		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction(); 
		
		PersonalInformationAssessor personalInformationAssessor = new PersonalInformationAssessor();
		personalInformationAssessor.setTitle(registrationFormAssessor.getTitle());
		personalInformationAssessor.setAadharNumber(registrationFormAssessor.getAadharNumber());
		personalInformationAssessor.setFirstName(registrationFormAssessor.getFirstName());
		personalInformationAssessor.setLastName(registrationFormAssessor.getLastName());
		personalInformationAssessor.setMiddleName(registrationFormAssessor.getMiddleName());
		personalInformationAssessor.setDOB(registrationFormAssessor.getDOB());
		personalInformationAssessor.setGender(registrationFormAssessor.getGender());
		personalInformationAssessor.setAssessorPermanentLine1(registrationFormAssessor.getAssessorPermanentLine1());
		personalInformationAssessor.setAssessorPermanentLine2(registrationFormAssessor.getAssessorPermanentLine2());
		personalInformationAssessor.setAssessorrPermanentState(registrationFormAssessor.getAssessorrPermanentState());
		personalInformationAssessor.setAssessorPermanentDistrict(registrationFormAssessor.getAssessorPermanentDistrict());
		personalInformationAssessor.setAssessorPermanentCity(registrationFormAssessor.getAssessorPermanentCity());
		personalInformationAssessor.setAssessorPermanentPincode(registrationFormAssessor.getAssessorPermanentPincode());
		personalInformationAssessor.setAssessorPermanentEmail(registrationFormAssessor.getAssessorPermanentEmail());
		personalInformationAssessor.setAssessorPermanentMobile(registrationFormAssessor.getAssessorPermanentMobile());
		personalInformationAssessor.setAssessorCorrespondenceLine1(registrationFormAssessor.getAssessorCorrespondenceLine1());
		personalInformationAssessor.setAssessorCorrespondenceLine2(registrationFormAssessor.getAssessorCorrespondenceLine2());
		personalInformationAssessor.setAssessorCorrespondenceState(registrationFormAssessor.getAssessorCorrespondenceState());
		personalInformationAssessor.setAssessorCorrespondenceDistrict(registrationFormAssessor.getAssessorCorrespondenceDistrict());
		personalInformationAssessor.setAssessorCorrespondenceCity(registrationFormAssessor.getAssessorCorrespondenceCity());
		personalInformationAssessor.setAssessorCorrespondencePincode(registrationFormAssessor.getAssessorCorrespondencePincode());
		personalInformationAssessor.setReleventExpOfAuditInYear(registrationFormAssessor.getReleventExpOfAuditInYear());
		personalInformationAssessor.setReleventExpOfAuditInMonth(registrationFormAssessor.getReleventExpOfAuditInMonth());
		personalInformationAssessor.setHowManyAssessmentConductInAMonth(registrationFormAssessor.getHowManyAssessmentConductInAMonth());
		personalInformationTrainerId = (Integer)session.save(personalInformationAssessor);
		System.out.println("RegistrationDAOImpl [register] begin for registration assessor login   :"+ personalInformationAssessor);
		
		
		String BasicCourse = registrationFormAssessor.getBasicCourse1();
		String[] BasicCoursesplited = BasicCourse.split(",");
		System.out.println("basic course length   "+ BasicCoursesplited.length);
		for(int i=0 ; i < BasicCoursesplited.length ; i++){
			CourseEnrolled courseEnrolledBasic = new CourseEnrolled();
			//courseEnrolledBasic.setPersonalInformationA(personalInformationTrainerId);
			courseEnrolledBasic.setCoursenameid(Integer.parseInt(BasicCoursesplited[i]));
			System.out.println("BasicCoursesplited  "+ BasicCoursesplited[i]);
			Integer courseenrolledbasic = (Integer)session.save(courseEnrolledBasic);
		}
		
		String AdvanceCourse = registrationFormAssessor.getAdvanceCourse1();
		String[] AdvanceCoursesplited = AdvanceCourse.split(",");
		System.out.println("advance course length   "+ AdvanceCoursesplited.length);
		for(int i=0 ; i < AdvanceCoursesplited.length ; i++){
			CourseEnrolled courseEnrolledAdvance = new CourseEnrolled();
			//courseEnrolledAdvance.setPersonalInformationTrainerId(personalInformationTrainerId);
			courseEnrolledAdvance.setCoursenameid(Integer.parseInt(AdvanceCoursesplited[i]));
			System.out.println("AdvanceCoursesplited  "+ AdvanceCoursesplited[i]);
			Integer courseenrolledadvance = (Integer)session.save(courseEnrolledAdvance);
		}
		
		
		String SpecialCourse = registrationFormAssessor.getSpecialCourse1();
		String[] SpecialCoursesplited = SpecialCourse.split(",");
		System.out.println("SpecialCourse course length   "+ SpecialCoursesplited.length);
		for(int i=0 ; i < SpecialCoursesplited.length ; i++){
			CourseEnrolled courseEnrolledSpecial = new CourseEnrolled();
			//courseEnrolledSpecial.setPersonalInformationTrainerId(personalInformationTrainerId);
			courseEnrolledSpecial.setCoursenameid(Integer.parseInt(SpecialCoursesplited[i]));
			System.out.println("SpecialCoursesplited  "+ SpecialCoursesplited[i]);
			Integer courseenrolledspecial = (Integer)session.save(courseEnrolledSpecial);
		}
		
		LoginDetails loginDetails = new LoginDetails();
		loginDetails.setPassword("Password");
		loginDetails.setProfileId(6);
		loginDetails.setStatus("I");
		//loginDetails.setLoginDetailsUnique(personalInformationTrainerId);
		System.out.println("lllll     "+ registrationFormAssessor.getUserId() + "      "+ personalInformationTrainerId);
		loginDetails.setLoginId(registrationFormAssessor.getUserId());
		Integer loginDetailsUserId = (Integer)session.save(loginDetails);
		System.out.println("all insert done");
		transaction.commit();
		session.close();
		if(personalInformationTrainerId != 0 && loginDetailsUserId  != 0){
			return "created";
		}else{
			return "error";
		}
	}

	@Override
	public List<State> loadState() {
		System.out.println("Page Load DAOImpl process start in state");
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
		System.out.println("Page Load DAOImpl process start in title ");
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Title");
		List titleList = query.list();
		session.close();
		System.out.println("title  ************* list dao     :"+ titleList);
		return titleList;
	}

	@Override
	public List<CourseName> basicCourseName() {
		// TODO Auto-generated method stub
		System.out.println("Page Load DAOImpl process start in course name ");
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CourseName");
		List courseNameList = query.list();
		session.close();
		System.out.println("CourseName  ************* list dao     :"+ courseNameList);
		return courseNameList;
	}

	@Override
	public List<ManageAssessmentAgency> loadAssessmentAgency() {
		System.out.println("Page Load DAOImpl process start in Assessment Agency");
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from ManageAssessmentAgency");
		List loadAssessmentAgency = query.list();
		session.close();
		System.out.println("state list dao     :"+ loadAssessmentAgency);
		// TODO Auto-generated method stub
		return loadAssessmentAgency;
	}
	
}
