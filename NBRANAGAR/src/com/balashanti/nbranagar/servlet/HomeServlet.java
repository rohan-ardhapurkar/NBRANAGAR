package com.balashanti.nbranagar.servlet;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.balashanti.nbranagar.db.AnnexureFormDAO;
import com.balashanti.nbranagar.structure.AnnexureFormStructure;

/**
 * Servlet implementation class HomeServlet
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<AnnexureFormStructure> formList = null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AnnexureFormDAO dao = new AnnexureFormDAO();
		try {
			formList = dao.showAllRecords();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("companyList", formList);
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}

	/**
	 * @return the formList
	 */
	public List<AnnexureFormStructure> getFormList() {
		return formList;
	}

	/**
	 * @param formList
	 *            the formList to set
	 */
	public void setFormList(List<AnnexureFormStructure> formList) {
		this.formList = formList;
	}
}