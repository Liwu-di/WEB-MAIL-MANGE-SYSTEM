package com.athena.mail.client;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.util.MimeMessageParser;
import org.apache.struts2.ServletActionContext;

import com.athena.mail.props.AuthenticatorGenerator;
import com.athena.mail.props.HostType;
import com.athena.mail.receiver.MessageParser;
import com.athena.mail.receiver.SimpleMailReceiver;
import com.mysql.jdbc.Connection;
import com.opensymphony.xwork2.ActionSupport;

import db.connect_Mysql;

/**
 * 邮件测试类
 * 
 * @author lwd
 * 
 */
public class MailTest extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static void main(String[] args) {
		//MessageParser.parse(SimpleMailReceiver.fetchInbox(HostType.NETEASE.getProperties(),AuthenticatorGenerator.getAuthenticator("youraccount", "yourpassword")));
//	Message[] m=SimpleMailReceiver.fetchInbox(HostType.NETEASE.getProperties(),AuthenticatorGenerator.getAuthenticator("15662397181@163.com", "liwudi123"));
//		for(int i=0;i<m.length;++i) {
//			MessageParser.parse(m[i]);
//			System.out.println(i+"");
//		}
		//int i=0;
		//while(true) {
		//			if(m[i]==null )break;
		//			MessageParser.parse(m[i]);
		//			++i;
		//			System.out.println(i+"");
		//		
		//}
		
	}
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession();
	    String account=(String) session.getAttribute("username");
	    java.sql.Connection conn=connect_Mysql.getConn();
		String sql="delete from mail where mailstate=0 and account_mail ="+account;
		Statement stmt = conn.createStatement();
		//stmt.executeUpdate(sql);
		PreparedStatement pst = conn.prepareStatement(sql);
		stmt.executeUpdate(sql);
		ResultSet rs = null;
		sql="select * from email where account_email="+account;
		System.out.println(sql);
		pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();
		
		Properties defaults = new Properties();
		//System.out.println(rs.getString(1)+rs.getString(2));
		//Message[] m=SimpleMailReceiver.fetchInbox(defaults,AuthenticatorGenerator.getAuthenticator("15662397181@163.com", "liwudi123"));
		while(rs.next()) {
			
			
			System.out.println("------------------------------");
			System.out.println(rs.getString(3)+rs.getString(1)+rs.getString(2));
			//Properties defaults = new Properties();
			
			defaults.setProperty("mail.pop3.host", rs.getString(3));
			defaults.setProperty("mail.imap.host", "");
			defaults.setProperty("mail.store.protocol", "pop3"); 
			
			String a=rs.getString(1);
			String b=rs.getString(2);
			
			//System.out.println(rs.getString(1)+rs.getString(2)+defaults.getProperty("mail.pop3.host"));
			//Message[] m=SimpleMailReceiver.fetchInbox(defaults, AuthenticatorGenerator.getAuthenticator(rs.getString(1), rs.getString(2)));
			Message[] m=SimpleMailReceiver.fetchInbox(defaults,AuthenticatorGenerator.getAuthenticator(a, b));
			for(int i=0;i<m.length;++i) {
				MessageParser.parse(conn,m[i]);
				System.out.println(i+"");
			}
			
		}
		
		//return "success";
		connect_Mysql.closeResource(conn, stmt, rs);
		return "success";
	}
}