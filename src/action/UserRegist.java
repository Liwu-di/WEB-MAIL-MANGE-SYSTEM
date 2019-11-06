package action;
import action.UserLogin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;
public class UserRegist  extends ActionSupport implements ModelDriven<regist> {
	private static final long serialVersionUID =1l;
	private regist user=new regist();
	public PreparedStatement pst = null;
	static ResultSet ret = null;
	//getter
	public regist getModel() {
		return user;
	}
	public Boolean dbwrite(regist user) {
		try {
			java.sql.Connection conn=connect_Mysql.getConn();
			String sql ="select password from user where account="+user.getUseraccount();
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			
			if(ret.next()) {
				
				String password = ret.getString(1);
				if(password!=null){
					
					return false;
				}
			}
			else {
				System.out.println("chnegg");
					sql ="insert into user (`account`,`password`,`name`,`telephone`) "+"VALUES('"+user.getUseraccount()+"','"+user.getUserpassword()+"','"+user.getUsername()+"',"
							+user.getUsertel()+")";
					System.out.println(sql);
					//pst = conn.prepareStatement(sql);
					Statement stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					
					connect_Mysql.closeResource(conn, stmt, ret);
					return true;
				}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public Boolean UserExist(regist user) {
		//look up database,is account duplicate
		if( dbwrite(user)) {
			//write db,
			//提示注册成功
			addActionMessage("注册成功");
			
			return true;
		}
		else {
			addActionMessage("注册失败");
			
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
