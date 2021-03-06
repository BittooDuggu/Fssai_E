package com.ir.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import com.ir.dao.UpdateDAO;
import com.ir.form.RegistrationFormTrainer;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainer;

public class UpdateDAOImpl implements UpdateDAO{
	
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public List<PersonalInformationTrainer> FullInformation(LoginDetails loginDetails) {
		System.out.println("update dao service starts");
		Session session = sessionFactory.openSession();
		int logindetailsunique = loginDetails.getLoginDetailsUnique();
		Query query = session.createQuery("from PersonalInformationTrainer where personalinformationtrainerid = "+ logindetailsunique);
		List<PersonalInformationTrainer> list = query.list();
		System.out.println(list);
		session.close();
		return list;
	}



}
