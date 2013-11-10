package common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;

import java.sql.Timestamp;

public class Utilities {

	//Get Time stamp for database
	public Timestamp GetTimeStamp() {
		Calendar calender= Calendar.getInstance();
		Timestamp timestamp = new Timestamp(calender.getTime().getTime());
		return timestamp;
	}
	
	public Date convrt2sqldate(String strDate) throws ParseException {
		
		System.out.println(strDate);
		DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
		java.util.Date cnvtdate = df.parse(strDate);			
		Date sqlcnvtdate = new Date(cnvtdate.getTime());
		return sqlcnvtdate;
	}	
	
}
