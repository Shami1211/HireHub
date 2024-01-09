package com.vehicle;



import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = VehicleDBUtil.updatecustomer(id, name, number, description);
		
		if(isTrue == true) {
			
			List<Vehicle> cusDetails = VehicleDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("DisplayVehicle.jsp");
			dis.forward(request, response);
		}
		else {
			List<Vehicle> cusDetails = VehicleDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("DisplayVehicle.jsp");
			dis.forward(request, response);
		}
	}

}
