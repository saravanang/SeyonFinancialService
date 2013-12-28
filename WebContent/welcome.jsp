<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Welcome</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/cssmenu.css" />
<link rel="stylesheet" type="text/css" href="css/customerinfo.css"/>
<link rel="stylesheet" type="text/css" href="css/dhtmlxcalendar.css">
<link rel="stylesheet" type="text/css" href="css/dhtmlxcalendar_dhx_skyblue.css">
<script type="text/javascript" src="scripts/jquery-1.9.1.js"></script>
<script type="text/javascript" src="scripts/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="scripts/jquery.validate.js"></script>
<script type="text/javascript" src="scripts/jquery.validate.min.js"></script>
<script type="text/javascript" src="scripts/additional-methods.js"></script>
<script type="text/javascript" src="scripts/additional-methods-min.js"></script>
<script type="text/javascript" src="scripts/formvalidation.js"></script>
<script type="text/javascript" src="scripts/dhtmlxcalendar.js"></script>
<script type="text/javascript" src="scripts/common.js"></script>
<script type="text/javascript" src="scripts/module.js"></script>
</head>
<body>
<c:set var="error" scope="request" value="${null}"/>
<% if (session.getAttribute("userid") != null) { %>
	<div id="container">
		<div id="header">
			<div class="holder">
				<span>
					<a class="logo-img" title="Seyon Finacial Service" href="./welcome.jsp"><img alt="Seyon Financial Service" src="img/din-appopti.jpg"></img></a>
				</span>
				<p align="right"><b>Corp. Branch Name:<font color="#C30000">CHNMAIN</font>&nbsp;&nbsp;Corp. Branch Code:<font color="#C30000">001</font><br><br></b></p>
				<ul><h1 class="comtitleh1">Financial Service</h1></ul>										
				<ul id="header-top" class="header-top-nav-right">
					<!-- li>Emp ID:<c:out value="${logindetails.li_userid}"/></li>	
					<li>Emp Name:<c:out value="${empdetails.ei_fname} ${empdetails.ei_mname} ${empdetails.ei_lname}"/></li-->
					<li>
						<label>Emp ID: </label>
						<label class="value"><%= session.getAttribute("userid") %></label>
					</li>
					<li>
						<label>Emp Name: </label>
						<label class="value"><%= session.getAttribute("username") %></label>
					</li>
					<li>
						<label>Last Logged: </label>
						<label class="value"><%= session.getAttribute("lstlogin") %></label>
					<li>
					<li>
						<label>Role:</label>
						<% if (session.getAttribute("erole") != null) { %>
							<label class="value"><%= session.getAttribute("erole") %></label>
						<% } else {%>
							<label class="value">Not Set</label>
						<%} %>
					</li>
					<li><a href="viewEmployee?getempid=<%=session.getAttribute("userid")%>">View</a></li>					
				</ul>
				<div id='cssmenu'>
				<ul>
				   <li class='has-sub'><a href=#><span>Customer</span></a>
				   		<ul>
				        	 <li class='has-sub'><a href='#'><span>Add</span></a>
				            	<ul>
				            	   	<li><a href='cpersonaldet.jsp'><span>New Customer</span></a></li>
				            	</ul>
				          	</li>
				          	<li class='has-sub'><a href='#'><span>Update</span></a>
				          		<ul>
				          			<li><a href='#'><span>Personal Details</span></a></li>
				          			<li><a href='#'><span>Address Details</span></a></li>
				          		</ul>
				          	</li>	
				          	<li class='last'><a href='scustomer.jsp'><span>Search</span></a></li>
				   		</ul>
				   	</li>				     
				   <li class='has-sub'><a href='#'><span>Employee</span></a>
				      <ul>
				         <li class='has-sub'><a href='#'><span>Add</span></a>
				            <ul>
				               <li><a href='employee.jsp'><span>New Employee</span></a></li>
				               <li><a href='#'><span>Bank Details</span></a></li>
				               <li><a href=#><span>Login Access</span></a></li>
				               <li><a href=#><span>Education Details</span></a></li>
				               <li class='last'><a href='#'><span>Emergency Details</span></a></li>
				            </ul>
				         </li>
				         <li class='has-sub'><a href='#'><span>Update</span></a>
				            <ul>
				            	<li><a href='#'><span>Personal Details</span></a></li>
				               <li><a href='#'><span>Address Details</span></a></li>
				               <li><a href=#><span>Login Access</span></a></li>
				               <li><a href=#><span>Education Details</span></a></li>
				               <li class='last'><a href='#'><span>Bank Details</span></a></li>
				            </ul>
				         </li>
				         <li><a href='searchemployee.jsp'><span>Search</span></a></li>
				      </ul>
				   </li>
				   <li class="sep"><a href="admin.jsp">Admin</a></li>	
				   <li><a href="reports.jsp">Reports</a></li>	
				   <li class='last'><a href='logout'><span>Sign Out</span></a></li>
				</ul>
				 <form id="search_form" action="viewEmployee" method="post" > 
					<ul class="search">
						<li>							
							<input type="text" id="getempid" name="getempid" size="12" tabindex="0" placeholder="Employee ID"/>
							<input id="saveForm" name="saveForm" class="btTxt submit search" type="submit" tabindex="1" value="Search"/>
		           		</li>
					</ul>
				</form>
				</div>
			</div>
		</div>
	</div>	
	<%} else { %>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%} %>	
</body>
</html>
