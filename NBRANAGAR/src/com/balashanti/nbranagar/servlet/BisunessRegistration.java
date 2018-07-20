package com.balashanti.nbranagar.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BisunessRegistration
 */
@WebServlet("/BisunessRegistration")
public class BisunessRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BisunessRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	  int stateCode =  Integer.parseInt(request.getParameter("stateCode"));

		
			String state="";  
		try{
		   Class.forName("com.mysql.jdbc.Driver");
		   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nbr_nagar","root", "root");
		   Statement st=conn.createStatement();
		   ResultSet rs=st.executeQuery("select stateName from nbr_nagar where  like '"+stateCode+"%'");
		    while(rs.next())
		    {
		    state =state+"'"+rs.getInt("stateCode")+"',";
		    }
		response.getWriter().println(state);
		}
		 catch (Exception e) {
		    e.printStackTrace();
		 }
		
	}

}
