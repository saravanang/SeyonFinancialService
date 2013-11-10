<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Add Employee Info</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/customerinfo.css" />
<link rel="stylesheet" type="text/css" href="css/dhtmlxcalendar.css">
<link rel="stylesheet" type="text/css" href="css/dhtmlxcalendar_dhx_skyblue.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
<script type="text/javascript" src="scripts/jquery.validate.js"></script>
<script type="text/javascript" src="scripts/formvalidation.js"></script>
<script type="text/javascript" src="scripts/dhtmlxcalendar.js"></script>
<script type="text/javascript" src="scripts/common.js"></script>
<!--  script>var myCalendar;
	function doOnLoad(){
		myCalender = new dhtmlXCalendarObject({input: "calendar_input",button: "calendar_icon"});
		//myCalender.show();
		//myCalender.hideTime();
		//myCalender.setDate(date);
	}
</script -->
<!-- script type="text/javascript">

function checkit()
{
	// In textstring I gather the data that are finally written to the textarea.

	var textstring = '';

	// First of all, have all the text boxes been filled in?
	// This part is treated in the normal page.
	// I put all boxes and their values in textstring

	for (i=0;i<4;i++) {
		var box = document.forms['example'].elements[i];
		if (!box.value) {
			alert('You haven\'t filled in ' + box.name + '!');
			box.focus()
			return;
		}
		textstring += box.name + ': ' + box.value + '\n';
	}

	// Get value of the 'Why' radio buttons.

	user_input = '';
	for (i=0;i<document.forms['example'].why.length;i++) {
		if (document.forms['example'].why[i].checked) {
			user_input = document.forms['example'].why[i].value;
		}
	}
	textstring += 'Why: ' + user_input + '\n';

	// Get value of the 'How' select box.

	user_input = document.example.refer.options[document.example.refer.selectedIndex].value
	textstring += 'How: ' + user_input + '\n';

	// See what checkboxes are checked. They are elements 9-12

	textstring += 'More info: ';
	for (i=9;i<13;i++) {
		if (document.example.elements[i].checked) {
			textstring += document.example.elements[i].name + ' ';
		}
	}

	// Write textstring to the textarea.

	document.forms['example'].output.value = textstring;
}

</script -->
	
