package com.flyAway.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Flights {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="airlineName")
	private String airlineName;
	
	@Column(name="airlineId")
	private String airlineId;
	
	@Column(name="source")
	private String source;
	
	@Column(name="destination")
	private String destination;
	
	@Column(name="availabilityDate")
	private String availabilityDate;
	
	@Column(name="availableSeats")
	private int totalAvailableSeats;
	
	@Column(name="price")
	private int price;
	
	public Flights() {
		
	}
	
	public Flights(String airlineId, String airlineName, String source, String destination, int totalAvailableSeats, String availabilityDate,int price) {
		super();
		this.airlineName = airlineName;
		this.airlineId = airlineId;
		this.source = source;
		this.destination = destination;
		this.totalAvailableSeats = totalAvailableSeats;
		this.availabilityDate=availabilityDate;
		this.price=price;
	}

	public String getAirlineName() {
		return airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}
	public String getAirlineId() {
		return airlineId;
	}
	public void setAirlineId(String airlineId) {
		this.airlineId = airlineId;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getTotalAvailableSeats() {
		return totalAvailableSeats;
	}
	public void setTotalAvailableSeats(int totalAvailableSeats) {
		this.totalAvailableSeats = totalAvailableSeats;
	}

	public String getAvailabilityDate() {
		return availabilityDate;
	}

	public void setAvailabilityDate(String availabilityDate) {
		this.availabilityDate = availabilityDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
