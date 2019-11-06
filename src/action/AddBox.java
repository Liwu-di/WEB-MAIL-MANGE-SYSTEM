package action;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;
public class AddBox  extends ActionSupport implements ModelDriven<Box> {
	private static final long serialVersionUID =1l;
	private Box user=new Box();
	public PreparedStatement pst = null;
	static ResultSet ret = null;

	//getter
	public Box getModel() {
		return user;
	}
	public Boolean dbwrite(Box user) {
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
		    HttpSession session = request.getSession();
		    String account=(String) session.getAttribute("username");
			java.sql.Connection conn=connect_Mysql.getConn();
			String sql ="select email_no from email where account_email="+account;
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			while(ret.next()) {
				if(user.getAddress().equals(ret.getString(1))) {
					return false;
				}
			}
			
				
					sql ="insert into email "+"VALUES('"+user.getAddress()+"','"+user.getPass()+"','"+user.getPop3()+"','"
							+user.getSmtp()+"','"+account+"','"+user.getPop3port()+"','"+user.getSmtpport()+"','"+user.getPass2()+"')";
					System.out.println(sql);
					//pst = conn.prepareStatement(sql);
					Statement stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					
					connect_Mysql.closeResource(conn, stmt, ret);
					return true;
				
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public Boolean UserExist(Box user) {
		//look up database,is account duplicate
		if( dbwrite(user)) {
			//write db,
			//提示注册成功
			addActionMessage("添加成功");
			
			return true;
		}
		else {
			addActionMessage("添加失败");
			
			return false;
		}
			
	}
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		if(UserExist(this.user)) {
			System.out.println("success");
			ActionContext context=ActionContext.getContext();
			context.put("user", user);
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	
}
