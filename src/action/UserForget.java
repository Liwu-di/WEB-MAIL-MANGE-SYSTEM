package action;
import action.UserLogin;
import db.connect_Mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;
public class UserForget  extends ActionSupport implements ModelDriven<Forget> {
	private static final long serialVersionUID =1l;
	private Forget user=new Forget();
	public PreparedStatement pst = null;
	static ResultSet ret = null;
	//getter
	public Forget getModel() {
		return user;
	}
	public Boolean dblookup(Forget user) {
		String sql="select name from user where account='"+user.getUseraccount()+"'";
		Connection conn;
		try {
			conn = connect_Mysql.getConn();
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			
			
			if(ret.next()) {
				
				if(user.getUsername().equals(ret.getString(1))) {
					System.out.println(sql);
					sql ="update user set password=" + user.getUserpassword1()+" where account="+user.getUseraccount();
					System.out.println(sql);
					//pst = conn.prepareStatement(sql);
					Statement stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					
					connect_Mysql.closeResource(conn, stmt, ret);
					return true;
				}
			}
			else {
				return false;
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return false;
	}
	public Boolean UserExist(Forget user) {
		//look up database
		if( dblookup(user)) {
			addActionMessage("修改成功");
			return true;
		}
		else {
			addActionMessage("修改失败");
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
