package com.flyAway.controller;

import java.io.IOException;
import java.util.List;
import java.util.Set;

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

@WebServlet("/getDetails")
public class GetDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name="jdbc/flyawayapp")
	private DataSource datasource;
	
	private FlightUtil flights;
	ServletConfig servletConfig;
	
    public GetDetails() {
        super();
    }
    
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
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param=request.getParameter("param");
		if(param.equals("getLocList"))
		{
			List<Object>list=flights.getLocations();
			
			request.setAttribute("Loc_list",list);
			
			RequestDispatcher rd=request.getRequestDispatcher("viewLocations.jsp");
			rd.forward(request, response);
		}
		if(param.equals("getAirlinesList"))
		{
			Set<String>list=flights.getAirlines();
			
			request.setAttribute("Airlines_list",list);
			
			RequestDispatcher rd=request.getRequestDispatcher("viewAirlines.jsp");
			rd.forward(request, response);
		}
		if(param.equals("getFlightsList"))
		{
			List<Flights>list=flights.getAllFlights();
			
			request.setAttribute("Flights_list",list);
			
			RequestDispatcher rd=request.getRequestDispatcher("viewFlightsList.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
