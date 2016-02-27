package com.tripapplication.RegisterDAO;

import java.sql.Timestamp;
import java.util.Date;

public class TripApplicationRegisterationDAO {
	 private String firstName; 
	 private String lastName; 
	 private String middleName;
	 private Date   dateofBirth;
	 private String emailAddress;
	 private String phoneNumber;
	 private String houseNumber;
	 private String streetAddressLine1;
	 private String streetAddressLine2;
	 private String cityName;
	
	private String stateName;
	 private String zipCode;
	 private String countryName;
	 private String address;
	 

	public String getAddress() {
		return getHouseNumber()+ "_ "+
				getStreetAddressLine1() + " _" +
				getStreetAddressLine2() +" _" +
				getCityName()+" _"+
				getStateName()+" _" + 
				getZipCode() +" _"+
				getCountryName() ;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public Timestamp getDateofBirth() {
		return (Timestamp) dateofBirth;
	}
	public void setDateofBirth(Date dateofBirth) {
		this.dateofBirth = dateofBirth;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getHouseNumber() {
		return houseNumber;
	}
	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}
	public String getStreetAddressLine1() {
		return streetAddressLine1;
	}
	public void setStreetAddressLine1(String streetAddressLine1) {
		this.streetAddressLine1 = streetAddressLine1;
	}
	public String getStreetAddressLine2() {
		return streetAddressLine2;
	}
	public void setStreetAddressLine2(String streetAddressLine2) {
		this.streetAddressLine2 = streetAddressLine2;
	}
	 public String getCityName() {
			return cityName;
		}
		public void setCityName(String cityName) {
			this.cityName = cityName;
		}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}


	 
	 
	 
	 
}

	
	

