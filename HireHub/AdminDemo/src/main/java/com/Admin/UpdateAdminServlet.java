package com.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		boolean isTrue;
		
		isTrue =  AdminDBUtil.updateAdmin(id, name, nic, phone, address);
		
		if (isTrue == true) {

			List<Admin> admDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminAccount.jsp");
			dis.forward(request, response);
		} 
		else {
			

			RequestDispatcher dis2 = request.getRequestDispatcher("AdminAccount.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