</head>
<body onload="doOnLoad();">
<% if (session.getAttribute("userid") != null) { %>
	<jsp:include page="welcome.jsp"></jsp:include>
	<div id="body-header">
		<div id="container">
			<label id="page-header">Add Employee Information</label>			         						
		</div>
		<!-- <form id="entry_form" class="form-label topLabel " target="submit_form_here" action="addEmployee" method="post" enctype="multipart/form-data" onsubmit="submitForm(this);"> -->
		<form id="entry_form" action="addEmployee" method="post" > 
			<ul>
				<fieldset class="noborder">
					<li class="buttons">
				       	<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Create Employee"/>
	           		</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Personal Details</legend>
					<!-- li id="frmEName" class="name notranslate name" -->
					<li id="frmEName">
						<div>
							<span>
								<label class="desc" id="enametlbl" for="ename">Employee</label>
								<select id="enamet" class="field select fn" name="enamet" tabindex="1" > 
									<option value=""></option>
									<option value="MR">Mr.</option>
									<option value="MS">Ms.</option>
									<option value="MRS">Mrs.</option>
								</select>
									<label for="ename">Title</label>
							</span>
							<span>
								<label class="desc" id="efnamelbl" for="efname">Name</label>
								<input id="efname" name="efname" class="field text fn" value="" size="45" tabindex="2"  type="text">
								<label for="efname">First</label>							
							</span>
							<span>
								<br><input id="elname" name="elname" class="field text ln" value="" size="45" tabindex="3"  type="text">
								<label for="elname">Last</label>
							</span>
							<span>
								<br><input id="emname" name="emname" class="field text" value="" size="10" tabindex="4"  type="text">
								<label for="emname">Middle</label>
							</span>
						</div>
						<span class="sep">
								<label class="desc" id="ebdatelbl" for="ebdate">Birth Date</label>
								<input type="text" id="ebdate" name="ebdate" size="12" tabindex="5"/>
								<label for="ebdate">DD/MM/YYYY</label>
						</span>
						<!-- span>
								<br><img id="calender_icon" src="img/icons/calendar.gif" alt="Pick" border="0" />														
						</span>
						<span class="symbol"><br>/</span>
						<span>
							<label class="desc" id="lblBdate" for="fldBdate">Date</label>
							<input id="fldBDmon" name="fldBDmon" type="text" class="field text" value="" size="2" maxlength="2" tabindex="6"  />
							<label for="lblBDmon">MM</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
						 	<br><input id="fldBDyr" name="fldBDyr" type="text" class="field text" value="" size="4" maxlength="4" tabindex="7"  />
							<label for="fldBDyr">YYYY</label>
						</span>
						<span id="cal18">
							<br><img id="pick18" class="datepicker" src="/img/icons/calendar.png" alt="Pick" />
						</span-->
						<span class="sep">
							<label class="desc" id="esexlbl" for="esex">Gender</label>
							<input id="esexm" name="esex" type="radio" class="field text" value="M" tabindex="6"  />  M
							<input id="esexf" name="esex" type="radio" class="field text" tabindex="7" value="F" />  F
						</span>					
						<span class="sep">
							<label class="desc" id="emstatus" for="emstatus">Martial Status</label>						
							<input id="emstatuss" name="emstatus" type="radio" class="field text" value="S" tabindex="8" />  Single
							<input id="emstatusm" name="emstatus" type="radio" class="field text" value="M" tabindex="9" />  Married							
						</span>		
					</li>	
					<li id="frmFSName" class="name notranslate name">						 
						<span>
							<label class="desc" id="efsnametlbl" for="efsnamet">Father's / </label>
							<select id="efsnamet" class="field select fn" name="efsnamet" tabindex="10"> 
							<option value=""></option>
							<option value="MR">Mr.</option>
							<option value="MS">Ms.</option>
							<option value="MRS">Mrs.</option>
						</select>
							<label for="efsnamet">Title</label>
						</span>
						<span>
							<label class="desc" id="efsfname" for="efsfname">Spouse Name</label>
							<input id="efsfname" name="efsfname" class="field text fn" value="" size="45" tabindex="11"  type="text">
							<label for="efsfname">First</label>
						</span>
						<span>
							<br><input id="efslname" name="efslname" class="field text ln" value="" size="45" tabindex="12"  type="text">
							<label for="efslname">Last</label>
						</span>
						<span>
							<br><input id="efsmname" name="efsmname" class="field text" value="" size="10" tabindex="13" type="text"><br>
							<label for="efsmname">Middle</label>
						</span>
						<span class="sep">
							<label class="desc" id="enoofdeplbl" for="enoofdep">Dependents</label>
							<input id="enoofdep" name="enoofdep" type="text" class="field text" value="" size="2" maxlength="2" tabindex="14" /><br><br>						
						</span>	
						
						<span class="sep">
							<label class="desc" id="ereliglbl" for="erelig">Religion</label>
							<input id="erelig" name="erelig" type="text" class="required sepecialChar" value="" size="10" maxlength="10" tabindex="15" />
							<label for="erelig">Name</label>							
						</span>									
						<span>
							<label class="desc" id="ereligclbl" for="ereligc">Caste</label>
							<input id="ereligbsc" name="ereligc" type="radio" class="field text" value="SC" tabindex="16" /> SC
							<input id="ereligbst" name="ereligc" type="radio" class="field text" value="ST" tabindex="17" /> ST
							<input id="ereligbobc" name="ereligc" type="radio" class="field text" value="OBC" tabindex="18" /> OBC
							<input id="ereligbbc" name="ereligc" type="radio" class="field text" value="BC" tabindex="18" /> BC
							<input id="ereligboth" name="ereligc" type="radio" class="field text" value="OTH" tabindex="19" /> Others
						</span>									
					</li>
					<li>
						<span>
							<label class="desc" id="eemiallbl" for="eemail">Email Address</label>
							<input id="eemail" name="eemail" class="field text ln" value="" size="45" tabindex="12"  type="text">
							<label for="eemail">Email</label>
						</span>
						<span class="sep">
							<label class="desc" id="emphnolbl" for="emphno">Mobile</label>
							<select id="emphnoc" name="emphnoc" class="field select" tabindex="20">
								<option value="IN">+91</option>
							</select>					
							<input id="emphno" name="emphno" class="field text ln" value="" size="15" tabindex="12" maxlength="10" type="text">
							<label for="emphno">Country</label>
						</span>
						<span class="sep">
							<label class="desc" id="elphnolbl" for="elphno">Landline</label>
							<select id="elphnoc" name="elphnoc" class="field select" tabindex="20">
								<option value="IN">+91</option>
							</select>
							<label for="elphno">Country</label>
						</span>
						<span>
							<br><input id="elphnoa" name="elphnoa" class="field text ln" value="" size="4" tabindex="12" maxlength="2" type="text">
							<label for="elphnoa">Area</label>
						</span>
						<span>
							<br><input id="elphno" name="elphno" class="field text ln" value="" size="15" tabindex="12" maxlength="10" type="text">
							<label for="elphno">Number</label>
						</span>
					</li>
				</fieldset>
				
				<fieldset class="marginleft">
					<legend class="desc font">Address Details</legend>
					<li id="frmEAddrP" class="name notranslate name">
						<span>
							<label class="desc" id="eatype1lbl" for="eatype1">Current Add</label>
							<select id="eatype1" class="field select fn" name="eatype1"> 
								<option selected="selected" value="CURR">Current</option>								
							</select>
								<label for="eatype1">Type</label>
						</span>
						<span>							
							<label class="desc" id="eaaddr11lbl" for="eaaddr11">ress</label>
							<input id="eaaddr11" name="eaaddr11" type="text" class="field text" value="" size="50" maxlength="50"  />
							<label for="eaaddr11">Address 1</label>
						</span>
						<span>
							<br><input id="eaaddr21" name="eaaddr21" type="text" class="field text" value="" size="50" maxlength="50"  />
							<label for="eaaddr21">Address 2</label>
						</span>
						<span>
							<br><input id="eaarea1" name="eaarea1" type="text" class="field text" value="" size="30" maxlength="30"  />
							<label for="eaarea1">Area</label>
						</span>
						<span>
							<br><input id="eacity1" name="eacity1" type="text" class="field text" value="" size="30" maxlength="30"  />
							<label for="eacity1">City</label>
						</span>
						<li>
							<span>
								<select id="eastate1" class="field select fn" name="eastate1">
									<option selected="selected" value="">-----  Select  -----</option>
									<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
									<option value="IN001">ANDHRA PRADESH</option>
									<option value="IN002">ARUNACHAL PRADESH</option>
									<option value="IN003">ASSAM</option>
									<option value="IN004">BIHAR</option>
									<option value="IN030">CHANDIGARH</option>
									<option value="IN005">CHATTISGARH</option>
									<option value="IN031">DADRA AND NAGAR HAVELI</option>
									<option value="IN032">DAMAN AND DIU</option>
									<option value="IN034">DELHI</option>
									<option value="IN006">GOA</option>
									<option value="IN007">GUJARAT</option>
									<option value="IN008">HARYANA</option>
									<option value="IN009">HIMACHAL PRADESH</option>
									<option value="IN010">JAMMU AND KASHMIR</option>
									<option value="IN011">JHARKHAND</option>
									<option value="IN012">KARNATAKA</option>
									<option value="IN013">KERALA</option>
									<option value="IN033">LAKSHADWEEP</option>
									<option value="IN014">MADHYA PRADESH</option>
									<option value="IN015">MAHARASHTRA</option>
									<option value="IN016">MANIPUR</option>
									<option value="IN017">MEGHALAYA</option>
									<option value="IN018">MIZORAM</option>
									<option value="IN019">NAGALAND</option>
									<option value="IN020">ORISSA</option>
									<option value="IN035">PONDICHERRY</option>
									<option value="IN021">PUNJAB</option>
									<option value="IN022">RAJASTHAN</option>
									<option value="IN023">SIKKIM</option>
									<option value="IN024">TAMIL NADU</option>
									<option value="IN025">TRIPURA</option>
									<option value="IN026">UTTAR PRADESH</option>
									<option value="IN027">UTTARAKHAND</option>
									<option value="IN028">WEST BENGAL</option>	
								</select>							
								<label for="eastate1">State</label>
							</span>
							<span>
								<input id="eapincde1" name="eapincde1" type="text" class="field text" value="" size="16" maxlength="6"  />
								<label for="eapincde1">Pincode</label>
							</span>
							<span>
								<select id="eacntry1" class="field select fn" name="eacntry1">
									<option selected value="CNTRY01">INDIA</option>
								</select>
								<label for="eacntry1">Country</label>
							</span>
						</li>
					</li>
					<li id="frmEAddrP" class="name notranslate name">
						<span>
							<label class="desc" id="eatype2" for="eatype2">Permanent</label>
							<select id="eatype2" class="field select fn" name="eatype2"> 
								<option selected="selected" value="PRM">Perm</option>								
							</select>
								<label for="eatype2">Type</label>
						</span>
						<span>					
							<label class="desc" id="eaaddr12lbl" for="eaaddr12">Address</label>					
							<input id="eaaddr12" name="eaaddr12" type="text" class="field text" value="" size="50" maxlength="50"  />
							<label for="eaaddr12">Address 1</label>							
						</span>
						<span>
							<label class="desc padback" id="eaddsamelbl" for="eaddsame">Same as Above&nbsp;&nbsp;
							<input id="eaddsame" name="eaddsame" type="checkbox" /></label>
							<input id="eaaddr22" name="eaaddr22" type="text" class="field text" value="" size="50" maxlength="50"  />
							<label for="eaaddr22">Address 2</label>
						</span>
						<span>
							<br><input id="eaarea2" name="eaarea2" type="text" class="field text" value="" size="30" maxlength="30"  />
							<label for="eaarea2">Area</label>
						</span>
						<span>
							<br><input id="eacity2" name="eacity2" type="text" class="field text" value="" size="30" maxlength="30"  />
							<label for="eacity2">City</label>
						</span>
						<li>
							<span>
								<select id="eastate2" class="field select fn" name="eastate2">
									<option selected="selected" value="">-----  Select  -----</option>
									<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
									<option value="IN001">ANDHRA PRADESH</option>
									<option value="IN002">ARUNACHAL PRADESH</option>
									<option value="IN003">ASSAM</option>
									<option value="IN004">BIHAR</option>
									<option value="IN030">CHANDIGARH</option>
									<option value="IN005">CHATTISGARH</option>
									<option value="IN031">DADRA AND NAGAR HAVELI</option>
									<option value="IN032">DAMAN AND DIU</option>
									<option value="IN034">DELHI</option>
									<option value="IN006">GOA</option>
									<option value="IN007">GUJARAT</option>
									<option value="IN008">HARYANA</option>
									<option value="IN009">HIMACHAL PRADESH</option>
									<option value="IN010">JAMMU AND KASHMIR</option>
									<option value="IN011">JHARKHAND</option>
									<option value="IN012">KARNATAKA</option>
									<option value="IN013">KERALA</option>
									<option value="IN033">LAKSHADWEEP</option>
									<option value="IN014">MADHYA PRADESH</option>
									<option value="IN015">MAHARASHTRA</option>
									<option value="IN016">MANIPUR</option>
									<option value="IN017">MEGHALAYA</option>
									<option value="IN018">MIZORAM</option>
									<option value="IN019">NAGALAND</option>
									<option value="IN020">ORISSA</option>
									<option value="IN035">PONDICHERRY</option>
									<option value="IN021">PUNJAB</option>
									<option value="IN022">RAJASTHAN</option>
									<option value="IN023">SIKKIM</option>
									<option value="IN024">TAMIL NADU</option>
									<option value="IN025">TRIPURA</option>
									<option value="IN026">UTTAR PRADESH</option>
									<option value="IN027">UTTARAKHAND</option>
									<option value="IN028">WEST BENGAL</option>	
								</select>							
								<label for="eastate2">State</label>
							</span>
							<span>
								<input id="eapincde2" name="eapincde2" type="text" class="field text" value="" size="16" maxlength="6"  />
								<label for="eapincde2">Pincode</label>
							</span>
							<span>
								<select id="eacntry2" class="field select fn" name="eacntry2">
									<option selected value="CNTRY01">INDIA</option>
								</select>
								<label for="eacntry2">Country</label>
							</span>
						</li>
					</li>						
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Education Details</legend>
					<li id="frmEEduDet" class="name notranslate name">
						<span>
							<label class="desc" id="edegreelbl" for="edegree">Education</label>
							<select id="edegree" name="edegree" class="field select" tabindex="20">
								<option selected value="">Select</option>
								<option value="UG">Under Gradutate</option>
								<option value="G">Graduate</option>
								<option value="PG">Post Graduate</option>
								<option value="OT">Others</option>
							</select>
							<label for="edegree">Degree</label>								
						</span>
						<span class="sep">
							<label class="desc" id="eeduquallbl" for="eeduqual">Qualification</label>
							<input id="eeduqual" name="eeduqual" type="text" class="field text" value="" size="30" maxlength="30" tabindex="21" /><br><br>
						</span>	
					</li>					
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Bank Information</legend>
					<li id="frmebank" class="name notranslate name">						
						<span >
							<label class="desc" id="ebactypelbl" for="ebactype">Account Type</label>
							<select id="ebactype" class="field select fn" name="ebactype">
								<option selected="selected" value="">-----  Select  -----</option>
								<option value="CHK">Checking</option>
								<option value="SAV">Savings</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="ebacnolbl" for="ebacno">Bank Account No.</label>
							<input id="ebacno" name="ebacno" type="text" class="field text" value="" size="30" maxlength="30"  />
						</span>
						<span class="sep">
							<label class="desc" id="ebifsclbl" for="ebifsc">Bank IFSC</label>
							<input id="ebifsc" name="ebifsc" type="text" class="field text" value="" size="30" maxlength="10"  />							
						</span>	
					</li>
					<li>
						<span>
							<label class="desc" id="ebnamelbl" for="ebname">Bank Details</label>
							<select id="ebname" class="field select fn" name="ebname"> 
								<option selected="selected" value="">-----  Select  -----</option>
								<option value="IND07">ABHYUDAYA CO-OP BANK LTD</option>
								<option value="IND11">ABU DHABI COMMERCIAL BANK</option>
								<option value="IND09">ALLAHABAD BANK</option>
								<option value="IND10">ANDHRA BANK</option>
								<option value="IND12">AXIS BANK</option>
								<option value="IND13">BANK OF AMERICA</option>
								<option value="IND14">BANK OF BAHRAIN AND KUWAIT</option>
								<option value="IND15">BANK OF BARODA</option>
								<option value="IND16">BANK OF CEYLON</option>
								<option value="IND17">BANK OF INDIA</option>
								<option value="IND18">BANK OF MAHARASHTRA</option>
								<option value="IN102">BANK OF TOKYO-MITSUBISHI UFJ LTD</option>
								<option value="IND19">BARCLAYS BANK PLC</option>
								<option value="IND20">BASSEIN CATHOLIC CO-OP BANK LTD</option>
								<option value="IND21">BNP PARIBAS</option>
								<option value="IND22">CANARA BANK</option>
								<option value="IND23">CENTRAL BANK OF INDIA</option>
								<option value="IN103">CHINATRUST COMMERCIAL BANK</option>
								<option value="IND24">CITIBANK NA</option>
								<option value="IND25">CITIZENCREDIT CO-OPERATIVE BANK LTD</option>
								<option value="IND26">CITY UNION BANK LTD</option>
								<option value="IND02">CORPORATION BANK (CORP BANK)</option>
								<option value="IND27">CREDIT AGRICOLE CORP N INVSMNT BANK</option>
								<option value="IND28">DBS BANK LTD</option>
								<option value="IND29">DENA BANK</option>
								<option value="IND30">DEUTSCHE BANK AG</option>
								<option value="IND31">DEVELOPMENT CREDIT BANK LIMITED</option>
								<option value="IND04">DHANLAKSHMI BANK LTD</option>
								<option value="IND32">DICGC</option>
								<option value="IND33">DOMBIVLI NAGARI SAHAKARI BANK LIMITED</option>
								<option value="IND34">FIRSTRAND BANK LIMITED</option>
								<option value="IND35">HDFC BANK LTD</option>
								<option value="IND36">HSBC</option>
								<option value="IND37">ICICI BANK LTD</option>
								<option value="IND38">IDBI BANK LTD</option>
								<option value="IND39">INDIAN BANK</option>
								<option value="IND40">INDIAN OVERSEAS BANK</option>
								<option value="IND06">INDUSIND BANK LTD</option>
								<option value="IND41">ING VYSYA BANK LTD</option>
								<option value="IND42">JANAKALYAN SAHAKARI BANK LTD</option>
								<option value="IND43">JANATA SAHAKARI BANK LTD (PUNE)</option>
								<option value="IND44">JPMORGAN CHASE BANK NA</option>
								<option value="IND45">KAPOLE CO OP BANK</option>
								<option value="IND46">KARNATAKA BANK LTD</option>
								<option value="IND47">KARUR VYSYA BANK</option>
								<option value="IND05">KOTAK MAHINDRA BANK</option>
								<option value="IND48">MAHANAGAR CO-OP BANK LTD</option>
								<option value="IND49">MAHARASHTRA STATE CO OPERATIVE BANK</option>
								<option value="IND50">MASHREQ BANK PSC</option>
								<option value="IND51">MIZUHO CORPORATE BANK LTD</option>
								<option value="IND52">NEW  INDIA CO-OPERATIVE  BANK  LTD</option>
								<option value="IND53">NKGSB CO-OP BANK LTD</option>
								<option value="IND54">NUTAN NAGARIK SAHAKARI BANK LTD</option>
								<option value="IND55">OMAN INTERNATIONAL BANK SAOG</option>
								<option value="IND56">ORIENTAL BANK OF COMMERCE</option>
								<option value="IND57">PARSIK JANATA SAHAKARI BANK LTD</option>
								<option value="IND58">PUNJAB AND MAHARASHTRA CO-OP BANK LTD</option>
								<option value="IND59">PUNJAB AND SIND BANK</option>
								<option value="IND60">PUNJAB NATIONAL BANK</option>
								<option value="IND61">RAJKOT NAGARIK SAHAKARI BANK LTD</option>
								<option value="IND62">RESERVE BANK OF INDIA</option>
								<option value="IND63">SHINHAN BANK</option>
								<option value="IND64">SOCIETE GENERALE</option>
								<option value="IND03">SOUTH INDIAN BANK</option>
								<option value="IND65">STANDARD CHARTERED BANK</option>
								<option value="IND66">STATE BANK OF BIKANER AND JAIPUR</option>
								<option value="IND67">STATE BANK OF HYDERABAD</option>
								<option value="IND68">STATE BANK OF INDIA</option>
								<option value="IND69">STATE BANK OF MAURITIUS LTD</option>
								<option value="IND70">STATE BANK OF MYSORE</option>
								<option value="IND71">STATE BANK OF PATIALA</option>
								<option value="IND72">STATE BANK OF TRAVANCORE</option>
								<option value="IND73">SYNDICATE BANK</option>
								<option value="IND74">TAMILNAD MERCANTILE BANK LTD</option>
								<option value="IND75">THE AHMEDABAD MERCANTILE CO-OPERATIVE BANK LTD</option>
								<option value="IND76">THE BANK OF NOVA SCOTIA</option>
								<option value="IND77">THE BHARAT CO-OPERATIVE BANK (MUMBAI) LTD</option>
								<option value="IND01">THE CATHOLIC SYRIAN BANK (CSB)</option>
								<option value="IND78">THE COSMOS CO-OPERATIVE BANK LTD</option>
								<option value="IND79">THE FEDERAL BANK LTD</option>
								<option value="IND80">THE GREATER BOMBAY CO-OP BANK LTD</option>
								<option value="IND81">THE JAMMU AND KASHMIR BANK LTD</option>
								<option value="IND82">THE KALUPUR COMMERCIAL CO OP BANK LTD</option>
								<option value="IND83">THE KALYAN JANATA SAHAKARI BANK LTD</option>
								<option value="IND84">THE KARAD URBAN CO-OP BANK LTD</option>
								<option value="IN101">THE KARNATAKA STATE CO-OPERATIVE APEX BANK LTD</option>
								<option value="IND85">THE LAKSHMI VILAS BANK LTD</option>
								<option value="IND86">THE MEHSANA URBAN COOPERATIVE BANK LTD</option>
								<option value="IND87">THE NAINITAL BANK LIMITED</option>
								<option value="IN104">THE NASIK MERCHANTS CO-OP BANK LTD</option>
								<option value="IND88">THE RATNAKAR BANK LTD</option>
								<option value="IND89">THE ROYAL BANK OF SCOTLAND NV</option>
								<option value="IND90">THE SARASWAT CO-OPERATIVE BANK LTD</option>
								<option value="IND91">THE SHAMRAO VITHAL CO-OPERATIVE BANK LIMITED</option>
								<option value="IND92">THE SURAT PEOPLES CO-OP BANK LTD</option>
								<option value="IND93">THE TAMILNADU STATE APEX COOPERATIVE BANK LIMITED</option>
								<option value="IND94">THE THANE JANATA SAHAKARI BANK LTD</option>
								<option value="IND95">THE WEST BENGAL STATE COOPERATIVE BANK LTD</option>
								<option value="IND96">UBS AG</option>
								<option value="IND97">UCO BANK</option>
								<option value="IND08">UNION BANK OF INDIA</option>
								<option value="IND98">UNITED BANK OF INDIA</option>
								<option value="IND99">VIJAYA BANK</option>
								<option value="IN100">YES BANK LIMITD</option>
							</select>
							<label for="ebname">Name</label>						
						</span>
						<span class="sep">
							<br><input id="ebarea" name="ebarea" type="text" class="field text" value="" size="30" maxlength="10"  />
							<label for="ebarea">Branch</label>							
						</span>
						<span class="sep">
							<br><select id="ebstate" class="field select fn" name="ebstate">
								<option selected="selected" value="">-----  Select  -----</option>
								</b><option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
								<option value="IN001">ANDHRA PRADESH</option>
								<option value="IN002">ARUNACHAL PRADESH</option>
								<option value="IN003">ASSAM</option>
								<option value="IN004">BIHAR</option>
								<option value="IN030">CHANDIGARH</option>
								<option value="IN005">CHATTISGARH</option>
								<option value="IN031">DADRA AND NAGAR HAVELI</option>
								<option value="IN032">DAMAN AND DIU</option>
								<option value="IN034">DELHI</option>
								<option value="IN006">GOA</option>
								<option value="IN007">GUJARAT</option>
								<option value="IN008">HARYANA</option>
								<option value="IN009">HIMACHAL PRADESH</option>
								<option value="IN010">JAMMU AND KASHMIR</option>
								<option value="IN011">JHARKHAND</option>
								<option value="IN012">KARNATAKA</option>
								<option value="IN013">KERALA</option>
								<option value="IN033">LAKSHADWEEP</option>
								<option value="IN014">MADHYA PRADESH</option>
								<option value="IN015">MAHARASHTRA</option>
								<option value="IN016">MANIPUR</option>
								<option value="IN017">MEGHALAYA</option>
								<option value="IN018">MIZORAM</option>
								<option value="IN019">NAGALAND</option>
								<option value="IN020">ORISSA</option>
								<option value="IN035">PONDICHERRY</option>
								<option value="IN021">PUNJAB</option>
								<option value="IN022">RAJASTHAN</option>
								<option value="IN023">SIKKIM</option>
								<option value="IN024">TAMIL NADU</option>
								<option value="IN025">TRIPURA</option>
								<option value="IN026">UTTAR PRADESH</option>
								<option value="IN027">UTTARAKHAND</option>
								<option value="IN028">WEST BENGAL</option>	
							</select>	
							<label for="ebstate">State</label>						
						</span>
						<span class="sep">
							<br><select id="ebcity" class="field select fn" name="ebcity">
							<option selected="selected" value="">-----  Select  -----</option>
								<option value="ND491">ARIYALUR</option>
								<option value="ND492">CHENNAI</option>
								<option value="ND493">COIMBATORE</option>
								<option value="ND494">CUDDALORE</option>
								<option value="ND495">DHARMAPURI</option>
								<option value="ND496">DINDIGUL</option>
								<option value="ND497">ERODE</option>
								<option value="ND498">KANCHIPURAM</option>
								<option value="ND499">KANYAKUMARI</option>
								<option value="ND500">KARUR</option>
								<option value="ND501">KRISHNAGIRI</option>
								<option value="ND502">MADURAI</option>
								<option value="ND503">NAGAPATTINAM</option>
								<option value="ND504">NAMAKKAL</option>
								<option value="ND505">NILGIRIS</option>
								<option value="ND506">PERAMBALUR</option>
								<option value="ND507">PUDUKKOTTAI</option>
								<option value="ND508">RAMANATHAPURAM</option>
								<option value="ND509">SALEM</option>
								<option value="ND510">SIVAGANGA</option>
								<option value="ND511">THANJAVUR</option>
								<option value="ND512">THENI</option>
								<option value="ND513">TIRUCHIRAPPALLI</option>
								<option value="ND514">TIRUNELVELI</option>
								<option value="ND515">TIRUVALLUR</option>
								<option value="ND516">TIRUVANNAMALAI</option>
								<option value="ND517">TIRUVARUR</option>
								<option value="ND518">TUTICORIN</option>
								<option value="ND519">VELLORE</option>
								<option value="ND520">VILLUPURAM</option>
								<option value="ND521">VIRUDHUNAGAR</option>
							</select>	
							<label for="ebcity">City</label>						
						</span>
						<span>
								<br><select id="ebcntry" class="field select fn" name="ebcntry">
									<option selected value="CNTRY01">INDIA</option>
								</select>
								<label for="ebcntry">Country</label>
						</span>
						
					</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Previous Experience</legend>
					<li id="frmEPreCompExp" class="name notranslate name">
						<span>
							<label class="desc" id="epexplbl" for="epexp">Company Name</label>
							<input id="epexp" name="epexp" type="text" class="field text" value="" size="45" maxlength="10"  />												
						</span>
						<span class="sep">
							<label class="desc" id="eprolelbl" for="eprole">Role</label>
							<input id="eprole" name="eprole" type="text" class="field text" value="" size="20" maxlength="10"  />
							<label for="eprole">Worked As</label>
						</span>
						<span class="sep">
							<label class="desc" id="epnoofexplbl" for="epnoofexp">Experience</label>
							<input id="epnoofexp" name="epnoofexp" type="text" class="field text" value="" size="2" maxlength="2"  />
							<label for="epnoofexp">No. of Years</label>						
						</span>	
						<span class="sep">
							<label class="desc" id="eprskilllbl" for="epskill">Specialist In</label>
							<input id="epskill" name="epskill" type="text" class="field text" value="" size="25" maxlength="2"  />
							<label for="epskill">Skills</label>						
						</span>
						<span class="sep">
								<label class="desc" id="epcfdatelbl" for="epcfdate">From Date</label>
								<input type="text" id="epcfdate" name="epcfdate" size="12" onclick="setSens('epcfdate', 'max');">
								<label for="epcfdate">DD/MM/YYYY</label>
						</span>
						<span class="sep">
								<label class="desc" id="epctdatelbl" for="epctdate">To Date</label>
								<input type="text" id="epctdate" name="epctdate" size="12" tabindex="5" onclick="setSens('epctdate', 'min');">
								<label for="epctdate">DD/MM/YYYY</label>
						</span>
						
						<span class="sep">
							<label class="desc" id="epsallbl" for="epsal">Salary</label>
							<input id="epsal" name="epsal" type="text" class="field text" value="" size="10" maxlength="10"  />
							<label for="epsal">Per Month</label>
						</span>						
					</li>
					<li>
							<span>
								<label class="desc" id="epcref1lbl" for="epcref1">Reference 1</label>
								<input id="epcref1" name="epcref1" type="text" class="field text" value="" size="30" maxlength="30"  />
								<label for="epcref1">Name</label>
							</span>
							<span>
								<label class="desc" id="epcref1ph" for="epcref1ph">Phone Number</label>
								<select id="epcref1phnoc" name="epcref1phnoc" class="field select" tabindex="20">
									<option selected value=""></option>						
									<option value="IN">+91</option>
								</select>
								<input id="epcref1phno" name="epcref1phno" class="field text ln" value="" size="15" tabindex="12" maxlength="10" type="text">
								<label for="epcref1phno">Country</label>								
							</span>
							<span class="sep">
								<label class="desc" id="epcref2lbl" for="epcref2">Reference 2</label>
								<input id="epcref2" name="epcref2" type="text" class="field text" value="" size="30" maxlength="30"  />
								<label for="epcref2">Name</label>
							</span>
							<span>
								<label class="desc" id="epcref2ph" for="epcref2ph">Phone Number</label>
								<select id="epcref2phnoc" name="epcref2phnoc" class="field select" tabindex="20">
									<option selected value=""></option>						
									<option value="IN">+91</option>
								</select>
								<input id="epcref2phno" name="epcref2phno" class="field text ln" value="" size="15" tabindex="12" maxlength="10" type="text">
								<label for="epcref2phno">Country</label>								
							</span>
					</li>
					<li id="frmeprevcompaddr" class="name notranslate name">
						<span>
							<label class="desc" id="epcatype1lbl" for="epcatype1">Address</label>
							<select id="epcatype1" class="field select fn" name="epcatype1"> 
								<option selected="selected" value="WRK">Work</option>								
							</select>
								<label for="epcatype1">Type</label>
						</span>
						<span>							
							<br><input id="epcaaddr11" name="epcaaddr11" type="text" class="field text" value="" size="50" maxlength="50"  />
							<label for="epcaaddr11">Address 1</label>
						</span>
						<span>
							<br><input id="epcaaddr21" name="epcaaddr21" type="text" class="field text" value="" size="50" maxlength="50"  />
							<label for="epcaaddr21">Address 2</label>
						</span>
						<span>
							<br><input id="epcaarea1" name="epcaarea1" type="text" class="field text" value="" size="30" maxlength="30"  />
							<label for="epcaarea1">Area</label>
						</span>
						<span>
							<br><input id="fldEPComCity" name="fldEPComCity" type="text" class="field text" value="" size="30" maxlength="30"  />
							<label for="lblEPComCityN">City</label>
						</span>
						<li>
							<span>
								<select id="select" class="field select fn" name="fldEPComState">
									<option selected="selected" value="">-----  Select  -----</option>
									<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
									<option value="IN001">ANDHRA PRADESH</option>
									<option value="IN002">ARUNACHAL PRADESH</option>
									<option value="IN003">ASSAM</option>
									<option value="IN004">BIHAR</option>
									<option value="IN030">CHANDIGARH</option>
									<option value="IN005">CHATTISGARH</option>
									<option value="IN031">DADRA AND NAGAR HAVELI</option>
									<option value="IN032">DAMAN AND DIU</option>
									<option value="IN034">DELHI</option>
									<option value="IN006">GOA</option>
									<option value="IN007">GUJARAT</option>
									<option value="IN008">HARYANA</option>
									<option value="IN009">HIMACHAL PRADESH</option>
									<option value="IN010">JAMMU AND KASHMIR</option>
									<option value="IN011">JHARKHAND</option>
									<option value="IN012">KARNATAKA</option>
									<option value="IN013">KERALA</option>
									<option value="IN033">LAKSHADWEEP</option>
									<option value="IN014">MADHYA PRADESH</option>
									<option value="IN015">MAHARASHTRA</option>
									<option value="IN016">MANIPUR</option>
									<option value="IN017">MEGHALAYA</option>
									<option value="IN018">MIZORAM</option>
									<option value="IN019">NAGALAND</option>
									<option value="IN020">ORISSA</option>
									<option value="IN035">PONDICHERRY</option>
									<option value="IN021">PUNJAB</option>
									<option value="IN022">RAJASTHAN</option>
									<option value="IN023">SIKKIM</option>
									<option value="IN024">TAMIL NADU</option>
									<option value="IN025">TRIPURA</option>
									<option value="IN026">UTTAR PRADESH</option>
									<option value="IN027">UTTARAKHAND</option>
									<option value="IN028">WEST BENGAL</option>	
								</select>							
								<label for="lblEPComStateN">State</label>
							</span>
							<span>
								<input id="fldEPComPinC" name="fldEPComPinC" type="text" class="field text" value="" size="16" maxlength="6"  />
								<label for="lblEPComPinCN">Pincode</label>
							</span>
							<span>
									<select id="ebcntry1" class="field select fn" name="ebcntry1">
									<option selected value="CNTRY01">INDIA</option>
								</select>
								<label for="ebcntry1">Country</label>
							</span>
						</li>					
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Official Details</legend>
					<li id="frmEoffdet" class="name notranslate name">
						<span>
							<label class="desc" id="erolelbl" for="erole">Employee Role </label>
							<select multiple id="erole" class="field select fn" name="erole"> 
								<option value="MD">Managing Director</option>
								<option value="BPA">Business Partners</option>
								<option value="BOD">Board of Directors</option>
								<option value="CEO">Chief Executive Officer</option>							
								<option value="BMR">Branch Manager</option>
								<option value="SUP">Supervisor</option>
								<option value="EXE">Executive</option>
								<option value="ATT">Attendent</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="ebranchclbl" for="ebranchc">Branch </label>
							<select multiple id="ebranchc" class="field select fn" name="ebranchc">
								<option value="000">All Branches (ALLBRAN)</option>
								<option value="001">Chennai Main (CHNMAIN)</option>
								<option value="002">Chennai Adyar (CHNADYR)</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="estatuslbl" for="estatus">Employee Status </label>
							<select id="estatus" class="field select fn" name="estatus"> 
								<option value=""></option>
								<option value="A">Active</option>
								<option value="I">In Active</option>
							</select>
						</span >
						<span class="sep">
							<label class="desc" id="ecloginlbl" for="eclogin">Create Login ID </label>
							<input id="eclogin" name="eclogin" type="checkbox" class="field text" value="Y" />  Yes 
						</span>
						<span class="sep">
							<label class="desc" id="elstatuslbl" for="elstatus">Login Status </label>
							<select id="elstatus" class="field select fn" name="elstatus"> 
								<option value=""></option>
								<option value="A">Active</option>
								<option value="I">In Active</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="esalmlbl" for="esalm">Salary</label>
							<input id="esalm" name="esalm" type="text" class="field text" value="" size="10" maxlength="10"  />
							<label for="esalm">Per Month</label>
						</span>
						<span class="sep">
								<label class="desc" id="ejdatelbl" for="ejdate">Join Date</label>
								<input type="text" id="ejdate" name="ejdate" size="12" tabindex="5" onclick="setSens('ejdate', 'max');"/>
								<label for="ejdate">DD/MM/YYYY</label>
						</span>
						<span class="sep">
								<label class="desc" id="eedatelbl" for="eedate">End Date</label>
								<input type="text" id="eedate" name="eedate" size="12" tabindex="5" onclick="setSens('eedate', 'min');"/>
								<label for="eedate">DD/MM/YYYY</label>
						</span>					
					</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Identity Details</legend>
					<li id="frmEiden" class="name notranslate name">
						<span>
							<label class="desc" id="eiddoc" for="eiddoc">Identity Proof</label>
							<select  id="eiddoc" class="field select fn" name="eiddoc"> 
								<option selected value="">--Select---</option>
								<option value="PAN">Pan Card</option>
								<option value="DRV">Driving Licence</option>
								<option value="PAS">Passport</option>
								<option value="VOT">Voter ID</option>							
								<option value="AAD">AADHAR Card</option>
								<option value="RAT">Ration Card</option>
								<option value="OTH">Others</option>
							</select>
							<label for="eiddoc">Document Name </label>
						</span>
						<span class="sep">
							<label class="desc" id="eidnolbl" for="eidno">Identity No. </label>
							<input id="eidno" name="eidno" type="text" class="field text" value="" size=25/> 
							<br>
						</span>
						<span class="sep">
							<label class="desc" id="eidnoprflbl" for="eidnoprf">Please upload the Identity proof </label>
							<input id="eidnoprf" name="eidnoprf" type="file" class="field text" value="" size=25/> 
							<br>
						</span>
					</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Emergency Contact Details</legend>
					<li id="frmEiden" class="name notranslate name">
						<span>
							<label class="desc" id="eecrellbl" for="eecrel">Relationship</label>
							<select  id="eecrel" class="field select fn" name="eecrel"> 
								<option selected value="">--Select---</option>
								<option value="SPO">Spouse</option>
								<option value="FAT">Father</option>
								<option value="MOT">Mother</option>
								<option value="SIS">Sister</option>							
								<option value="BRO">Brother</option>
								<option value="FRI">Friend</option>
								<option value="OTH">Others</option>
							</select>							
						</span>
						<span class="sep">
								<label class="desc" id="eecrelnlbl" for="eecreln">Name</label>
								<input id="eecreln" name="eecreln" type="text" class="field text" value="" size="30" maxlength="30"  />
						</span>
						<span>
								<label class="desc" id="eecrelphclbl" for="eecrelph">Phone Number</label>
								<select id="eecrelphc" name="eecrelphc" class="field select" tabindex="20">
									<option selected value=""></option>						
									<option value="IN">+91</option>
								</select>
								<input id="eecrelph" name="eecrelph" class="field text ln" value="" size="15" tabindex="12" maxlength="10" type="text">
								<label for="eecrelph">Country</label>								
						</span>
					</li>
				</fieldset>	
			</ul>
			<ul>		
				<fieldset class="noborder bottommove">
						<li class="buttons">
					       	<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Create Employee"/>
		           		</li>
				</fieldset>		
			</ul>	
		</form>
	</div>
	<%} else { %>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%} %>
</body>
</html>