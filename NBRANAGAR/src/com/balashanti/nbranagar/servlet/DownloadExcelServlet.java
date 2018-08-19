package com.balashanti.nbranagar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.balashanti.nbranagar.db.AnnexureFormDAO;
import com.balashanti.nbranagar.structure.AnnexureFormStructure;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JRPrintPage;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRXlsExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimpleXlsReportConfiguration;

/**
 * Servlet implementation class DownloadExcelServlet
 */
public class DownloadExcelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<AnnexureFormStructure> formList = null;
	public String jasperFile = "Business Register Schedule";
	public String jasperExcelFile = "business_register_schedule.jasper";
	public String jasperPath = null;
	public FileInputStream fileInputStream = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

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
		jasperPath = this.getServletContext().getRealPath("report");
		JRBeanCollectionDataSource beanCollectionDataSource = new JRBeanCollectionDataSource(formList);
		HashMap<String, Object> reportMap = new HashMap<String, Object>();
		reportMap.put("excelContent", beanCollectionDataSource);
		JasperReport jasperReport;
		try {
			JasperPrint printReport = JasperFillManager.fillReport(jasperPath + "//" + jasperExcelFile, reportMap,
					new JREmptyDataSource());
			JRXlsExporter exporterXLS = new JRXlsExporter();

			exporterXLS.setExporterInput(new SimpleExporterInput(printReport));
			exporterXLS.setExporterOutput(new SimpleOutputStreamExporterOutput(jasperPath + "//" + jasperFile + ".xls"));
			SimpleXlsReportConfiguration xlsReportConfiguration = new SimpleXlsReportConfiguration();
			xlsReportConfiguration.setOnePagePerSheet(false);
			xlsReportConfiguration.setRemoveEmptySpaceBetweenRows(true);
			xlsReportConfiguration.setDetectCellType(false);
			xlsReportConfiguration.setWhitePageBackground(false);
			xlsReportConfiguration.setIgnorePageMargins(false);
			xlsReportConfiguration.setPrintPageBottomMargin(56);
			xlsReportConfiguration.setPrintPageTopMargin(76);
			xlsReportConfiguration.setPrintHeaderMargin(50);
			xlsReportConfiguration.setPrintFooterMargin(36);
			exporterXLS.setConfiguration(xlsReportConfiguration);
			try {
				exporterXLS.exportReport();
			} catch (Throwable e) {
				e.printStackTrace();
			}
			fileInputStream = new FileInputStream(new File(jasperPath + "//" + jasperFile + ".xls"));
			
		} catch (JRException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
