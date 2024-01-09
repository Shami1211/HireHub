package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminInsertServlet")
public class AdminInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.insertadmin(name, nic, phone, address);
		
		if (isTrue == true) {

			String alertMessage = "Submit Successful";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AdminLogin.jsp';</script>");
		   
		} 
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucessfull.jsp");
			dis2.forward(request, response);
		}

		
		
	}

}
