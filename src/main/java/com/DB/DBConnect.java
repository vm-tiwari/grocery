package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;

public class DBConnect {
	private static Connection conn;

	  public static Connection getConn()

	  {
	    try {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "admin");
	    } catch (Exception e) {
	      
	      e.printStackTrace();
	    }
	    return conn;

	  }

}
