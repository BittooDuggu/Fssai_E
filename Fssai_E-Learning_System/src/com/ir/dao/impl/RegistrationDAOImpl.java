package com.ir.dao.impl;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.tomcat.util.buf.UEncoder;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.ir.dao.RegistrationDAO;
import com.ir.form.RegistrationFormTrainee;
import com.ir.model.KindOfBusinessDetailsTrainee;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.RegisterTraineeInformationFull;
import com.ir.util.EncryptionPasswordANDVerification;
import com.ir.util.PasswordGenerator;
import com.ir.util.SendMail;


@Component("registrationDAO")
public class RegistrationDAOImpl implements RegistrationDAO {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public RegisterTraineeInformationFull register(RegistrationFormTrainee registrationFormTrainee)  {
		
		System.out.println("RegistrationDAOImpl [register] begin ");
		Integer userId=null;
		try{
		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction(); 
		System.out.println("state " +registrationFormTrainee.getResState());
		userId = (Integer)session.save(registrationFormTrainee);
		//registerTraineeInformationFull.setUserId(userId);
		transaction.commit();
		session.close();
		System.out.println("savedPerson "+userId);
		}catch(HibernateException he){
			
			String localizedMessage = he.getLocalizedMessage();
			if(null==userId || localizedMessage.contains("duplicate key")){
				System.out.println("UserAlreadRegisteredException occured..");
				Exception e=he;
				
			}
			
		}
		return null;
	}

	@Override
	public String registerUserIdCheck(RegistrationFormTrainee registrationFormTrainee)  {
		// TODO Auto-generated method stub
		String ret = null;
		ResultSet rs = null;
		String q = "select password from personalinformationtrainee where userid = " + registrationFormTrainee.getUserId() + " ";
		 try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
         Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:postgresql://localhost/Fssai","postgres","postgres");
		} catch (SQLException e) {
			e.printStackTrace();
		}
         Statement st = null;
		try {
			st = con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs = st.executeQuery(q);
			System.out.println("******* :" + rs.next());
		} catch (SQLException e) {
			e.printStackTrace();
		}
			try {
				if(rs.next()){
					ret = "already";
				}else{
					ret = null;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println("RegistrationDAOImpl user id check begin *** :" + ret);
			return ret;
	}

	@Override
	public String registerPersonalInformationTrainee(
			RegistrationFormTrainee registrationFormTrainee) {
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
		loginDetails.setLoginId(registrationFormTrainee.getUserId());
		loginDetails.setPassword("a");
		loginDetails.setStatus("A");
		loginDetails.setProfileId(3);
		
		PersonalInformationTrainee personalInformationTrainee = new PersonalInformationTrainee();
		personalInformationTrainee.setTitle(registrationFormTrainee.getTitle());
		personalInformationTrainee.setAadharNumber(registrationFormTrainee.getAadharNumber());
		personalInformationTrainee.setFirstName(registrationFormTrainee.getFirstName());
		personalInformationTrainee.setLastName(registrationFormTrainee.getLastName());
		personalInformationTrainee.setMiddleName(registrationFormTrainee.getMiddleName());
		personalInformationTrainee.setDob(registrationFormTrainee.getDob());
		personalInformationTrainee.setGender(registrationFormTrainee.getGender());
		personalInformationTrainee.setEmail(registrationFormTrainee.getEmail());
		personalInformationTrainee.setResidentialLine1(registrationFormTrainee.getResidentialAddressLine1());
		personalInformationTrainee.setResidentialLine2(registrationFormTrainee.getResidentialAddressLine2());
		personalInformationTrainee.setMobile(registrationFormTrainee.getMobile());
		personalInformationTrainee.setResState(registrationFormTrainee.getResState());
		personalInformationTrainee.setResCity(registrationFormTrainee.getResCity());
		personalInformationTrainee.setResPincode(registrationFormTrainee.getResPincode());
		personalInformationTrainee.setFirstName(registrationFormTrainee.getFirstName());
		personalInformationTrainee.setCorrespondenceAddress1(registrationFormTrainee.getCorrespondenceAddress1());
		personalInformationTrainee.setCorrespondenceAddress2(registrationFormTrainee.getCorrespondenceAddress2());
		personalInformationTrainee.setCorrespondenceState(registrationFormTrainee.getCorrespondenceState());
		personalInformationTrainee.setCorrespondenceDistrict(registrationFormTrainee.getCorrespondenceDistrict());
		personalInformationTrainee.setCorrespondenceCity(registrationFormTrainee.getCorrespondenceCity());
		personalInformationTrainee.setCorrespondencePincode(registrationFormTrainee.getCorrespondencePincode());
		personalInformationTrainee.setKindOfBusiness(registrationFormTrainee.getKindOfBusiness());
		personalInformationTrainee.setCompanyName(registrationFormTrainee.getCompanyName());
		personalInformationTrainee.setBusinessAddressLine1(registrationFormTrainee.getBusinessAddressLine1());
		personalInformationTrainee.setBusinessAddressLine2(registrationFormTrainee.getBusinessAddressLine2());
		personalInformationTrainee.setDesignation(registrationFormTrainee.getDesignation());
		personalInformationTrainee.setBussState(registrationFormTrainee.getBussState());
		personalInformationTrainee.setBussCity(registrationFormTrainee.getBussCity());
		personalInformationTrainee.setBussPincode(registrationFormTrainee.getBussPincode());
		personalInformationTrainee.setLoginDetails(loginDetails);
		Integer personalInformationTraineeId = (Integer)session.save(personalInformationTrainee);
		
		
		System.out.println("all insert done");
		transaction.commit();
		session.close();
		System.out.println("saved login "+ personalInformationTraineeId);
		if(personalInformationTraineeId  != 0){
			SendMail sendMail = new SendMail();
			sendMail.mailProperty(passwordString, registrationFormTrainee.getEmail(), registrationFormTrainee.getFirstName()+ " " + registrationFormTrainee.getLastName());

			return "created";
		}else{
			return "error";
		}
	}
	
}
