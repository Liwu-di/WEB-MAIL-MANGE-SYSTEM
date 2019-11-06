package action;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import db.connect_Mysql;

public class upload {
	private File f;
	private String fFileName;
	private String fContentType;
	public PreparedStatement pst = null;
	static ResultSet ret = null;
	public int mailid;
	public File getF() {
		return f;
	}

	public void setF(File file) {
		this.f = file;
	}

	public String getFFileName() {
		return fFileName;
	}

	public void setFFileName(String fileFileName) {
		this.fFileName = fileFileName;
	}

	public String getFContentType() {
		return fContentType;
	}

	public void setFContentType(String fileContentType) {
		this.fContentType = fileContentType;
	}
	public String execute() throws Exception{
		// look up database ,if exists and is right ,retur success
		//test
		
		if(f!=null) {
			HttpServletRequest request = ServletActionContext.getRequest();
		    HttpSession session = request.getSession();
			String dataDir="D:\\upload\\";
			
			String sql ="SELECT id FROM `mail` ORDER BY id desc LIMIT 1";
			java.sql.Connection conn=connect_Mysql.getConn();
			System.out.println(sql);
			//pst = conn.prepareStatement(sql);
			Statement stmt = conn.createStatement();
			//stmt.executeUpdate(sql);
			pst = conn.prepareStatement(sql);
			ret = pst.executeQuery();
			if(ret.next()) {
				mailid=Integer.parseInt(ret.getString(1))+1;				
			}else {
				mailid=1;
			}
			
			System.out.println(mailid+"");
			File savedFile= new File(dataDir,fFileName);
			System.out.println(savedFile.getAbsolutePath());
			f.renameTo(savedFile);
			sql="insert extra(`filename`,`mailid`) values("+"'"+fFileName+"',"+mailid+")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			connect_Mysql.closeResource(conn, stmt, ret);
			
		}
		else {
			return "ERROR";
		}
		return "success";
//	String rootPath = "D:\\upload\\";
//	
//	//处理文件名中包含绝对路径的问题
//	String fileName  = fFileName;
//	System.out.println(f);
//	int index = fileName.lastIndexOf("\\");
//	if (index != -1) {
//		fileName = fileName.substring(index + 1);
//	}
//	
//	//给文件名称添加UUID前缀，处理文件同名问题
//	String saveName = UUID.randomUUID().toString() + "_" + fileName;
//	
//	//得到HashCode,转换成16进制
//	int code = fileName.hashCode();
//	String hex = Integer.toHexString(code);
//	
//	//获取hex的前两个字母，和root目录连接变成文件保存的目录
//	String savePath = rootPath + "\\" + hex.charAt(0) + "\\" + hex.charAt(1);
//	File dirFile = new File(savePath);
//	
//	//如果不存在则创建目录
//	if (!dirFile.exists()) {
//		dirFile.mkdirs();
//	}
//	
//	//创建目标文件，指定其所在路径
//	File destFile = new File(dirFile, saveName);
//	
//	//保存文件到指定目录下
//	FileUtils.copyFile(f, destFile);
//	
//	return "success";
	}
}
