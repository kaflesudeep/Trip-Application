package com.tripapplication.SpecialClass;

import java.sql.Timestamp;


public class CurrentTime {

	public Timestamp getCurrentTimeStamp() {
		
		
		java.util.Date date= new java.util.Date();
        System.out.println(new Timestamp(date.getTime()));
		   
		return new Timestamp(date.getTime());
	}
	
}
