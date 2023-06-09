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

import com.flyAway.model.Flights;
import com.flyAway.util.FlightUtil;

@WebServlet("/LoadFlight")
public class LoadFlight extends HttpServlet {
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
			// TODO Auto-generated catch block
			throw new ServletException();
		}
    }
    
    public LoadFlight() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String flight_id=request.getParameter("flightId");
		Flights flight=flights.getFlightById(flight_id);
		
		request.setAttribute("FLIGHT", flight);
		RequestDispatcher rd=request.getRequestDispatcher("updateFlight.jsp");
		rd.forward(request,response);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
