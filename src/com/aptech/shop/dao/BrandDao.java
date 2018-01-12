package com.aptech.shop.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.aptech.shop.model.Brand;
import com.aptech.shop.utility.DbConnect;
import com.mysql.cj.jdbc.PreparedStatement;

public class BrandDao {
	// Lấy danh sách thể loại
	public ArrayList<Brand> getListBrand() throws SQLException, ClassNotFoundException {
		Connection con = DbConnect.getConnecttion();
		String sql = "SELECT * FROM Brands";
		ArrayList<Brand> list = new ArrayList<>();
		PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		try {
			while (rs.next()) {
				Brand brand = new Brand();
				brand.setBrandId(rs.getInt("brand_id"));
				brand.setBrandName(rs.getString("brand_name"));
				list.add(brand);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

//	public static void main(String[] args) throws ClassNotFoundException, SQLException {
//		BrandDao dao = new BrandDao();
//		for (Brand brand : dao.getListBrand()) {
//			System.out.println(brand.getBrandId() + "-" + brand.getBrandName());
//		}
//	}
}
