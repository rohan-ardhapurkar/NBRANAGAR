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
			
			// Insert query goes here
			String insertQuery = "insert into nbr_registration("
					+ "state_name,district_name,tehsil_name,village_name,ward,population,office,comp_name,"
					+ "comp_address,addr_lane,addr_locality,addr_pincode,addr_phone,addr_email,comp_pan,comp_tan,nic_code,"
					+ "year_of_operation,ownership_code,no_of_persons,registration_type)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			// insert here insert into query
			statement = conn.prepareStatement(insertQuery);
			
			// set parameters from the AnnexureFormStructure to be inserted into the table
			statement.setString(1, form.getStateName());
			statement.setString(2, form.getDistrictName());
			statement.setString(3, form.getTehsil());
			statement.setString(4, form.getVillage());
			statement.setString(5, form.getWard());
			statement.setString(6, form.getPopulation());
			statement.setString(7, form.getOffice());
			statement.setString(8, form.getName());
			statement.setString(9, form.getAddress());
			statement.setString(10, form.getLaneOrStreet());
			statement.setString(11, form.getLocality());
			statement.setString(12, form.getPincode());
			statement.setString(13, form.getPhoneNo());
			statement.setString(14, form.getEmailId());
			statement.setString(15, form.getPan());
			statement.setString(16, form.getTan());
			statement.setString(17, form.getNicCode());
			statement.setString(18, form.getYearOfOperation());
			statement.setString(19, form.getOwnershipCode());
			statement.setString(20, form.getTotalEmployedMembers());
			statement.setString(21, form.getRegistrationNumber());
			
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
	@SuppressWarnings("unused")
	public String getState(String id,String type) throws SQLException {
		AnnexureFormStructure formDetails = null;
		conn = DBConnection.connect();
		String name="";
		if (conn != null) {
			// select query goes here
			if(type.equals("state"))
			{
				statement = conn.prepareStatement("select state_name from nbr_states where state_code = " + id);
				// get the data in result-set
				rs = statement.executeQuery();
				
				// store the data into AnnexureFormStructure as per index from the table
				while (rs.next()) {
					name = rs.getString(1);
				}
			}
			else if(type.equals("district"))
			{
				statement = conn.prepareStatement("select dist_name from nbr_districts where dist_code = " + id);
				// get the data in result-set
				rs = statement.executeQuery();
				// store the data into AnnexureFormStructure as per index from the table
				while (rs.next()) {
					name = rs.getString(1);
				}
			}
			else if(type.equals("village"))
			{
				statement = conn.prepareStatement("select village_name from nbr_village where village_code = " + id);
				// get the data in result-set
				rs = statement.executeQuery();
				// store the data into AnnexureFormStructure as per index from the table
				while (rs.next()) {
					name = rs.getString(1);
				}
			}
			else if(type.equals("taluka"))
			{
				statement = conn.prepareStatement("select taluka_name from nbr_taluka where taluka_code = " + id);
				// get the data in result-set
				rs = statement.executeQuery();
				// store the data into AnnexureFormStructure as per index from the table
				while (rs.next()) {
					name = rs.getString(1);
				}
			}
			return name;
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
			statement = conn.prepareStatement("select comp_name,comp_address,state_name,district_name from nbr_registration");

			rs = statement.executeQuery();

			while (rs.next()) {
				AnnexureFormStructure form = new AnnexureFormStructure();
				form.setName(rs.getString(1));
				form.setAddress(rs.getString(2));
				form.setStateName(rs.getString(3));
				form.setDistrictName(rs.getString(4));
				allRecords.add(form);
			}
		}
		return allRecords;
	}
}
