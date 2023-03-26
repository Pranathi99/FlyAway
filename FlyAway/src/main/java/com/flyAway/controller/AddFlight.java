package com.flyAway.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.flyAway.util.FlightUtil;

@WebServlet("/AddFlight")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/flyawayapp")
	private DataSource datasource;
	
	private FlightUtil flights;
	ServletConfig servletConfig;
    
    public void init(ServletConfig config) throws ServletException {
    	try {
    		super.init(config);
    		this.servletConfig = config;
			flights=new FlightUtil(datasource);
		} 
    	catch (Exception ex) {
			throw new ServletException();
		}
    }
       
    public AddFlight() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String airlineId=request.getParameter("airlineId");
		String airlineName=request.getParameter("airlineName");
		String source=request.getParameter("src");
		String destination=request.getParameter("dest");
		String availabilityDate=request.getParameter("date");
		String totalAvailableSeats=request.getParameter("seats");
		String price=request.getParameter("price");
		
		flights.addFlight(airlineId, airlineName, source, destination, totalAvailableSeats,availabilityDate,price );
		
		request.setAttribute("Flights_list", flights.getAllFlights());
		RequestDispatcher rd=request.getRequestDispatcher("viewFlightsList.jsp");
		rd.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
