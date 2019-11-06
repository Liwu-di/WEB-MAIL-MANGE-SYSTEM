package action;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;
public class AddContact  extends ActionSupport implements ModelDriven<Contact> {
	private static final long serialVersionUID =1l;
	private Contact user=new Contact();
	public PreparedStatement pst = null;
	static ResultSet ret = null;

	//getter
	public Contact getModel() {
		return user;
	}
	
	public Boolean dbwrite(Contact user2) {
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
		    HttpSession session = request.getSession();
		    String account=(String) session.getAttribute("username");
			java.sql.Connection conn=connect_Mysql.getConn();
			String sql ="select email from tongxun where account_tongxun="+account;
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			while(ret.next()) {
				if(user2.getAddress().equals(ret.getString(1))) {
					return false;
				}
			}
			
				
					sql ="insert into tongxun (`name`,`account_tongxun`,`email`,`group`)  "+"VALUES('"+user2.getName()+"','"+account+"','"
					+user2.getAddress()+"','"+user2.getGroup()+"')";
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
	public Boolean UserExist(Contact user2) {
		//look up database,is account duplicate
		if( dbwrite(user2)) {
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