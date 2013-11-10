package beans;

import java.sql.Date;

/**
 * TABLE EMPADDR
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EA_ADDRID    | bigint(20)  | NO   | PRI | NULL    | auto_increment |
| EA_EMPID     | int(10)     | YES  | MUL | NULL    |                |
| EA_ADDRTYPE  | varchar(8)  | YES  |     | NULL    |                |
| EA_ADDRESS1  | varchar(50) | YES  |     | NULL    |                |
| EA_ADDRESS2  | varchar(50) | YES  |     | NULL    |                |
| EA_ADDRESS3  | varchar(50) | YES  |     | NULL    |                |
| EA_AREA      | varchar(50) | NO   |     | NULL    |                |
| EA_CITYCODE  | varchar(5)  | YES  |     | NULL    |                |
| EA_STATECODE | varchar(5)  | YES  |     | NULL    |                |
| EA_CNTRYCODE | varchar(5)  | YES  |     | NULL    |                |
| EA_STATUS    | char(1)     | NO   |     | NULL    |                |
| EA_FRMDATE   | date        | YES  |     | NULL    |                |
| EA_TODATE    | date        | YES  |     | NULL    |                |
| EA_DATEINS   | datetime    | YES  |     | NULL    |                |
| EA_DATEUPD   | datetime    | YES  |     | NULL    |                |
| EA_ADDEDBY   | int(10)     | YES  |     | NULL    |                |
| EA_UPDATEDBY | int(10)     | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
 */

public class EmployeeAddress {

	private int 	ea_empid;
	private String 	ea_addrtype;
	private	String 	ea_address1;
	private String 	ea_address2;
	private String 	ea_address3;
	private String 	ea_area;
	private String 	ea_cityarea;
	private String 	ea_statecode;
	private String 	ea_cntrycode;
	private char 	ea_status;
	private Date 	ea_frmdate;
	private Date	ea_todate;
	private int		ea_addedby;
	private int		ea_updatedby;
	
	public EmployeeAddress() {}

	public int getEa_empid() {
		return ea_empid;
	}

	public void setEa_empid(int ea_empid) {
		this.ea_empid = ea_empid;
	}

	public String getEa_addrtype() {
		return ea_addrtype;
	}

	public void setEa_addrtype(String ea_addrtype) {
		this.ea_addrtype = ea_addrtype;
	}

	public String getEa_address1() {
		return ea_address1;
	}

	public void setEa_address1(String ea_address1) {
		this.ea_address1 = ea_address1;
	}

	public String getEa_address2() {
		return ea_address2;
	}

	public void setEa_address2(String ea_address2) {
		this.ea_address2 = ea_address2;
	}

	public String getEa_address3() {
		return ea_address3;
	}

	public void setEa_address3(String ea_address3) {
		this.ea_address3 = ea_address3;
	}

	public String getEa_area() {
		return ea_area;
	}

	public void setEa_area(String ea_area) {
		this.ea_area = ea_area;
	}

	public String getEa_cityarea() {
		return ea_cityarea;
	}

	public void setEa_cityarea(String ea_cityarea) {
		this.ea_cityarea = ea_cityarea;
	}

	public String getEa_statecode() {
		return ea_statecode;
	}

	public void setEa_statecode(String ea_statecode) {
		this.ea_statecode = ea_statecode;
	}

	public String getEa_cntrycode() {
		return ea_cntrycode;
	}

	public void setEa_cntrycode(String ea_cntrycode) {
		this.ea_cntrycode = ea_cntrycode;
	}

	public char getEa_status() {
		return ea_status;
	}

	public void setEa_status(char ea_status) {
		this.ea_status = ea_status;
	}

	public Date getEa_frmdate() {
		return ea_frmdate;
	}

	public void setEa_frmdate(Date ea_frmdate) {
		this.ea_frmdate = ea_frmdate;
	}

	public Date getEa_todate() {
		return ea_todate;
	}

	public void setEa_todate(Date ea_todate) {
		this.ea_todate = ea_todate;
	}

	public int getEa_addedby() {
		return ea_addedby;
	}

	public void setEa_addedby(int ea_addedby) {
		this.ea_addedby = ea_addedby;
	}

	public int getEa_updatedby() {
		return ea_updatedby;
	}

	public void setEa_updatedby(int ea_updatedby) {
		this.ea_updatedby = ea_updatedby;
	}
	
	
}
