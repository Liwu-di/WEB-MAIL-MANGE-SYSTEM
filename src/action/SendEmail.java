package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Multipart;
import javax.mail.Session;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import java.util.Date;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;

import db.connect_Mysql;

public class SendEmail  extends ActionSupport implements ModelDriven<Send>{
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
	private String sql;
	private String[] group;
	Connection conn;
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
	public String cao(){
		return "success";
	}
	public Boolean dbemail(Send email,Connection conn) {
		
		String sql="select * from email where email_no="+"'"+email.getBegin()+"'";
		System.out.println(sql);
		//Connection conn;
		try {
			//conn = connect_Mysql.getConn();
			pst = conn.prepareStatement(sql);
			
			ret = pst.executeQuery();
			
			if(ret.next()) {
				
				
			// pwd = ret.getString(2);
			//	String pop3 = ret.getString(3);
			//	String smtp = ret.getString(4);
			//	String port=ret.getString(6);
				trans(ret.getString(2),ret.getString(3),ret.getString(4),ret.getString(7));//可能不一样
				
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
	public int extravalue(Connection conn) throws SQLException {
		//Connection conn;
	//	conn = connect_Mysql.getConn();
		sql="SELECT id FROM `mail` ORDER BY id desc LIMIT 1";
		pst = conn.prepareStatement(sql);
		ret = pst.executeQuery();
		boolean extra=false;
		int mailid;
		if(ret.next()) {
			mailid =Integer.parseInt(ret.getString(1))+1;
			sql="select * from extra where mailid="+mailid;
			System.out.println(sql);
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			if(ret.next()) {
				return 1;
				}
			}
		return 0;

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
	public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail, String subject, String context,String path) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
        message.setFrom(new InternetAddress(sendMail, "", "UTF-8"));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "", "UTF-8"));

        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
        message.setSubject(subject, "UTF-8");
        Multipart multipart = new MimeMultipart();
        // if(context != null && !"".equals(context)){  
             BodyPart part = new MimeBodyPart();  
             part.setContent(context, "text/plain;charset=utf-8");//设置邮件文本内容  
             multipart.addBodyPart(part);  
       //  }  
        // String attachFileNames = "C:\\Users\\Administrator\\Desktop\\132.txt";  
        // int leng = attachFileNames == null ? 0 : attachFileNames.length; 
         BodyPart part1 = new MimeBodyPart();  
         // 根据文件名获取数据源  
         DataSource dataSource = new FileDataSource(path);  
         DataHandler dataHandler = new DataHandler(dataSource);  
         // 得到附件本身并至入BodyPart  
         part1.setDataHandler(dataHandler);  
         // 得到文件名同样至入BodyPart  
         part1.setFileName(MimeUtility.encodeText(dataSource.getName()));  
         multipart.addBodyPart(part1);
        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
        message.setContent(multipart);

        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		
		conn = connect_Mysql.getConn();
		if(dbemail(this.email,conn)) {
			
			
			Properties props = new Properties();     
			// 参数配置
	        props.setProperty("mail.transport.protocol", "smtp"); // 使用的协议（JavaMail规范要求）
	        props.setProperty("mail.smtp.host", smtp);  // 发件人的邮箱的 SMTP 服务器地址
	        props.setProperty("mail.smtp.auth", "true");
	        props.setProperty("mail.smtp.port", port);
	        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	        props.setProperty("mail.smtp.socketFactory.fallback", "false");
	        props.setProperty("mail.smtp.socketFactory.port", port);
	        
	        Session session = Session.getInstance(props);
	        session.setDebug(true);
	        int extrastate=extravalue(conn);//附件有为1，无为0
	        sql="select * from tongxun where `group`="+"'"+email.getGroup()+"'";
			System.out.println(sql);
		//	Connection conn;
		//	conn = connect_Mysql.getConn();
			pst = conn.prepareStatement(sql);
			
			ret = pst.executeQuery();
			
			Transport transport = session.getTransport();
			transport.connect(email.getBegin(), pwd);
			int mailstate=1;//收件箱0.发件箱1.草稿箱2.
			
			Date time=new Date();
			MimeMessage message;
			if(email.getGroup().equals("")) {
				if(extrastate==0) {
					
					 message = createMimeMessage(session, email.getBegin(), email.getDes(),email.getSubject(),email.getContext());
					 transport.sendMessage(message, message.getAllRecipients());
				        String t=time.toString();
						 sql ="insert mail(`sender`,`recipient`,`mailstate`,`theme`,`content`,`extrastate`,`account_mail`,`time`) values('"
								+email.getBegin() +"','"+email.getDes()+"','"+mailstate+"','"+email.getSubject()+"','"+email.getContext()+"','"+extrastate+"','"+account+"','"+t+"')";
						
						System.out.println(sql);
						//pst = conn.prepareStatement(sql);
						 Statement stmt = conn.createStatement();
						//stmt.executeUpdate(sql);
						pst = conn.prepareStatement(sql);
						stmt.executeUpdate(sql);
				}
				else {
					sql="SELECT id FROM `mail` ORDER BY id desc LIMIT 1";
					pst = conn.prepareStatement(sql);
					ret = pst.executeQuery();
					int mailid;
					String path;
					if(ret.next()) {
						mailid =Integer.parseInt(ret.getString(1))+1;
						sql="select * from extra where mailid="+mailid;
						pst = conn.prepareStatement(sql);
						ret = pst.executeQuery();
						if(ret.next()) {
							path="D:\\upload\\"+ret.getString(2);//修改
							message = createMimeMessage(session, email.getBegin(), email.getDes(),email.getSubject(),email.getContext(),path);
							transport.sendMessage(message, message.getAllRecipients());
							
							String t=time.toString();
							 sql ="insert mail(`sender`,`recipient`,`mailstate`,`theme`,`content`,`extrastate`,`account_mail`,`time`) values('"
									+email.getBegin() +"','"+email.getDes()+"','"+mailstate+"','"+email.getSubject()+"','"+email.getContext()+"','"+extrastate+"','"+account+"','"+t+"')";
							
							System.out.println(sql);
							//pst = conn.prepareStatement(sql);
							 Statement stmt = conn.createStatement();
							//stmt.executeUpdate(sql);
							pst = conn.prepareStatement(sql);
							stmt.executeUpdate(sql);
						}
						}
					 
				}
		        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
		        
			}
			else{System.out.println("+++++++++++++");
				while(ret.next()) {
					
					if(extrastate==0) {
						 
						message = createMimeMessage(session, email.getBegin(), ret.getString(4),email.getSubject(),email.getContext());
						transport.sendMessage(message, message.getAllRecipients());
				        String t=time.toString();
						 sql ="insert mail(`sender`,`recipient`,`mailstate`,`theme`,`content`,`extrastate`,`account_mail`,`time`) values('"
								+email.getBegin() +"','"+ret.getString(4)+"','"+mailstate+"','"+email.getSubject()+"','"+email.getContext()+"','"+extrastate+"','"+account+"','"+t+"')";
						
						System.out.println(sql);
						//pst = conn.prepareStatement(sql);
						 Statement stmt = conn.createStatement();
						//stmt.executeUpdate(sql);
						pst = conn.prepareStatement(sql);
						stmt.executeUpdate(sql);
					}
					else {
						 System.out.println("------------");
						sql="SELECT id FROM `mail` ORDER BY id desc LIMIT 1";
						pst = conn.prepareStatement(sql);
						ret = pst.executeQuery();
						int mailid;
						String path;
						if(ret.next()) {
							mailid =Integer.parseInt(ret.getString(1))+1;
							sql="select * from extra where mailid="+mailid;
							pst = conn.prepareStatement(sql);
							ret = pst.executeQuery();
							if(ret.next()) {
								path="D:\\upload\\"+ret.getString(2);//修改
								 message = createMimeMessage(session, email.getBegin(), ret.getString(4),email.getSubject(),email.getContext(),path);
								 transport.sendMessage(message, message.getAllRecipients());
							        String t=time.toString();
									 sql ="insert mail(`sender`,`recipient`,`mailstate`,`theme`,`content`,`extrastate`,`account_mail`,`time`) values('"
											+email.getBegin() +"','"+ret.getString(4)+"','"+mailstate+"','"+email.getSubject()+"','"+email.getContext()+"','"+extrastate+"','"+account+"','"+t+"')";
									
									System.out.println(sql);
									//pst = conn.prepareStatement(sql);
									 Statement stmt = conn.createStatement();
									//stmt.executeUpdate(sql);
									pst = conn.prepareStatement(sql);
									stmt.executeUpdate(sql);
							}
							}
						
					}

			        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
			       
				
				}
			}
			
			
			

	        // 7. 关闭连接
	        transport.close();
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	
}
