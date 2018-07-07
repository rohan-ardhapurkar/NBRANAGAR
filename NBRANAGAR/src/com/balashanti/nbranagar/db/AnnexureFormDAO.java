package com.balashanti.nbranagar.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.balashanti.nbranagar.structure.AnnexureFormStructure;

public class AnnexureFormDAO {
	private Connection conn = null;
	private PreparedStatement statement = null;
	private ResultSet rs = null;
	private List<AnnexureFormStructure> allRecords = null;

	/**
	 * This method is to insert the record in the user table
	 * 
	 * @param form
	 * @return true if inserted
	 * @throws SQLException
	 */
	public boolean isRecordInsert(AnnexureFormStructure form) throws SQLException {
		conn = DBConnection.connect(); // connect to the database
		if (conn != null) {

			// insert here insert into query
			statement = conn.prepareStatement("");
			// set parameters from the AnnexureFormStructure to be inserted into the table
			statement.setInt(1, form.getStateCode());

			// get the result as integer whether data is inserted or not
			int result = statement.executeUpdate();
			if (result > 0)
				return true;
			else
				return false;
		} else
			return false;
	}

	/**
	 * This method is used to get the entered details as per userId
	 * 
	 * @param userId
	 * @return annexureFormStructure
	 * @throws SQLException
	 */
	public AnnexureFormStructure showForm(int userId) throws SQLException {
		AnnexureFormStructure formDetails = null;
		conn = DBConnection.connect();
		if (conn != null) {
			// select query goes here
			statement = conn.prepareStatement("select * from where user_id = " + userId);

			// get the data in result-set
			rs = statement.executeQuery();

			// store the data into AnnexureFormStructure as per index from the table
			while (rs.next()) {

			}

			return formDetails;
		} else
			return null;

	}

	/**
	 * This method is to return all the records from present table
	 * 
	 * @return allRecords
	 * @throws SQLException
	 */
	public List<AnnexureFormStructure> showAllRecords() throws SQLException {
		allRecords = new ArrayList<AnnexureFormStructure>();
		conn = DBConnection.connect();
		if (conn != null) {
			statement = conn.prepareStatement("select * from ");

			rs = statement.executeQuery();

			while (rs.next()) {

			}
		}
		return allRecords;
	}
}
