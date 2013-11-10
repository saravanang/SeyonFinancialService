package beans;

import java.sql.Timestamp;

//Update this class whenever you change the table structure for logininfo table
/**
 * Table LOGINFO
 * +----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| LI_USERID      | int(10)     | NO   | PRI | NULL    |       |
| LI_PASSWORD    | varchar(32) | NO   |     | NULL    |       |
| LI_STATUS      | char(1)     | NO   |     | Y       |       |
| LI_LOGINSTATUS | char(1)     | NO   |     | N       |       |
| LI_LASTLOGIN   | datetime    | YES  |     | NULL    |       |
| LI_DATEINS     | datetime    | YES  |     | NULL    |       |
| LI_DATEUPD     | datetime    | YES  |     | NULL    |       |
| LI_ADDEDBY     | int(10)     | YES  |     | NULL    |       |
| LI_UPDATEDBY   | int(10)     | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

 */

public class LoginDetails {
	private int 		li_userid;			//Login User id
	private String 		li_password;		//Login password
	private char 		li_status;			//User id status (Active or Inactive)
	private char 		li_loginstatus;		//User id login status (whether logged in or not)
	private Timestamp 	li_lastlogin;		//Last Login time
	private Timestamp 	li_dateins;			//Date record inserted
	private Timestamp	li_dateupd;			//Date record updated
	private Timestamp	li_addedby;			//Added employee id
	private Timestamp	li_updatedby;		//Updated employee id
	
	public LoginDetails() {}
	
	public int getLi_userid() {
		return li_userid;
	}

	public void setLi_userid(int li_userid) {
		this.li_userid = li_userid;
	}

	public String getLi_password() {
		return li_password;
	}

	public void setLi_password(String li_password) {
		this.li_password = li_password;
	}

	public char getLi_status() {
		return li_status;
	}

	public void setLi_status(char li_status) {
		this.li_status = li_status;
	}

	public char getLi_loginstatus() {
		return li_loginstatus;
	}

	public void setLi_loginstatus(char li_loginstatus) {
		this.li_loginstatus = li_loginstatus;
	}

	public Timestamp getLi_lastlogin() {
		return li_lastlogin;
	}

	public void setLi_lastlogin(Timestamp li_lastlogin) {
		this.li_lastlogin = li_lastlogin;
	}

	public Timestamp getLi_dateins() {
		return li_dateins;
	}

	public void setLi_dateins(Timestamp li_dateins) {
		this.li_dateins = li_dateins;
	}

	public Timestamp getLi_dateupd() {
		return li_dateupd;
	}

	public void setLi_dateupd(Timestamp li_dateupd) {
		this.li_dateupd = li_dateupd;
	}

	public Timestamp getLi_addedby() {
		return li_addedby;
	}

	public void setLi_addedby(Timestamp li_addedby) {
		this.li_addedby = li_addedby;
	}

	public Timestamp getLi_updatedby() {
		return li_updatedby;
	}

	public void setLi_updatedby(Timestamp li_updatedby) {
		this.li_updatedby = li_updatedby;
	}
	
	
}
