package action;
import action.UserLogin;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import action.Contact;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;

import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import db.connect_Mysql;

public class UserJson extends ActionSupport {
	private static final long serialVersionUID=1L;
	private UserLogin user =new UserLogin(); 
	public ResultSet r;
	public  List<Contact> c;
	public String json;
	
	
	
	@JSON(name="CONTACT")
	public List getContact() {
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
			String sql="select count(*) from tongxun ";
			PreparedStatement pst = conn.prepareStatement(sql);
			int num;
			ResultSet ret = pst.executeQuery();
			if(ret.next()) {
				num=Integer.parseInt(ret.getString(1));
				context.put("num",num );

			}
			c=new ArrayList<Contact>(); 
			
			//sql="select * from tongxun where account_tongxun="+account;
			System.out.println("+++++++++++++++++++++++++");
		    sql="select * from tongxun where account_tongxun='"+account+"'";
			System.out.println(sql);
			
			conn = connect_Mysql.getConn();
			 pst = conn.prepareStatement(sql);
			
			 ret = pst.executeQuery();
			 r=ret;
			 
			int i=0;
			
			while(ret.next()) {
				c.add(new Contact(ret.getString(4),ret.getString(2),ret.getString(5)));			
				
				//System.out.print(c[i].getAddress());
				//c[i].setName(ret.getString(2));
				//c[i].setGroup(ret.getString(5));
				//++i;
			}
			 json=JSONArray.toJSONString(c);
			return SUCCESS;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;
		
	}
	
	
}
