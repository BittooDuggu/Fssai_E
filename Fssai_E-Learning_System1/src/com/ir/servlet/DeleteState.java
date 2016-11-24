package com.ir.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.ir.model.CourseName;
import com.ir.model.State;

/**
 * Servlet implementation class DeleteState
 */

public class DeleteState extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteState() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
		String name = (request.getQueryString());
		System.out.println("passing name   :" + name);
		String[] totalConnected = name.split("&");
		String id , status ;
		id = (totalConnected[0].split("="))[1];
		status = (totalConnected[1].split("="))[1];
		
		String newList = null;
		if(status.equalsIgnoreCase("I")){
			Configuration conf = new Configuration();
			conf.configure("/hibernate.cfg.xml");
			SessionFactory sf = conf.buildSessionFactory();
			Session session = sf.openSession();
			State   stateNameee=(State) session.load(State.class, Integer.parseInt(id));
			stateNameee.setStatus("A");
			session.update(stateNameee);
			session.beginTransaction().commit();
			session.close();
			newList = "Record set to active !!!" ;
		}else{
			Configuration conf = new Configuration();
			conf.configure("/hibernate.cfg.xml");
			SessionFactory sf = conf.buildSessionFactory();
			Session session = sf.openSession();
			State   stateNameee=(State) session.load(State.class, Integer.parseInt(id));
			stateNameee.setStatus("I");
			session.update(stateNameee);
			session.beginTransaction().commit();
			session.close();
			newList = "Record set to inactive !!!" ;
		}
		out.write(newList);
		out.flush();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
