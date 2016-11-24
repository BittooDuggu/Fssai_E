package com.ir.dao.impl;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ir.dao.AdminDAO;
import com.ir.form.AdminUserManagementForm;
import com.ir.form.AssessorUserManagementForm;
import com.ir.form.CityForm;
import com.ir.form.DistrictForm;
import com.ir.form.ManageAssessmentAgencyForm;
import com.ir.form.ManageCourse;
import com.ir.form.ManageCourseContentForm;
import com.ir.form.ManageTrainingPartnerForm;
import com.ir.form.RegionForm;
import com.ir.form.StateForm;
import com.ir.form.TraineeUserManagementForm;
import com.ir.model.AdminUserManagement;
import com.ir.model.AssessorUserManagement;
import com.ir.model.City;
import com.ir.model.CourseName;
import com.ir.model.CourseType;
import com.ir.model.District;
import com.ir.model.LoginDetails;
import com.ir.model.ManageAssessmentAgency;
import com.ir.model.ManageCourseContent;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.PersonalInformationTrainer;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.Region;
import com.ir.model.State;
import com.ir.model.TraineeUserManagement;
import com.ir.model.TrainingPartner;
import com.ir.util.EncryptionPasswordANDVerification;
import com.ir.util.PasswordGenerator;
import com.ir.util.SendMail;

