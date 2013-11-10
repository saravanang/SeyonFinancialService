package beans;

import java.sql.Date;
import java.sql.Timestamp;

/**
 * TABLE: EMPINFO
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| EI_EMPID      | int(10)     | NO   | PRI | NULL    | auto_increment |
| EI_TITLE      | char(5)     | YES  |     | NULL    |                |
| EI_FNAME      | varchar(45) | NO   |     | NULL    |                |
| EI_MNAME      | varchar(10) | YES  |     | NULL    |                |
| EI_LNAME      | varchar(45) | NO   |     | NULL    |                |
| EI_BDATE      | date        | YES  |     | NULL    |                |
| EI_GENDER     | char(1)     | YES  |     | NULL    |                |
| EI_STATUS     | char(1)     | NO   |     | Y       |                |
| EI_JOINDATE   | date        | YES  |     | NULL    |                |
| EI_ENDDATE    | date        | YES  |     | NULL    |                |
| EI_VERISTATUS | char(1)     | YES  |     | N       |                |
| EI_ROLE       | varchar(5)  | YES  |     | NULL    |                |
| EI_BRANCHCODE | varchar(5)  | YES  |     | NULL    |                |
| EI_EMAIL      | varchar(45) | YES  |     | NULL    |                |
| EI_LPHONE     | int(13)     | YES  |     | NULL    |                |
| EI_MPHONE     | int(13)     | YES  |     | NULL    |                |
| EI_LOGINCRT   | char(1)     | YES  |     | N       |                |
| EI_NOOFDEP    | int(2)      | YES  |     | NULL    |                |
| EI_RELIGION   | varchar(10) | YES  |     | NULL    |                |
| EI_CASTE      | varchar(5)  | YES  |     | NULL    |                |
| EI_DATEINS    | datetime    | YES  |     | NULL    |                |
| EI_DATEUPD    | datetime    | YES  |     | NULL    |                |
| EI_ADDEDBY    | int(10)     | YES  |     | NULL    |                |
| EI_UPDATEDBY  | int(10)     | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
 */

public class EmployeeDetails {

	private int 		ei_empid;   
	private String		ei_title;
	private String 		ei_fname;       
	private String 		ei_mname;      
	private String 		ei_lname;       
	private Date 		ei_bdate;
	private char 		ei_gender;
	private char 		ei_status;      
	private Date 		ei_joindate;    
	private Date 		ei_enddate;
	private char		ei_veristatus;
	private String		ei_role;
	private String		ei_branchcode;
	private String		ei_email;
	private long		ei_lphone;
	private long		ei_mphone;
	private char		ei_logincrt;
	private int 		ei_noofdep;
	private	String		ei_religion;
	private String		ei_caste;
	private Timestamp 	ei_dateins;     
	private Timestamp 	ei_dateupd;     
	private int 		ei_addedby;
	private int			ei_updatedby;
	
	public EmployeeDetails() {}

	public int getEi_empid() {
		return ei_empid;
	}

	public void setEi_empid(int ei_empid) {
		this.ei_empid = ei_empid;
	}

	public String getEi_fname() {
		return ei_fname;
	}

	public void setEi_fname(String ei_fname) {
		this.ei_fname = ei_fname;
	}

	public String getEi_mname() {
		return ei_mname;
	}

	public void setEi_mname(String ei_mname) {
		this.ei_mname = ei_mname;
	}

	public String getEi_lname() {
		return ei_lname;
	}

	public void setEi_lname(String ei_lname) {
		this.ei_lname = ei_lname;
	}

	public char getEi_status() {
		return ei_status;
	}

	public void setEi_status(char ei_status) {
		this.ei_status = ei_status;
	}

	public Date getEi_joindate() {
		return ei_joindate;
	}

	public void setEi_joindate(Date ei_joindate) {
		this.ei_joindate = ei_joindate;
	}
	
	public Date getEi_enddate() {
		return ei_enddate;
	}

	public void setEi_enddate(Date ei_enddate) {
		this.ei_enddate = ei_enddate;
	}

	public Timestamp getEi_dateins() {
		return ei_dateins;
	}

	public void setEi_dateins(Timestamp ei_dateins) {
		this.ei_dateins = ei_dateins;
	}

	public Timestamp getEi_dateupd() {
		return ei_dateupd;
	}

	public void setEi_dateupd(Timestamp ei_dateupd) {
		this.ei_dateupd = ei_dateupd;
	}

	public int getEi_addedby() {
		return ei_addedby;
	}

	public void setEi_addedby(int ei_addedby) {
		this.ei_addedby = ei_addedby;
	}

	public Date getEi_bdate() {
		return ei_bdate;
	}

	public void setEi_bdate(Date ei_bdate) {
		this.ei_bdate = ei_bdate;
	}

	public char getEi_gender() {
		return ei_gender;
	}

	public void setEi_gender(char ei_gender) {
		this.ei_gender = ei_gender;
	}

	public char getEi_veristatus() {
		return ei_veristatus;
	}

	public void setEi_veristatus(char ei_veristatus) {
		this.ei_veristatus = ei_veristatus;
	}

	public String getEi_role() {
		return ei_role;
	}

	public void setEi_role(String ei_role) {
		this.ei_role = ei_role;
	}

	public String getEi_branchcode() {
		return ei_branchcode;
	}

	public void setEi_branchcode(String ei_branchcode) {
		this.ei_branchcode = ei_branchcode;
	}

	public String getEi_email() {
		return ei_email;
	}

	public void setEi_email(String ei_email) {
		this.ei_email = ei_email;
	}

	public long getEi_lphone() {
		return ei_lphone;
	}

	public void setEi_lphone(long ei_lphone) {
		this.ei_lphone = ei_lphone;
	}

	public long getEi_mphone() {
		return ei_mphone;
	}

	public void setEi_mphone(long ei_mphone) {
		this.ei_mphone = ei_mphone;
	}

	public char getEi_logincrt() {
		return ei_logincrt;
	}

	public void setEi_logincrt(char ei_logincrt) {
		this.ei_logincrt = ei_logincrt;
	}

	public String getEi_religion() {
		return ei_religion;
	}

	public void setEi_religion(String ei_religion) {
		this.ei_religion = ei_religion;
	}

	public String getEi_caste() {
		return ei_caste;
	}

	public void setEi_caste(String ei_caste) {
		this.ei_caste = ei_caste;
	}

	public int getEi_updatedby() {
		return ei_updatedby;
	}

	public void setEi_updatedby(int ei_updatedby) {
		this.ei_updatedby = ei_updatedby;
	}

	public String getEi_title() {
		return ei_title;
	}

	public void setEi_title(String ei_title) {
		this.ei_title = ei_title;
	}

	public int getEi_noofdep() {
		return ei_noofdep;
	}

	public void setEi_noofdep(int ei_noofdep) {
		this.ei_noofdep = ei_noofdep;
	}
	
}
