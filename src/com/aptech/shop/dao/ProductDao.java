package com.aptech.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.aptech.shop.model.Product;
import com.aptech.shop.utility.DbConnect;

public class ProductDao {

	public ArrayList<Product> getListProductByCategory(long cateId) throws SQLException {
		Connection con = DbConnect.getConnecttion();
		String sql = "SELECT * FROM product WHERE category_id = '" + cateId + "'";
		PreparedStatement ps = con.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Product> list = new ArrayList<>();
		while (rs.next()) {
			Product product = new Product();
			product.setProductId(rs.getLong("product_id"));
			product.setProductName(rs.getString("product_name"));
			product.setProductImage(rs.getString("product_image"));
			product.setProductPrice(rs.getDouble("product_price"));
			product.setProductDes(rs.getString("product_description"));
			list.add(product);
		}
		return list;
	}

	public Product getProduct(long productId) throws SQLException {
		Connection con = DbConnect.getConnecttion();
		String sql = "SELECT * FROM product WHERE product_id = '" + productId + "'";
		PreparedStatement ps = con.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Product product = new Product();
		while (rs.next()) {
			product.setProductId(rs.getLong("product_id"));
			product.setProductName(rs.getString("product_name"));
			product.setProductImage(rs.getString("product_image"));
			product.setProductPrice(rs.getDouble("product_price"));
			product.setProductDes(rs.getString("product_description"));
		}
		return product;

	}

	// public static void main(String[] args) throws ClassNotFoundException,
	// SQLException {
	// ProductDao dao = new ProductDao();
	// for (Product pro : dao.getListProductByCategory(7)) {
	// System.out.println(pro.getProductId() + "-" + pro.getProductName());
	// System.out.println(pro.getProductImage());
	// }
	// }
}
