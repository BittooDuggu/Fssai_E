package com.ir.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.ir.model.CourseName;
import com.ir.model.State;
/**
 * Servlet implementation class DeleteState
 */

public class SearchCity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchCity() {
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
		System.out.println("search city servlet");
		Configuration conf = new Configuration();
		conf.configure("/hibernate.cfg.xml");
		SessionFactory sf = conf.buildSessionFactory();
		Session session = sf.openSession();

		String sql = "select d.districtname , c.cityname , c.status , d.districtId  , c.cityId from city as c "+
					" inner join district d on d.districtid = c.districtid "+
					" where c.cityname = '"+ name+"'";
		Query query = session.createSQLQuery(sql);
		
		//Query query = session.createSQLQuery(sql);
		//Query query = session.createQuery("from State where stateName = '"+ name+"'");
		List<State> list = query.list();
		System.out.println(list.size());
		session.close();
		String newList = null ;
		if(list.size() > 0 || list != null){
			System.out.println("data selected finally  " );
			System.out.println(list);
			Gson g =new Gson();
			newList = g.toJson(list); 
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
