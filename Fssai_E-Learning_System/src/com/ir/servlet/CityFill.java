package com.ir.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.google.gson.Gson;
import com.ir.model.City;
import com.ir.model.District;
import com.ir.service.PageLoadService;
import com.ir.service.impl.PageLoadServiceImpl;

/**
 * Servlet implementation class MyServlt
 */

public class CityFill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityFill() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
				System.out.println("in load city data servlet");
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
				ResultSet rs = null;
				PreparedStatement stmt = null;
				 String sql="select * from City where districtId = ?" ;
				 List<City> list = new ArrayList<>();
				try {
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, Integer.parseInt(name));
					System.out.println(stmt.toString());
					rs = stmt.executeQuery();
					
				
					while(rs.next()){
						City city = new City();
						city.setCityId(rs.getInt("cityid"));
						city.setCityName(rs.getString("cityname"));
						list.add(city);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Gson g =new Gson();
				String newList = g.toJson(list); 
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
