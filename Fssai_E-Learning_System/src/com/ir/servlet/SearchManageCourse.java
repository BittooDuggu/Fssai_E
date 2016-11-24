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
/**
 * Servlet implementation class DeleteState
 */

public class SearchManageCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchManageCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("hiiiiiiiiiiiiiiiii"+request.getParameter("total"));
        PrintWriter out = response.getWriter();
		String name = (request.getQueryString());
		System.out.println("passing name   :" + name);
		String[] totalConnected = name.split("&");
		String courseType,courseName;
		
		courseType = (totalConnected[0].split("="))[1];
		courseName = (totalConnected[1].split("="))[1];
		
		
		String[] coursenameA  = courseName.split("%20");
		String cn = "";
		for(int i = 0 ; i < coursenameA.length ; i++){
			cn = cn + coursenameA[i] + " ";
		}
		String fcn = cn.substring(0, cn.length()-1);
		System.out.println(fcn.length());
		System.out.println("courseType  "+courseType);
		System.out.println("courseName    "+   cn);
		
		CourseName courseName1 = new CourseName();
		Configuration conf = new Configuration();
		conf.configure("/hibernate.cfg.xml");
		SessionFactory sf = conf.buildSessionFactory();
		Session session = sf.openSession();
		String sql ="select ct.coursetype , cn.coursename , cn.courseduration , cn.paidunpaid , cn.modeoftraining , cn.status ,cn.coursenameid"+
					" from coursename as cn inner join coursetype as ct on ct.coursetypeid= cn.coursetypeid "+
					" where cn.coursetypeid='"+ Integer.parseInt(courseType) +"' and cn.coursename= '"+ fcn+"'";
		
		Query query = session.createSQLQuery(sql);
		List<CourseName> list = query.list();
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
