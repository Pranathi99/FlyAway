package com.flyAway.model;

public class Passenger {
	private String firstName,lastName;
	private String email;
	private String mobileNo;
	private Address address;
	private FlightDetails flightDetails;
	
	public Passenger() {
		super();
	}
	public Passenger(String firstName, String lastName, String email, String mobileNo, Address address,FlightDetails flightDetails) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.mobileNo = mobileNo;
		this.address = address;
		this.flightDetails=flightDetails;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Passenger [firstName=" + firstName + ", lastName=" + lastName + ", mobileNo=" + mobileNo + ", address="
				+ address + "]";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public FlightDetails getFlightDetails() {
		return flightDetails;
	}
	public void setFlightDetails(FlightDetails flightDetails) {
		this.flightDetails = flightDetails;
	}
}
