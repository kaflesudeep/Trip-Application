package com.tripapplication.DAOImpl;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.tripapplication.DAO.RegisterUserInfoDAO;
import com.tripapplication.SpecialClass.CurrentTime;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class RegisterUserInfoDAOImpl {

	 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	 static final String DB_URL = "jdbc:mysql://localhost/TRIPAPPLICATIONDATABASE";
	 Long userIdNum;  
	//  Database credentials
	 static final String USER = "root";
	 static final String PASS = "1234";
	   
	public Long add (RegisterUserInfoDAO UserInforamtion){
		
		Connection connDatabase = databaseConnection();
		
		String insertTableSQL = "INSERT INTO TRIPAPPLICATIONREGISTERATIONTABLE"+ "( USER_REGISTRATION_NUMBER, FIRST_NAME,	LAST_NAME,	MIDDLE_NAME,	DATE_OF_BIRTH,	EMAIL_ADDRESS, PHONE_NUMB,	USER_ADDRESS, REGISTRATION_DATE)"
				+ " VALUES"	+ "(?,?,?,?,?,?,?,?,?)";

		try {
		PreparedStatement preparedStatement = connDatabase.prepareStatement(insertTableSQL);
		userIdNum = createUserRegistrationNumber();
		preparedStatement.setLong(1, userIdNum);
		preparedStatement.setString(2, UserInforamtion.getFirstName());
		preparedStatement.setString(3, UserInforamtion.getMiddleName());
		preparedStatement.setString(4, UserInforamtion.getLastName());
		preparedStatement.setDate(5, UserInforamtion.getDateofBirth());
		preparedStatement.setString(6, UserInforamtion.getEmailAddress());
		preparedStatement.setString(7, UserInforamtion.getPhoneNumber());
		preparedStatement.setString(8, UserInforamtion.getAddress());
		
		CurrentTime currenttime = new CurrentTime();
		preparedStatement.setTimestamp(9, currenttime.getCurrentTimeStamp());
		preparedStatement .executeUpdate();
		System.out.println("Data inserted to the database");
		
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			try {
				connDatabase.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return userIdNum;
		
	}
	
	// need to implement a method so that we can get a unique registeration number, 
	// we are just adding 1 to the last person's registeration id.
	public Long createUserRegistrationNumber(){
		Connection connDatabase = databaseConnection();
		String getUserID = "Select USER_REGISTRATION_NUMBER from TRIPAPPLICATIONREGISTERATIONTABLE ORDER BY USER_REGISTRATION_NUMBER  ";
		Statement stmt = null;
		Long UserRegiNum = (long) 100000000; 
	try{
		 stmt = (Statement) connDatabase.createStatement();
		 ResultSet rs = stmt.executeQuery(getUserID);
		 long i = (long) 100000000;
		 System.out.println();
		 while(rs.next()){
			 
			Long UserID = rs.getLong("USER_REGISTRATION_NUMBER");
			
				
			if (UserID != i){
				UserRegiNum = i; 
				break; 
			}else{
				UserRegiNum = i+1; 
			}
			i ++; 
		}
		 
		
				 
	 } catch (SQLException e ) {
      System.out.println("Cannot get the registration number");
	 }
	return UserRegiNum;
	}
	

	public Connection databaseConnection() {
		 Connection conn = null;
		try{
			//STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      conn = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);
		     
		 }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		 	}
		return conn;
		
		 }
	}
