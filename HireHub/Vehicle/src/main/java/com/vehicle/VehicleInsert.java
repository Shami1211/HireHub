package com.vehicle;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VehicleInsert")
public class VehicleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = VehicleDBUtil.insertcustomer(name,number, description);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SearchVehicle.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
