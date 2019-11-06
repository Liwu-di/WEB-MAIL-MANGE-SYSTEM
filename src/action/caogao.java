package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import java.util.Properties;

import javax.mail.Session;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import db.connect_Mysql;

public class caogao  extends ActionSupport implements ModelDriven<Send>{
	private static final long serialVersionUID =1l;
	private Send email=new Send();
	public PreparedStatement pst = null;
	static ResultSet ret = null;
	private String email_begin;
	private String pwd;
	private String pop3;
	private String smtp;
	private String email_end;
	private String port;
	private String[] group;
 	//private UserLogin user=new UserLogin();;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession(); 
	String account=(String)session.getAttribute("username");
	public Send getModel() {
		return email;
	}
	public void trans(String a,String b,String c,String d) {
		pwd = a;
		 pop3 = b;
		 smtp = c;
		 port=d;
	}
	public Boolean dbemail(Send email) {
		
		String sql="select * from email where email_no="+"'"+email.getBegin()+"'";
		System.out.println(sql);
		Connection conn;
		try {
			conn = connect_Mysql.getConn();
			pst = conn.prepareStatement(sql);
			
			ret = pst.executeQuery();
			
			if(ret.next()) {
				
				
			// pwd = ret.getString(2);
			//	String pop3 = ret.getString(3);
			//	String smtp = ret.getString(4);
			//	String port=ret.getString(6);
				trans(ret.getString(2),ret.getString(3),ret.getString(4),ret.getString(7));
				
				return true;
			}
			else {
				return false;
			}	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail, String subject, String context) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
        message.setFrom(new InternetAddress(sendMail, "", "UTF-8"));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "", "UTF-8"));

        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
        message.setSubject(subject, "UTF-8");

        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
        message.setContent(context, "text/html;charset=UTF-8");

        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		
		
			
			
			String sql="";
			Connection conn;
			conn = connect_Mysql.getConn();
			
			
			
			int mailstate=2;//收件箱0.发件箱1.草稿箱2.
			int extrastate=0;//附件有为1，无为0
			Date time=new Date();
			
					
					
			        String t=time.toString();
					 sql ="insert mail(`sender`,`recipient`,`mailstate`,`theme`,`content`,`extrastate`,`account_mail`,`time`) values('"
							+email.getBegin() +"','"+email.getDes()+"','"+mailstate+"','"+email.getSubject()+"','"+email.getContext()+"','"+extrastate+"','"+account+"','"+t+"')";
					
					System.out.println(sql);
					//pst = conn.prepareStatement(sql);
					 Statement stmt = conn.createStatement();
					//stmt.executeUpdate(sql);
					pst = conn.prepareStatement(sql);
					stmt.executeUpdate(sql);
				
		
			sql="SELECT id FROM `mail` ORDER BY id desc LIMIT 1";
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			boolean extra=false;
			int mailid;
			if(ret.next()) {
				mailid =Integer.parseInt(ret.getString(1))+1;
				sql="select * from extra where mailid="+mailid;
				pst = conn.prepareStatement(sql);
				ret = pst.executeQuery();
				if(ret.next()) {
					extra=true;
				}else {
					extra=false;
				}
			}
			if(extra) {
		    	extrastate=1;
		    }else {
		    	extrastate=0;
		    }
			
		    
			
			
			

	        // 7. 关闭连接
	        
			return SUCCESS;
		
		
	}
	
}
