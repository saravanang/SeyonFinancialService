package common;



public class Messages {
	private String ErrMsg;
	
	public String GetMessage (int MsgNo){
		if(MsgNo == 101) {
			ErrMsg = "Min. length of Userid should be 5 characters";
		}
		if(MsgNo == 102) {
			ErrMsg = "Password length should be 8 to 12 characters";
		}
		if(MsgNo == 103) {
			ErrMsg = "Invalid User ID or Password";
		}
		if(MsgNo == 201) {
			ErrMsg = "Database Down. Contact administrator";
		}
		if(MsgNo == 202) {
			ErrMsg = "Error in logging out. Pls. login";
		}
		if(MsgNo == 203) {
			ErrMsg = "Unable to assign Employee ID. Pls. try again later";
		}
		if(MsgNo == 204) {
			ErrMsg = "Unable to create Employee. Pls. check error logs";
		}
		if(MsgNo == 301) {
			ErrMsg = "Thanks. User successfully logged out.";
		}
		if(MsgNo == 302) {
			ErrMsg = "Employee Personal Details created successfully";
		}
		return ErrMsg;
	}
}
