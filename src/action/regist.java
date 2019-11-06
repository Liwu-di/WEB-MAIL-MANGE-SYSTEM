package action;

import java.beans.Transient;

public class regist {
	private String username;
	private String userpassword;
	private String usertel;
	private String useraccount;
	
	//setter getter
	@Transient
	public String getUsername() {
		return username;
	}
	public void setUsername(String uname) {
		this.username=uname;
	}
	@Transient
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String pass) {
		this.userpassword=pass;
	}
	@Transient
	public String getUseraccount() {
		return useraccount;
	}
	public void setUseraccount(String usacc) {
		this.useraccount=usacc;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String tel) {
		this.usertel=tel;
	}
}
