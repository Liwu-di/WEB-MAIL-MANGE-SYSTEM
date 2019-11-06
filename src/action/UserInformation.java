package action;
import action.UserLogin;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;
public class UserInformation  extends ActionSupport implements ModelDriven<Information> {
	private static final long serialVersionUID =1l;
	private Information user=new Information();
	public PreparedStatement pst = null;
	static ResultSet ret = null;

	//getter
	public Information getModel() {
		return user;
	}
	public Boolean db(Information user2) {
		HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession(); 
	    String account= (String) session.getAttribute("username");
		String sql="update user set name='" +user2.getName()+"' ,telephone='"+user2.getTel()+"',address='"+
	user2.getAddress()+"',age="+user2.getAge()+",sex='"+user2.getSex()+"',qq="+user2.getQq()+" where account='"+account+"'"; 
		System.out.println(sql);
		Connection conn;
		try {
			conn = connect_Mysql.getConn();
			pst = conn.prepareStatement(sql);
			pst.execute();
			return true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public Boolean UserUpdate(Information user) {
		//look up database
		
		if(db(user)) {
			return true;
		}
		else {
			return false;
		}
			
	}
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		if(UserUpdate(this.user)) {
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