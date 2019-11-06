package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import db.connect_Mysql;

public class Logout  extends ActionSupport  {
	private static final long serialVersionUID =1l;
	public Boolean isInvalidate(HttpSession session) {
		session.invalidate();
		return true;
	}
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
	    HttpSession session = request.getSession(); 
		if(isInvalidate(session)) {
			response.sendRedirect("login-regist-forgetPass.jsp");
			return SUCCESS;
		}
		else {
			response.sendRedirect("login-regist-forgetPass.jsp");
			return ERROR;
		}
		
	}
	
}