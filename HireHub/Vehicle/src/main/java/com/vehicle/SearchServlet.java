package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		
		
		try {
			List<Vehicle> cusDetails = VehicleDBUtil.validate(name, number);
			request.setAttribute("cusDetails", cusDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
			RequestDispatcher dis = request.getRequestDispatcher("DisplayVehicle.jsp");
			dis.forward(request, response);
	}


}
