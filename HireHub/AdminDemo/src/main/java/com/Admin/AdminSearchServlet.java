package com.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminSearchServlet")
public class AdminSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		try {
		List<Admin> admDetails = AdminDBUtil.validate(username, password);
		request.setAttribute("admDetails", admDetails);
		}catch(Exception e) {
		e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("AdminAccount.jsp");
		dis.forward(request, response);
	}
}


