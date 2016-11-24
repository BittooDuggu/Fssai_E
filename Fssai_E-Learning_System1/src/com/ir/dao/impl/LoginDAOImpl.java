package com.ir.dao.impl;

import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.ir.dao.LoginDAO;
import com.ir.form.LoginForm;
import com.ir.model.CourseEnrolled;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.State;
import com.ir.model.TrainingPartner;
import com.ir.util.EncryptionPasswordANDVerification;

@Repository("LoginDAO")
public class LoginDAOImpl implements LoginDAO{


	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public LoginDetails login(LoginForm loginForm) {
		System.out.println("LoginDAOImpl login() process start ");
		Session session = sessionFactory.openSession();
		System.out.println(loginForm.getUserId()  +   "    "+  loginForm.getPassword());
		String encryprPassword = null;
		try{
			EncryptionPasswordANDVerification encryptionPasswordANDVerification = new EncryptionPasswordANDVerification();
			encryprPassword = encryptionPasswordANDVerification.encryptPass(loginForm.getPassword());
			
		}catch(NoSuchAlgorithmException e){
			System.out.println( " no such algo exception error catch ");
		}
		Criteria criteria = session.createCriteria(LoginDetails.class);
		criteria.add(Restrictions.eq("loginId", loginForm.getUserId()));
		criteria.add(Restrictions.eq("Password", loginForm.getPassword()));
		//criteria.add(Restrictions.eq("Password", encryprPassword));
		System.out.println("encryprPassword  " +encryprPassword);
		List<LoginDetails> list = criteria.list();
		session.close();
		System.out.println("list size  " + list.size()  + "      " + list);
		LoginDetails loginDetailsinforation = null;
		for(LoginDetails loginDetails: list){
			loginDetailsinforation=loginDetails;
		}
		if(list.size() > 0){
			return loginDetailsinforation;
		}else
		{
			return loginDetailsinforation;
		}
		
		
	}

	@Override
	public List<CourseEnrolled> courseEnrolledList() {
		/*System.out.println("admin DAO Impl course Enrolled List process start");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from CourseEnrolled");
		List<CourseEnrolled> courseEnrolledList = query.list();
		session.close();
		if(courseEnrolledList.size() > 1){
			return courseEnrolledList;
		}else{
			return null;
		}
		*/
		return null;
	}

	@Override
	public PersonalInformationTrainee fullDetail(int loginId) {
		System.out.println("LoginDAOImpl full detail process start ");
		Session session = sessionFactory.openSession();
		Integer i = loginId;
		System.out.println("search " + loginId);
		Query query = session.createQuery("from PersonalInformationTrainee where loginDetails = '"+ i +"'");
		List<PersonalInformationTrainee> list = query.list();
		session.close();
		PersonalInformationTrainee personalInformationTrainee = null;
		for(PersonalInformationTrainee personalInformationTrainee1: list){
			personalInformationTrainee=personalInformationTrainee1;
		}
		return personalInformationTrainee;
	}

	
	@Override
	public List<TrainingPartner> trainingPartnerCountList() {
		Session session = sessionFactory.openSession();
		String sql = "select trainingpartnername , count(trainingpartnername) from managetrainingpartner group by trainingpartnername";
		Query query = session.createSQLQuery(sql);
		List<TrainingPartner> trainingPartnerCountList = query.list();
		session.close();
		return trainingPartnerCountList;
	}
	
	

}
