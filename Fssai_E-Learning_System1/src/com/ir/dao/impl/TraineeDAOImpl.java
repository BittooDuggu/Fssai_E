package com.ir.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import com.ir.dao.TraineeDAO;
import com.ir.form.ContactTrainee;
import com.ir.form.RegistrationFormTrainee;
import com.ir.model.ContactTraineee;
import com.ir.model.CourseName;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.State;
import com.ir.model.TrainingPartner;

public class TraineeDAOImpl implements  TraineeDAO{

	@Autowired
	@Qualifier("sessionFactory")
	public SessionFactory sessionFactory;
	
	
	@Override
	public String contactTraineeSave(ContactTrainee contactTrainee) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		ContactTraineee contactTraineeModel = new ContactTraineee();
		contactTraineeModel.setEmailAddress(contactTrainee.getEmailId());
		contactTraineeModel.setMessageDetails(contactTrainee.getMessage());
		contactTraineeModel.setUserId(1);
		Integer contactTraineeModelId = (Integer) session.save(contactTraineeModel);
		System.out.println("contactTraineeSave after save");
		tx.commit();
		session.close();
		if(contactTraineeModelId >0 && contactTraineeModelId != null){
			return "inserted";
		}else{
			return "error";
		}
	}


	@Override
	public List<CourseName> courseNameList() {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from CourseName");
		List<CourseName> courseNameList = query.list();
		session.close();
		return courseNameList;
	}


	@Override
	public List<TrainingPartner> trainingPartnerList() {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from TrainingPartner");
		List<TrainingPartner> trainingPartnerList = query.list();
		session.close();
		return trainingPartnerList;
	}


	@Override
	public List<State> trainingCenterStateList() {
		List<State> st=null;
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String sql ="select s.stateid, s.statename  from  state as s  "+
					" inner join personalinformationtrainingpartner as pitp on pitp.trainingpartnerpermanentstate = s.stateid "+
					" inner join trainingpartner as tp on tp.tpid = pitp.trainingpartnername  ";
		Query query = session.createSQLQuery(sql);
		List<Object[]> trainingCenterStateList =(List<Object[]>) query.list();
		 st = new ArrayList<>();
		for(int i=0;i<trainingCenterStateList.size();i++){
			State stt = new State();
			
			Object[] o=trainingCenterStateList.get(i);
			stt.setStateId((int) o[0]);
			stt.setStateName(o[1].toString());
			st.add(stt);
			
		}
		session.close();
		return st;
	}
	@Override
	public String updateTrainee(RegistrationFormTrainee registrationFormTrainee , Integer ss) {
		
		Session session =sessionFactory.openSession();
		//Query query = session.createQuery("from PersonalInformationTrainee where loginDetails = '"+ ss+"'");
		//List l = query.list();
		//System.out.println("list size   "+ l);
		//Integer i = (Integer) l.get(1);
		//String sql = "select id from personalInformationTrainee where loginDetails = '"+ ss +"'";
		//SQLQuery id = session.createSQLQuery(sql);
		System.out.println("iddddd  "+ss);
		
		PersonalInformationTrainee   personalInformationTrainee=(PersonalInformationTrainee) session.load(PersonalInformationTrainee.class, ss);
		
	//	PersonalInformationTrainee personalInformationTrainee = new PersonalInformationTrainee();
		personalInformationTrainee.setTitle(registrationFormTrainee.getTitle());
	System.out.println("this is pin code    "+registrationFormTrainee.getResPincode());	
	System.out.println("this is state     "+registrationFormTrainee.getResState());
	System.out.println(registrationFormTrainee.getBusinessAddressLine1());
		personalInformationTrainee.setBusinessAddressLine1(registrationFormTrainee.getBusinessAddressLine1());
		personalInformationTrainee.setBusinessAddressLine2(registrationFormTrainee.getBusinessAddressLine2());
		personalInformationTrainee.setBussCity(1);
		personalInformationTrainee.setBussPincode(registrationFormTrainee.getBussPincode());
		personalInformationTrainee.setBussState(1);
		personalInformationTrainee.setCompanyName(registrationFormTrainee.getCompanyName());
		personalInformationTrainee.setCorrespondenceAddress1(registrationFormTrainee.getCorrespondenceAddress1());
		personalInformationTrainee.setCorrespondenceAddress2(registrationFormTrainee.getCorrespondenceAddress2());
		personalInformationTrainee.setCorrespondenceCity(1);
		personalInformationTrainee.setCorrespondenceDistrict(1);
		personalInformationTrainee.setCorrespondencePincode(registrationFormTrainee.getCorrespondencePincode());
		personalInformationTrainee.setCorrespondenceState(1);
		personalInformationTrainee.setDesignation(registrationFormTrainee.getDesignation());
		personalInformationTrainee.setEmail(registrationFormTrainee.getEmail());
		personalInformationTrainee.setKindOfBusiness(registrationFormTrainee.getKindOfBusiness());
		personalInformationTrainee.setMobile(registrationFormTrainee.getMobile());
		personalInformationTrainee.setResCity(registrationFormTrainee.getResCity());
		personalInformationTrainee.setResidentialLine1(registrationFormTrainee.getResidentialAddressLine1());
		personalInformationTrainee.setResidentialLine2(registrationFormTrainee.getResidentialAddressLine2());
		personalInformationTrainee.setResPincode(registrationFormTrainee.getResPincode());
		personalInformationTrainee.setResState(1);
		
		
		
	//	session.createQuery("update com. ir.model.PersonalInformationTrainee set title='"+personalInformationTrainee.getTitle()+"', Email='"+personalInformationTrainee.getEmail()+"' ");
		
		
		session.update(personalInformationTrainee);
		session.beginTransaction().commit();
		
		session.close();
		
		
		return null;
	}

}
