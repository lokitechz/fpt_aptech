package com.aptech.shop.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	public static Connection getConnecttion() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpt_aptech?useSSL=false", "root", "123456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	// public static void main(String[] args) {
	// System.out.println(getConnecttion());
	// }
}
