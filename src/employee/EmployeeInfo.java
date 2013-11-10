package employee;

import java.io.IOException;
import java.sql.Date;
import java.sql.DriverManager;
import java.text.ParseException;
import java.util.Enumeration;
import java.io.PrintStream; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException;

import beans.EmployeeDetails;
import data.EmployeeData;
import data.LogoutData;
import common.Messages;
import common.Utilities;


/**
 * Servlet implementation class LoginInfo
 */
//@WebServlet(name = "logout", urlPatterns = { "/logout" })
public class EmployeeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String strError = null;
	private EmployeeData empdata = null;
	Utilities utl = new Utilities();
	private Messages getMsg = new Messages();
		
	public EmployeeInfo () {
    	try{
    		empdata = new EmployeeData();
    	}catch (Exception e) {
    		e.printStackTrace();
    		if (strError == null)
    			strError = "DB connection failure. Pls. contact adminstrator";
    	}
    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*System.out.println("Emp. Title" + request.getParameter("enamet"));
		System.out.println("Emp. First Name" + request.getParameter("efname"));
		System.out.println("Emp. Last Name" + request.getParameter("elname"));
		System.out.println("Emp. Middle Name" + request.getParameter("emname"));
		System.out.println("Emp. Birth Date" + request.getParameter("ebdate"));*/
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean emp = true;		
		int assign_empid = 0;
		HttpSession session = request.getSession(true);
		// Set the Employee data user bean
		EmployeeDetails empinfo = new EmployeeDetails();
		
		
		empinfo.setEi_addedby(Integer.parseInt((String)session.getAttribute("userid")));
		//Employee Personal Details
		empinfo.setEi_title(request.getParameter("enamet"));
		empinfo.setEi_fname(request.getParameter("efname"));
		empinfo.setEi_mname(request.getParameter("emname"));
		empinfo.setEi_lname(request.getParameter("elname"));
		try {
			empinfo.setEi_bdate(utl.convrt2sqldate(request.getParameter("ebdate")));
		} catch (ParseException e) {			
			e.printStackTrace();
		}
		empinfo.setEi_gender(request.getParameter("esex").charAt(0));
		empinfo.setEi_status(request.getParameter("emstatus").charAt(0));
		try {
			empinfo.setEi_joindate(utl.convrt2sqldate(request.getParameter("ebdate")));
		} catch (ParseException e) {			
			e.printStackTrace();
		}
		try {
			empinfo.setEi_enddate(utl.convrt2sqldate(request.getParameter("ebdate")));
		} catch (ParseException e) {			
			e.printStackTrace();
		}
		empinfo.setEi_role(request.getParameter("erole"));
		empinfo.setEi_branchcode(request.getParameter("ebranchc"));
		empinfo.setEi_email(request.getParameter("eemail"));
		empinfo.setEi_lphone(Long.parseLong(request.getParameter("elphno")));
		empinfo.setEi_mphone(Long.parseLong(request.getParameter("emphno")));
		empinfo.setEi_logincrt(request.getParameter("eclogin").charAt(0));
		empinfo.setEi_noofdep(Integer.parseInt(request.getParameter("enoofdep")));
		empinfo.setEi_religion(request.getParameter("erelig"));
		empinfo.setEi_caste(request.getParameter("ereligc"));
		//Employee Education Details
		//Employee Address Details
		//Employee Bank Details
		//Employee Previous Experience
		//Employee Official Details
		//Employee Identification Details
		
		
		// Create employee
		emp = empdata.createEmployee(empinfo);
		if(emp) {
			strError = getMsg.GetMessage(301);
			session.setAttribute("error", strError);
			//response.sendRedirect(request.getContextPath() +"/employee.jsp");
		}else {
			System.out.println("In Employee Info: " + strError);
			session.setAttribute("error", strError);
			//response.sendRedirect(request.getContextPath() +"/employee.jsp");
		}
		
		/*assign_empid = empdata.getmaxEmpID();
		if (assign_empid == 0){
			strError = getErrorMsg.GetErrorMessages(203);
			session.setAttribute("error", strError);
			//response.sendRedirect(request.getContextPath() +"/employee.jsp");
		}*/
		
		
		//System.out.println("Assigned Emp ID: " + assign_empid);
		System.out.println("Emp. Title: " + request.getParameter("enamet"));
		System.out.println("Emp. First Name: " + request.getParameter("efname"));
		System.out.println("Emp. Last Name: " + request.getParameter("elname"));
		System.out.println("Emp. Middle Name: " + request.getParameter("emname"));
		System.out.println("Emp. Birth Date: " + request.getParameter("ebdate"));
		System.out.println("Emp. Gender: " + request.getParameter("esex"));
		System.out.println("Emp. Martial Status: " + request.getParameter("emstatus"));
		System.out.println("Emp. Dep First Name: " + request.getParameter("efsfname"));
		System.out.println("Emp. Dep Last Name: " + request.getParameter("efslname"));
		System.out.println("Emp. Dep Middle Name: " + request.getParameter("efsmname"));
		System.out.println("Emp. No.of Dependents: " + request.getParameter("edepen"));
		System.out.println("Emp. Religion: " + request.getParameter("erelig"));
		System.out.println("Emp. Caste: " + request.getParameter("ereligc"));
		System.out.println("Emp. Email: " + request.getParameter("eemail"));
		System.out.println("Emp. Landline Phone: " + request.getParameter("elphno"));
		long mphone = Long.parseLong(request.getParameter("emphno"));
		System.out.format("Emp. Mobile Phone: %d\n",mphone);
		System.out.println("Emp. Degree: " + request.getParameter("edegree"));
		System.out.println("Emp. Qualification: " + request.getParameter("eeduqual"));
		System.out.println("Emp. Address Type: " + request.getParameter("eatype1"));
		System.out.println("Emp. Address1 : " + request.getParameter("eaaddr11"));
		System.out.println("Emp. Address2 : " + request.getParameter("eaaddr21"));
		System.out.println("Emp. Area : " + request.getParameter("eaarea1"));
		System.out.println("Emp. City : " + request.getParameter("eacity1"));
		System.out.println("Emp. State : " + request.getParameter("eastate1"));
		System.out.println("Emp. Pincode : " + request.getParameter("eapincde1"));
		System.out.println("Emp. Country : " + request.getParameter("eacntry1"));
		System.out.println("Emp. Address Type: " + request.getParameter("eatype2"));
		System.out.println("Emp. Address1 : " + request.getParameter("eaaddr12"));
		System.out.println("Emp. Address2 : " + request.getParameter("eaaddr22"));
		System.out.println("Emp. Area : " + request.getParameter("eaarea2"));
		System.out.println("Emp. City : " + request.getParameter("eacity2"));
		System.out.println("Emp. State : " + request.getParameter("eastate2"));
		System.out.println("Emp. Pincode : " + request.getParameter("eapincde2"));
		System.out.println("Emp. Country : " + request.getParameter("eacntry2"));
		
		
		String title = request.getParameter("erelig");
		System.out.println(title);
		
		//doGet(request, response);
		
	}
	
	//@Override
	public void destroy() {
	
		super.destroy();
			
		String prefix = getClass().getSimpleName() + "destroy ()";
		ServletContext srvctx = getServletContext();
		
		//databaseManager.disconnectDB();
		System.out.println("Disconnected the database in Servlet Destroy function");
		
		try {
			Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
			
			while(drivers.hasMoreElements()) {
				DriverManager.deregisterDriver(drivers.nextElement());
			}
			
		} catch (Exception e) {
			srvctx.log(prefix + "Exception caught while deregistering JDBC drivers", e);
		}
		srvctx.log("Complete");
	}
}
