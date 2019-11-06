package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class connect_Mysql {
	 public static String HOST = "localhost";
	    public static String PORT = "3306";
	    public static String DATABASE_NAME = "test";// wait for designing database
	    public static String USER_NAME = "root";
	    public static String PASSWORD = "LiWuDi1998328.";
	    
	    /**
	     * 获取数据库连接
	     * @return 数据库连接
	     */
	    public static Connection getConn() throws Exception {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        System.out.println("成功加载驱动");
	        
	        //String url = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE_NAME + "?serverTimezone=UTC&user=" + USER_NAME + "&password=" + PASSWORD + "&useUnicode=true&characterEncoding=UTF8";
	        String url="jdbc:mysql://localhost:3306/test?serverTimezone=UTC&user=root&password=123456aa&useUnicode=true&characterEncoding=UTF8";
	        Connection connection = DriverManager.getConnection(url);
	        System.out.println("成功获取连接");
	        return connection;
	    }
	    
	    /**
	     * 关闭资源
	     */
	    public static void closeResource(Connection conn, Statement st, ResultSet rs) {
	        if (rs != null) {
	            try {
	                rs.close();
	            } catch (SQLException e) {
	                // TODO 处理异常
	                e.printStackTrace();
	            }
	        }
	        if (st != null) {
	            try {
	                st.close();
	            } catch (SQLException e) {
	                // TODO 处理异常
	                e.printStackTrace();
	            }
	        }
	        if (conn != null) {
	            try {
	                conn.close();
	            } catch (SQLException e) {
	                // TODO 处理异常
	                e.printStackTrace();
	            }
	        }
	        System.out.println("成功关闭资源");
	    }
    
	public void insert() {
	
	}
	public void delete() {
		
	}
	public void update() {
		
	}
	public void select() {
		
	}
    public static void main(String[] args) throws Exception {
    	getConn();
    }
    
    
    
}