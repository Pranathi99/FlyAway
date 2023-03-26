package com.flyAway.model;

public class FlightDetails {
	private int noOfSeats;
	private Flights flight;
	public int getNoOfSeats() {
		return noOfSeats;
	}
	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}
	public Flights getFlight() {
		return flight;
	}
	public void setFlight(Flights flight) {
		this.flight = flight;
	}
	public FlightDetails(int noOfSeats, Flights flight) {
		super();
		this.noOfSeats = noOfSeats;
		this.flight = flight;
	}
	public FlightDetails() {
		super();
	}
	
	
}
