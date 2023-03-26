package com.flyAway.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.flyAway.model.Flights;
import com.flyAway.util.FlightUtil;

@WebServlet("/Home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@Resource(name="jdbc/flyawayapp")
	private DataSource datasource;
	
	private FlightUtil flightUtil;
	
	ServletContext context;

	ServletConfig servletConfig;
	
    public HomeServlet() {
        super();
    }
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	try {
    		super.init(config);
            this.servletConfig = config;
			flightUtil=new FlightUtil(datasource);
		} 
    	catch (Exception ex) {
			throw new ServletException();
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    ServletContext context = servletConfig.getServletContext();
			String src=request.getParameter("source");
			String dest=request.getParameter("destination");
			String date=request.getParameter("travelDate");
			String noOfSeats=request.getParameter("noOfSeats");
			
			System.out.println(src);
			System.out.println(dest);
			
			if(date!=null && (src==null || src.equals("")) && (dest==null || dest.equals("")))
			{
				request.setAttribute("flight_list", flightUtil.getFlightsByDate(date,noOfSeats));
			}
			else
			{
				request.setAttribute("flight_list", flightUtil.getFlights(date,src,dest,noOfSeats));
			}
			context.setAttribute("noOfSeats", noOfSeats);
			
			RequestDispatcher rd=request.getRequestDispatcher("viewAvailableFlights.jsp");
			rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = servletConfig.getServletContext();
		doGet(request, response);
	}

}
