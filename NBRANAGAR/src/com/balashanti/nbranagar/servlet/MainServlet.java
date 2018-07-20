package com.balashanti.nbranagar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.balashanti.nbranagar.db.AnnexureFormDAO;
import com.balashanti.nbranagar.structure.AnnexureFormStructure;

/**
 * Servlet implementation class LoginServlet
 */
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<AnnexureFormStructure> formList1 = null;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MainServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		AnnexureFormStructure formDetails = null;
		 String id = request.getParameter("id");
		 String type = request.getParameter("type");
		 String name="";
		 AnnexureFormDAO dao = new AnnexureFormDAO();
			try {
				name = dao.getState(id,type);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		    response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
		    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
//		    String name="Aurangabad";
		    response.getWriter().write(name);  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username.equals("admin") && password.equals("admin")) {
			request.getRequestDispatcher("/HomeServlet").forward(request, response);
			//response.sendRedirect("home.jsp");
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.include(request, response);
		}
	}
	
	public List<AnnexureFormStructure> getFormList() {
		return formList1;
	}

	/**
	 * @param formList
	 *            the formList to set
	 */
	public void setFormList(List<AnnexureFormStructure> formList) {
		this.formList1 = formList;
	}

}