public class AdminDAOImpl implements AdminDAO {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	
	@Override
	public String stateMasterSave(StateForm stateForm) {
		System.out.println("admin DAO Impl state input process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		State state = new State();
		System.out.println("state name to save  "+  stateForm.getStateName());
		System.out.println("state status to save  "+  stateForm.getStatus());
		state.setStateName(stateForm.getStateName().toUpperCase());
		state.setStatus(stateForm.getStatus());

		Integer stateIdd = null ;
		String sql = "select * from state where stateName = '"+stateForm.getStateName().toUpperCase()+"'";
		Query query = session.createSQLQuery(sql);
		List l = query.list();
		if(l != null && l.size() >0){
			session.close();
			return "already";
		}else{
			stateIdd = (Integer)session.save(state);
			tx.commit();
			session.close();
			if(stateIdd != 0 && stateIdd  != 0){
				return "created";
			}else{
				return "already";
			}
		}
	}


	@Override
	public List<State> stateList() {
		// TODO Auto-generated method stub
		System.out.println("admin DAO Impl state process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from State");
		List<State> stateList = query.list();
		session.close();
		return stateList;
	}


	@Override
	public String districtMasterSave(DistrictForm districtForm) {
		Session session = sessionFactory.openSession();
		String sql = "select s.stateId from district as d inner join state as s on s.stateid = d.stateid where "+
					 " s.stateId='" + districtForm.getStateId()+ "' and d.districtname='" +districtForm.getDistrictName().toUpperCase() +"'";
		Query query = session.createSQLQuery(sql);
		List l = query.list();
		session.close();
		if(l != null && l.size() > 0){
			return "error";
		}else{
			District district = new District();
			district.setDistrictName(districtForm.getDistrictName().toUpperCase());
			district.setStatus(districtForm.getStatus());
			district.setStateId(districtForm.getStateId());
			
			Session session1 = sessionFactory.openSession();
			Transaction tx1 = session1.beginTransaction();
			Integer districtId = (Integer)session1.save(district);
			tx1.commit();
			session1.close();
			if(districtId != 0 && districtId  != null){
				return "created";
			}else{
				return "error";
			}
		}
		
	}

	@Override
	public String cityMasterSave(CityForm cityForm) {
		System.out.println("admin DAO Impl city input process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		City city = new City();
		city.setCityName(cityForm.getCityName());
		city.setDistrictId(cityForm.getDistrictId());
		city.setStatus(cityForm.getStatus());
		
		Integer cityIdd = null ;
		String sql = "select * from city where cityName = '"+cityForm.getCityName()+"'";
		Query query = session.createSQLQuery(sql);
		List l = query.list();
		if(l != null && l.size() >0){
			session.close();
			return "already";
		}else{
			cityIdd = (Integer)session.save(city);
			tx.commit();
			session.close();
			if(cityIdd != 0 && cityIdd  != 0){
				return "created";
			}else{
				return "already";
			}
		}
	}


	@Override
	public String regionMasterSave(RegionForm regionForm) {
		System.out.println("admin DAO Impl region input process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Region region= new Region();
		region.setRegionName(regionForm.getRegionName());
		region.setDistrictId(regionForm.getDistrictId());
		Integer stateId = (Integer)session.save(region);
		tx.commit();
		session.close();
		if(stateId != 0 && stateId  != 0){
			return "created";
		}else{
			return "error";
		}
	}


	@Override
	public List<CourseName> courseNameList() {
		System.out.println("admin DAO Impl state process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from CourseName");
		List<CourseName> courseNameList = query.list();
		session.close();
		return courseNameList;
	}


	@Override
	public String manageCourse(ManageCourse manageCourse) {
		System.out.println("admin DAO Impl region input process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		CourseName courseName= new CourseName();
		courseName.setCourseduration(manageCourse.getDuration());
		courseName.setCoursename(manageCourse.getCourseName());
		courseName.setCoursetypeid(manageCourse.getCourseType());
		courseName.setStatus(manageCourse.getStatus());
		courseName.setPaidunpaid(manageCourse.getFreePaid());
		courseName.setModeOfTraing(manageCourse.getModeOfTraining());
		courseName.setCreatedby(2);
		courseName.setUpdatedby(2);
		
			
		
		String sqlInsert ="select ct.coursetype , cn.coursename , cn.courseduration , cn.paidunpaid , cn.modeoftraining , cn.status "+
					" from coursename as cn inner join coursetype as ct on ct.coursetypeid= cn.coursetypeid "+
					" where cn.coursetypeid='"+ manageCourse.getCourseType()+"' and cn.coursename= '"+ manageCourse.getCourseName()+"'";
		Integer courseNameId = null ;
		Query query = session.createSQLQuery(sqlInsert);
		List l = query.list();
		if(l != null && l.size() >0){
			session.close();
			return "error";
		}else{
			courseNameId = (Integer)session.save(courseName);
			tx.commit();
			session.close();
			if(courseNameId != 0 && courseNameId  != 0){
				return "created";
			}else{
				return "error";
			}
		}	
	}


	@Override
	public List<CourseType> courseTypeList() {
		System.out.println("admin DAO Impl state process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from CourseType");
		List<CourseType> courseTypeList = query.list();
		session.close();
		return courseTypeList;
	}


	@Override
	public String manageTrainingPartnerSave(ManageTrainingPartnerForm manageTrainingPartnerForm) {
		// TODO Auto-generated method stub
		System.out.println("RegistrationDAOImpl [register] begin for manage training partner save");
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
		loginDetails.setLoginId(manageTrainingPartnerForm.getUserId());
		loginDetails.setPassword("lalit");
		loginDetails.setStatus("A");
		loginDetails.setProfileId(7);
		
		ManageTrainingPartner manageTrainingPartner = new ManageTrainingPartner();
		manageTrainingPartner.setPAN(manageTrainingPartnerForm.getPAN());
		manageTrainingPartner.setTrainingPartnerName(manageTrainingPartnerForm.getTrainingPartnerName());
		manageTrainingPartner.setWebsiteUrl(manageTrainingPartnerForm.getWebsiteUrl());
		manageTrainingPartner.setHeadOfficeDataAddress1(manageTrainingPartnerForm.getHeadOfficeDataAddress1());
		manageTrainingPartner.setHeadOfficeDataAddress2(manageTrainingPartnerForm.getHeadOfficeDataAddress2());
		manageTrainingPartner.setPin(manageTrainingPartnerForm.getPin());
		manageTrainingPartner.setDistrict(manageTrainingPartnerForm.getDistrict());
		manageTrainingPartner.setCity("1");
		manageTrainingPartner.setLoginDetails(loginDetails);
		Integer manageTrainingPartnerIdd = (Integer)session.save(manageTrainingPartner);
		
		System.out.println("all insert done");
		transaction.commit();
		session.close();
		System.out.println("saved login "+ manageTrainingPartnerIdd);
		if(manageTrainingPartnerIdd  != 0){
			return "created";
		}else{
			return "error";
		}
	}


	@Override
	public String manageAssessmentAgencySave(ManageAssessmentAgencyForm manageAssessmentAgencyForm) {
		System.out.println("RegistrationDAOImpl [register] begin for registration trainee");
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
		loginDetails.setLoginId(manageAssessmentAgencyForm.getUserId());
		loginDetails.setPassword("lalit");
		loginDetails.setProfileId(6);
		
		ManageAssessmentAgency manageAssessmentAgency = new ManageAssessmentAgency();
		manageAssessmentAgency.setPAN(manageAssessmentAgencyForm.getPAN());
		manageAssessmentAgency.setAssessmentAgencyName(manageAssessmentAgencyForm.getAssessmentAgencyName());
		manageAssessmentAgency.setWebsiteUrl(manageAssessmentAgencyForm.getWebsiteUrl());
		manageAssessmentAgency.setHeadOfficeDataAddress1(manageAssessmentAgencyForm.getHeadOfficeDataAddress1());
		manageAssessmentAgency.setHeadOfficeDataAddress2(manageAssessmentAgencyForm.getHeadOfficeDataAddress2());
		manageAssessmentAgency.setPin(manageAssessmentAgencyForm.getPin());
		manageAssessmentAgency.setDistrict(manageAssessmentAgencyForm.getDistrict());
		manageAssessmentAgency.setCity("1");
		manageAssessmentAgency.setLoginDetails(loginDetails);
		Integer manageTrainingPartnerIdd = (Integer)session.save(manageAssessmentAgency);
		
		System.out.println("all insert done");
		transaction.commit();
		session.close();
		System.out.println("saved login "+ manageTrainingPartnerIdd);
		if(manageTrainingPartnerIdd  != 0){
			return "created";
		}else{
			return "error";
		}
	}


	@Override
	public List<PersonalInformationTrainee> traineeUserManagementSearch(TraineeUserManagementForm traineeUserManagementForm) {
		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction(); 
		Criteria criteria = session.createCriteria(PersonalInformationTrainee.class);
		criteria.add(Restrictions.eq("FirstName", traineeUserManagementForm.getFirstName()));
		criteria.add(Restrictions.eq("MiddleName", traineeUserManagementForm.getMiddleName()));
		criteria.add(Restrictions.eq("LastName", traineeUserManagementForm.getLastName()));
		criteria.add(Restrictions.eq("AadharNumber", traineeUserManagementForm.getAadharNumber()));
		criteria.add(Restrictions.eq("status", traineeUserManagementForm.getStatus()));
		//criteria.add(Restrictions.eq("loginDetails",traineeUserManagementForm.getUserId()));
		List<PersonalInformationTrainee> list = criteria.list();
		System.out.println("all select done");
		transaction.commit();
		session.close();
		System.out.println("list  "+ list);
		if( list.size() > 0){
			return list;
		}else{
			return null;
		}
	}


	@Override
	public List<AdminUserManagement> adminUserManagementSearch() {
		System.out.println("RegistrationDAOImpl [register] begin for registration trainee");
		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction(); 
		
		/*System.out.println(adminUserManagementForm.getUserId()  +  "     "+  adminUserManagementForm.getStatus());
		System.out.println(adminUserManagementForm.getFirstName()  +  "     "+  adminUserManagementForm.getMiddleName());
		System.out.println(adminUserManagementForm.getLastName()  +  "     "+  adminUserManagementForm.getAadharNumber());
		*/
		Criteria criteria = session.createCriteria(AdminUserManagement.class);
		//criteria.add(Restrictions.eq("FirstName", adminUserManagementForm.getFirstName()));
		//criteria.add(Restrictions.eq("MiddleName", adminUserManagementForm.getMiddleName()));
		//criteria.add(Restrictions.eq("LastName", adminUserManagementForm.getLastName()));
		//criteria.add(Restrictions.eq("AadharNumber", adminUserManagementForm.getAadharNumber()));
		//criteria.add(Restrictions.eq("status", adminUserManagementForm.getStatus()));
		//criteria.add(Restrictions.eq("loginDetails",traineeUserManagementForm.getUserId()));
		List<AdminUserManagement> list = criteria.list();
		System.out.println("all select done");
		transaction.commit();
		session.close();
		System.out.println("list  "+ list);
		if( list.size() > 0){
			return list;
		}else{
			return list;
		}
	}


	@Override
	public String adminUserManagementSave(AdminUserManagementForm adminUserManagementForm) {
		System.out.println("admin DAO Impl atate input process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		LoginDetails loginDetails = new LoginDetails();
		loginDetails.setLoginId(adminUserManagementForm.getUserId());
		loginDetails.setPassword("Password");
		loginDetails.setProfileId(2);
		loginDetails.setStatus("A");
		
		AdminUserManagement adminUserManagement = new AdminUserManagement();
		adminUserManagement.setAadharNumber(adminUserManagementForm.getAadharNumber());
		adminUserManagement.setFirstName(adminUserManagementForm.getFirstName());
		adminUserManagement.setLastName(adminUserManagementForm.getLastName());
		adminUserManagement.setMiddleName(adminUserManagementForm.getMiddleName());
		adminUserManagement.setLoginDetails(loginDetails);
		Integer adminUserManagementIdd = (Integer)session.save(adminUserManagement);
		tx.commit();
		session.close();
		if(adminUserManagementIdd != 0 ){
			return "created";
		}else{
			return "error";
		}
	}


	@Override
	public String manageCourseContentSearch(ManageCourseContentForm manageCourseContentForm) {
		// TODO Auto-generated method stub
		
		String contentLocation = manageCourseContentForm.getContentLocation();
		int courseType = manageCourseContentForm.getCourseType();
		int courseName = manageCourseContentForm.getCourseName();
		String modeOfTraining = manageCourseContentForm.getModeOfTraining();
		String contentType = manageCourseContentForm.getContentType();
		String contentLink = manageCourseContentForm.getContentLink();
		String contentName = manageCourseContentForm.getContentName();
		
		Session session = sessionFactory.openSession();
	
		Criteria criteria = session.createCriteria(ManageCourseContent.class);
		criteria.add(Restrictions.eq("contentLocationInput", contentLocation));
		criteria.add(Restrictions.eq("courseTypeInput", courseType));
		criteria.add(Restrictions.eq("courseNameInput", courseName));
		//criteria.add(Restrictions.eq("modeOfTraining", modeOfTraining));
		//criteria.add(Restrictions.eq("contentType", contentType));
		List l = criteria.list();
		if(l != null && l.size() > 0){
			session.close();
			return "error";
		}else{
			Session session1 = sessionFactory.openSession();
			ManageCourseContent mcc = new ManageCourseContent();
			mcc.setContentLocationInput(contentLocation);
			mcc.setCourseTypeInput(courseType);
			mcc.setCourseNameInput(courseName);
			mcc.setModeOfTrainingInput(modeOfTraining);
			mcc.setContentTypeInput(contentType);
			mcc.setContentLinkInput(contentLink);
			mcc.setContentNameInput(contentName);
			int mccId = (Integer)session1.save(mcc);
			session1.beginTransaction().commit();
			session1.close();
			if(mccId > 0){
				return "created";
			}else{
				return "error";
			}
		}
		
		
	}


	@Override
	public List<ManageTrainingPartner> trainingPartnerList() {
		System.out.println("admin DAO Impl training Partner List  process start");
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from ManageTrainingPartner");
		List<ManageTrainingPartner> trainingPartnerList = query.list();
		session.close();
		return trainingPartnerList;
	}


	@Override
	public List<PersonalInformationTrainer> trainingNameList() {
		System.out.println("admin DAO Impl state process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from PersonalInformationTrainer");
		List<PersonalInformationTrainer> trainingNameList = query.list();
		session.close();
		return trainingNameList;
	}


	@Override
	public String assessorUserManagementSave(AssessorUserManagementForm assessorUserManagementForm) {
		System.out.println("admin DAO Impl assessor process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		String sqlInsert ="select ld.loginid  , aum.aadharnumber from assessorusermanagement as aum "+
				  " inner join logindetails as ld on ld.id = aum.logindetails ";
		Integer assessorId = null ;
		Query query = session.createSQLQuery(sqlInsert);
		List l = query.list();
		if(l != null && l.size() >0){
			session.close();
			return "error";
		}else{
			LoginDetails loginDetails = new LoginDetails();
			loginDetails.setLoginId(assessorUserManagementForm.getUserId());
			loginDetails.setPassword("Password");
			loginDetails.setProfileId(8);
			loginDetails.setStatus("A");
			
			AssessorUserManagement assessorUserManagement = new AssessorUserManagement();
			assessorUserManagement.setAadharNumber(assessorUserManagementForm.getAadharNumber());
			assessorUserManagement.setFirstName(assessorUserManagementForm.getFirstName());
			assessorUserManagement.setLastName(assessorUserManagementForm.getLastName());
			assessorUserManagement.setMiddleName(assessorUserManagementForm.getMiddleName());
			assessorUserManagement.setLoginDetails(loginDetails);
			Integer assessorUserManagementIdd = (Integer)session.save(assessorUserManagement);
			tx.commit();
			session.close();
			if(assessorUserManagementIdd != 0 ){
				return "created";
			}else{
				return "error";
			}
		}		
	}
}
