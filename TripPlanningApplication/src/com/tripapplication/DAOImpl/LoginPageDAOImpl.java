package com.tripapplication.DAOImpl;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.tripapplication.DAO.LoginPageDAO;

public class LoginPageDAOImpl {
	 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	 static final String DB_URL = "jdbc:mysql://localhost/TRIPAPPLICATIONDATABASE";
	//  Database credentials
	 static final String USER = "root";
	 static final String PASS = "1234";
	 private boolean accountExist = false; 
	public boolean ValidateCredential(LoginPageDAO userCredentialInformation) {
		Connection connDatabase = databaseConnection();
		String getCredentialInfo = "Select user_Id , user_password  from tripapplicationcredentialtable ";
		Statement stmt = null;
	try{
		 stmt = (Statement) connDatabase.createStatement();
		 ResultSet rs = stmt.executeQuery(getCredentialInfo);
		String  userCredential = userCredentialInformation.getUsername().toLowerCase().trim();
		String  passwordCredential = userCredentialInformation.getPassword().toLowerCase().trim();
		while(rs.next()){
		 	String UserIDInfo = rs.getString("user_Id");
		 	String PasswordInfo = rs.getString("user_password");
					
			if (UserIDInfo != null && UserIDInfo.toLowerCase().trim().equals(userCredential)){
				if(PasswordInfo != null && PasswordInfo.toLowerCase().trim().equals(passwordCredential)){
					accountExist = true; 
					break;
					}
			 
				}
		 
			}
		}catch (SQLException e ) {
			System.out.println("Cannot verify that the credential");
		}
					
		// TODO Auto-generated method stub
		return accountExist;
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


