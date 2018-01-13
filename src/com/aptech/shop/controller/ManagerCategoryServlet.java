package com.aptech.shop.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aptech.shop.dao.CategoryDao;
import com.aptech.shop.model.Category;

@WebServlet("/ManagerCategoryServlet")
public class ManagerCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Category category = new Category();
	CategoryDao categoryDao = new CategoryDao();

	public ManagerCategoryServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String cateName = request.getParameter("CateName");
		String url = "";

		try {
			categoryDao.addCategory(cateName);
			url = "/Admin/ManagerCategory.jsp";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
