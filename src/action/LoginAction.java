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
public class LoginAction  extends ActionSupport implements ModelDriven<UserLogin> {
	private static final long serialVersionUID =1l;
	private UserLogin user=new UserLogin();
	public PreparedStatement pst = null;
	static ResultSet ret = null;

	//getter
	public UserLogin getModel() {
		return user;
	}
	public Boolean db(UserLogin user) {
		String sql="select password from user where account="+user.getUsername();
		Connection conn;
		try {
			conn = connect_Mysql.getConn();
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			
			if(ret.next()) {
				String password = ret.getString(1);
				if(password.equals(user.getPassword())){
					return true;
				}
				else {
					return false;
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public Boolean UserExist(UserLogin user) {
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
		if(UserExist(this.user)) {
			System.out.println("success");
			ActionContext context=ActionContext.getContext();
			context.put("user", user);
			HttpServletRequest request = ServletActionContext.getRequest();

		    HttpSession session = request.getSession(); session.setAttribute("username", user.getUsername());
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	
}
