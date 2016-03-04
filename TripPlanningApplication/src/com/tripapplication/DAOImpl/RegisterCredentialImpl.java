package com.tripapplication.DAOImpl;

	import com.tripapplication.DAO.RegisterCredentialDAO;
import com.tripapplication.DAO.RegisterUserInfoDAO;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.tripapplication.SpecialClass.CurrentTime;

	import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

	public class RegisterCredentialImpl {

		 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		 static final String DB_URL = "jdbc:mysql://localhost/TRIPAPPLICATIONDATABASE";
		 Long userIdNum;  
		//  Database credentials
		 static final String USER = "root";
		 static final String PASS = "1234";
		   
		public Long add (RegisterCredentialDAO UserCredentialInformation){
			
			Connection connDatabase = databaseConnection();
			
			String insertTableSQL = "INSERT INTO tripapplicationcredentialtable"+ "( user_Registeration_num, user_Id,	user_password,	s_question1,	s_answer1,	s_question2, s_answer2,	datteof_Membership)"
					+ " VALUES"	+ "(?,?,?,?,?,?,?,?)";

			try {
			PreparedStatement preparedStatement = connDatabase.prepareStatement(insertTableSQL);
			userIdNum = createUserRegistrationNumber();
		
			preparedStatement.setLong(1, UserCredentialInformation.getUserIdNumber());
			preparedStatement.setString(2, UserCredentialInformation.getUserId());
			preparedStatement.setString(3, UserCredentialInformation.getUserPassword());
			preparedStatement.setString(4, UserCredentialInformation.getSecurityQuestion1());
			preparedStatement.setString(5, UserCredentialInformation.getSecurityAnswer1());
			preparedStatement.setString(6, UserCredentialInformation.getSecurityQuestion2());
			preparedStatement.setString(7, UserCredentialInformation.getSecurityAnswer2());
			CurrentTime currenttime = new CurrentTime();
			preparedStatement.setTimestamp(8, currenttime.getCurrentTimeStamp());
			preparedStatement .executeUpdate();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}finally{
				try {
					connDatabase.close();
				} catch (SQLException e) {
					System.out.println("INSERT INTO tripapplicationcredentialtable error");// TODO Auto-generated catch block
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

	
	
	
	


