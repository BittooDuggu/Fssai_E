package com.ir.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.ir.model.City;
import com.ir.service.PageLoadService;
import com.ir.service.impl.PageLoadServiceImpl;

/**
 * Servlet implementation class MyServlt
 */
@WebServlet("/MyServlt")
public class CheckData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckData() {
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
				
				try {
					Class.forName("org.postgresql.Driver");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Connection conn = null;
				try {
					conn = DriverManager.getConnection("jdbc:postgresql://localhost/postgres","postgres","Fss2iZentech");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Statement stmt = null;
				try {
					stmt = conn.createStatement();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    String sql="select * from loginDetails where loginId = '" + name + "'"; 
			    ResultSet rs = null;
				try {
					rs = stmt.executeQuery(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					if(rs.next()){
						//String name_status= "OK";
						System.out.println("not available to use");
						out.println("Already");
					}else{
						//String name_status="";
						//out.println(""+name+" is available to use");
						System.out.println("not in database");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
