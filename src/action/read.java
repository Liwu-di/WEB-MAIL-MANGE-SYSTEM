package action;
import action.UserLogin;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;

import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;
public class read  extends ActionSupport implements ModelDriven<id> {
	private static final long serialVersionUID =1l;
	private id user=new id();
	public PreparedStatement pst = null;
	static ResultSet ret = null;
	public List<mail> c;
	//getter
	public id getModel() {
		return user;
	}
	@JSON(name="CONTACT")
	public List<mail> getContact() {
		System.out.println(c.get(0).from+c.get(0).to+c.get(0).subject+c.get(0).context);
		return c;
	}
	public String execute() throws Exception{
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession(); 
			String account=(String)session.getAttribute("username");
			Connection conn=connect_Mysql.getConn();
			ActionContext context = ActionContext.getContext();
			//String sql="select count(*) from tongxun where account_tongxun="+account;
			String sql="select * from mail where account_mail ="+account+" and id="+user.getId();
			System.out.println(sql);
			PreparedStatement pst = conn.prepareStatement(sql);
			int num;
			ResultSet ret = pst.executeQuery();
			c=new ArrayList<mail>(); 
			if(ret.next()) {
				session.setAttribute("from", ret.getString(2));
				session.setAttribute("to", ret.getString(3));
				session.setAttribute("subject", ret.getString(5));
				session.setAttribute("context", ret.getString(7));
			}
			 
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
		
	}
	
}
