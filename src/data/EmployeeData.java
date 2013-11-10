package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.Utilities;

import database.DatabaseManager;
import beans.EmployeeDetails;

public class EmployeeData {
	
	private static Connection dbconn;
	DatabaseManager databaseManager = new DatabaseManager();
	Utilities utl = new Utilities();
	
	public EmployeeData(){
		if (dbconn == null) {
			try {
				dbconn = DatabaseManager.getConnection();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public EmployeeDetails getEmployeeData(String empID){
		
		EmployeeDetails empinfo = new EmployeeDetails();
		
		if(dbconn != null) {
			String strFetchEmp = "select * from empinfo where ei_empid ='" + empID + "'";
			try {
				System.out.println(strFetchEmp);
				PreparedStatement prepstat =  dbconn.prepareStatement(strFetchEmp);
				ResultSet empdatars = prepstat.executeQuery();
				if (empdatars.next()) {
					empinfo.setEi_empid(empdatars.getInt("ei_empid"));
					empinfo.setEi_fname(empdatars.getString("ei_fname"));
					empinfo.setEi_lname(empdatars.getString("ei_lname"));
					empinfo.setEi_mname(empdatars.getString("ei_mname"));
					empinfo.setEi_status(empdatars.getString("ei_status").charAt(0));		
					System.out.println(empdatars.getString("ei_fname"));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return empinfo;	
	}
	
	public int getmaxEmpID(){
		int emp_id = 0;
		
		if(dbconn != null) {
			String strgetEmpID = "select MAX(ei_empid) as max_empid from empinfo";
			try {
				PreparedStatement prepstat =  dbconn.prepareStatement(strgetEmpID);
				ResultSet empidrs = prepstat.executeQuery();
				System.out.println(strgetEmpID);
				if (empidrs.next()) {
					emp_id = Integer.parseInt(empidrs.getString("max_empid")) + 1;
					System.out.println("Max Empid is: " + emp_id);
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return emp_id;			
	}	
	
	public boolean createEmployee(EmployeeDetails empdata) {
		// Create a new employee
		if(dbconn != null) {
			String strcrtEmp = "insert into empinfo (ei_empid,"
													+ "ei_title,"
													+ "ei_fname,"
													+ "ei_mname,"
													+ "ei_lname,"
													+ "ei_bdate,"
													+ "ei_gender,"
													+ "ei_status,"
													+ "ei_joindate,"
													+ "ei_enddate,"
													+ "ei_veristatus,"
													+ "ei_role,"
													+ "ei_branchcode,"
													+ "ei_email,"
													+ "ei_lphone,"
													+ "ei_mphone,"
													+ "ei_logincrt,"
													+ "ei_noofdep,"
													+ "ei_religion,"
													+ "ei_caste,"
													+ "ei_dateins,"												
													+ "ei_addedby) "
										+ "values(" + getmaxEmpID() + ",'"
													+ empdata.getEi_title() + "','" 
													+ empdata.getEi_fname() + "','"
													+ empdata.getEi_mname() + "','"
													+ empdata.getEi_lname() + "','"
													+ empdata.getEi_bdate() + "','"
													+ empdata.getEi_gender() + "','"
													+ empdata.getEi_status() + "','"
													+ empdata.getEi_joindate() + "','"
													+ empdata.getEi_enddate() + "','"
													+ empdata.getEi_veristatus() + "','"
													+ empdata.getEi_role() + "','"
													+ empdata.getEi_branchcode() + "','"
													+ empdata.getEi_email() + "',"
													+ empdata.getEi_lphone() + ","
													+ empdata.getEi_mphone() + ",'"
													+ empdata.getEi_logincrt() + "',"
													+ empdata.getEi_noofdep() + ",'"
													+ empdata.getEi_religion() +"','"
													+ empdata.getEi_caste() + "','"
													+ utl.GetTimeStamp() + "','"
													+ empdata.getEi_addedby() + "')";
			
			System.out.println("The insert string is: " + strcrtEmp);
			try{
				PreparedStatement prep = dbconn.prepareStatement(strcrtEmp);
				prep.executeUpdate();					
			}catch (SQLException e) {
				e.printStackTrace();			
			}
		}		
		return true;
	}
}
