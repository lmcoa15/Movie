package jspbook.ch07;

public class LoginBean {
	private String userid;
	private String passwd;
	private char gender;
	
	final String _userid="myuser";
	final String _passwd="1234";
	
	public boolean checkUser(){
		if(userid.equals(_userid)&&passwd.equals(_passwd)){
			return true;
		}
		else
			return false;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}
	
}
