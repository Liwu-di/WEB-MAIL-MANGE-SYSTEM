package action;

public class Box {
	private String address;
	private String pass;
	private String pass2;
	private String pop3;
	private String pop3port;
	private String smtp;
	private String smtpport;
	//setter getter
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass=pass;
	}
	public String getPass2() {
		return pass2;
	}
	public void setPass2(String pass) {
		this.pass2=pass;
	}
	public String getPop3() {
		return pop3;
	}
	public void setPop3(String pop3) {
		this.pop3=pop3;
	}
	public String getPop3port() {
		return pop3port;
	}
	public void setPop3port(String pop3port) {
		this.pop3port=pop3port;
	}
	public String getSmtp() {
		return smtp;
	}
	public void setSmtp(String smtp) {
		this.smtp=smtp;
	}
	public String getSmtpport() {
		return smtpport;
	}
	public void setSmtpport(String smtpport) {
		this.smtpport=smtpport;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String add) {
		this.address=add;
	}
}
