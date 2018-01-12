package com.aptech.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.aptech.shop.model.Category;
import com.aptech.shop.utility.DbConnect;

public class CategoryDao {
	// Lấy danh sách thể loại
	public ArrayList<Category> getListCategory() throws SQLException, ClassNotFoundException {
		Connection con = DbConnect.getConnecttion();
		String sql = "SELECT * FROM Category";
		ArrayList<Category> list = new ArrayList<>();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		try {
			while (rs.next()) {
				Category cat = new Category();
				cat.setCateId(rs.getInt("category_id"));
				cat.setCateName(rs.getString("category_name"));
				list.add(cat);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// Thêm danh mục
	public boolean addCategory(Category c) throws SQLException {
		try {
			Connection con = DbConnect.getConnecttion();
			String sql = "INSERT INTO Category VALUE(?,?)";
			PreparedStatement ps = con.prepareCall(sql);
			ps.setLong(1, c.getCateId());
			ps.setString(2, c.getCateName());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	// Sửa danh mục
	public boolean updateCategory(Category c) throws SQLException {
		try {
			Connection con = DbConnect.getConnecttion();
			String sql = "UPDATE category SET category_name = ? WHERE category_id = ?";
			PreparedStatement ps = con.prepareCall(sql);
			ps.setString(1, c.getCateName());
			ps.setLong(2, c.getCateId());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	// Xóa danh mục
	public boolean deleteCategory(long category_id) throws SQLException {
		try {
			Connection con = DbConnect.getConnecttion();
			String sql = "DELETE FROM category WHERE category_id = ?";
			PreparedStatement ps = con.prepareCall(sql);
			ps.setLong(1, category_id);
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	// public static void main(String[] args) throws ClassNotFoundException,
	// SQLException {
	// CategoryDao dao = new CategoryDao();
	// for (Category cat : dao.getListCategory()) {
	// System.out.println(cat.getCateId() + "-" + cat.getCateName());
	// }
	// }
}
