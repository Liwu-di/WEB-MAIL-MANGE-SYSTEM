package com.athena.mail.receiver;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.List;

import javax.activation.DataSource;
import javax.mail.Address;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Store;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.util.MimeMessageParser;
import org.apache.struts2.ServletActionContext;

import com.mysql.jdbc.Connection;

import db.connect_Mysql;

/**
 * 邮件解析类
 * 
 * @author lwd
 * 
 */
public class MessageParser {
	/**
	 * 邮件附件存放位置
	 */
	private static final String folder = "D:\\upload";
	public static PreparedStatement pst = null;
	static ResultSet ret = null;
	static String fileName;
	public static void parse( java.sql.Connection conn,Message message) {
		
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
		    HttpSession session = request.getSession();
		    String account=(String) session.getAttribute("username");
		    
			
			MimeMessageParser parser = new MimeMessageParser((MimeMessage) message).parse();
			String from = parser.getFrom(); // 获取发件人地址
			List<Address> cc = parser.getCc();// 获取抄送人地址
			List<Address> to = parser.getTo(); // 获取收件人地址
			String replyTo = parser.getReplyTo();// 获取回复邮件时的收件人
			String subject = parser.getSubject(); // 获取邮件主题
			String htmlContent = parser.getHtmlContent(); // 获取Html内容
			String plainContent = parser.getPlainContent(); // 获取纯文本邮件内容（注：有些邮件不支持html）
			
			
			int mailstate=0;//收件箱0.发件箱1.草稿箱2.
			int extrastate=0;//附件有为1，无为0
			Date time=new Date();
			
		    
			//System.out.println(from+"\n"+cc+"\n"+to+"\n"+subject+"\n"+plainContent+"\n"+"\n");
			String t=time.toString();
			
			
			
			List<DataSource> attachments = parser.getAttachmentList();
			if(!attachments.isEmpty()) {
				extrastate=1;
			}
			String sql ="insert mail(`sender`,`recipient`,`mailstate`,`theme`,`content`,`extrastate`,`account_mail`,`time`) values('"
					+from +"','"+to+"','"+mailstate+"','"+subject+"','"+plainContent+"','"+extrastate+"','"+account+"','"+t+"')";
			
			System.out.println(extrastate+"");System.out.println(sql);
			//pst = conn.prepareStatement(sql);
			 Statement stmt = conn.createStatement();
			//stmt.executeUpdate(sql);
			pst = conn.prepareStatement(sql);
			stmt.executeUpdate(sql);
			 // 获取附件，并写入磁盘
			for (DataSource ds : attachments) {
				extrastate=1;
				BufferedOutputStream outStream = null;
				BufferedInputStream ins = null;
				if(!message.getFolder().isOpen()) {
					try {
						message.getFolder().open(Folder.READ_WRITE);
						parse(conn,message);
					} catch (MessagingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}    		 
				}	
				try {
					if(!message.getFolder().isOpen()) {
						 message.getFolder().open(Folder.READ_WRITE);
					}
					 fileName = folder + File.separator + ds.getName();
					outStream = new BufferedOutputStream(new FileOutputStream(fileName));
					ins = new BufferedInputStream(ds.getInputStream());
					byte[] data = new byte[204800];
					int length = -1;
					int n=0;
					while ((length = ins.read(data)) != -1) {
						outStream.write(data, 0, length);
						outStream.flush();
						++n;
						
					}
					System.out.println("附件:" + fileName +"cishu:"+n);
					 sql="SELECT id FROM `mail` ORDER BY id desc LIMIT 1";
					pst = conn.prepareStatement(sql);
					ret = pst.executeQuery();
					if(ret.next()) {
						int id=Integer.parseInt(ret.getString(1));
						sql ="insert extra(`filename`,`mailid`) values('"
								+fileName+"',"+id+")";
						
						System.out.println(sql);
						//pst = conn.prepareStatement(sql);
						  stmt = conn.createStatement();
						//stmt.executeUpdate(sql);
						pst = conn.prepareStatement(sql);
						stmt.executeUpdate(sql);
					}
				} finally {
					if (ins != null) {
						ins.close();
					}
					if (outStream != null) {
						outStream.close();
					}
				}
				
				 
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	public static void parse(Connection conn,Message... messages ) {
		if (messages == null || messages.length == 0) {
			System.out.println("没有任何邮件");
		} else {
			for (Message m : messages) {
				if(!m.getFolder().isOpen()) {
					try {
						m.getFolder().open(Folder.READ_WRITE);
						parse(conn,m);
					} catch (MessagingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}    		 
				}	
				
			}
			// 最后关闭连接
			if (messages[0] != null) {
				Folder folder = messages[0].getFolder();
				if (folder != null) {
					try {
						Store store = folder.getStore();
						folder.close(false);// 参数false表示对邮件的修改不传送到服务器上
						if (store != null) {
							store.close();
						}
					} catch (MessagingException e) {
						// ignore
					}
				}
			}
		}

	}
}