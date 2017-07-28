package com.tripapplication.Servelet;

	import java.io.*;  
import java.sql.*;  

import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import com.mysql.jdbc.Connection;
		// class to check if the userid is already used or not for saving the credential in RegisterCredential.jsp. 

		public class CheckCredentials extends HttpServlet {  
		  
		 private static final long serialVersionUID = -734503860925086969L;  
		 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		 static final String DB_URL = "jdbc:mysql://localhost/TRIPAPPLICATIONDATABASE";
		   
		//  Database credentials
		 static final String USER = "root";
		 static final String PASS = "1234";
		 
		 protected void doPost(HttpServletRequest request, HttpServletResponse response)  
		            throws ServletException, IOException {  
		        response.setContentType("text/html;charset=UTF-8");  
		        PrintWriter out = response.getWriter();  
		        try {  
		  
		        	
		        	Connection conn = null;
		        	Class.forName("com.mysql.jdbc.Driver");

				      //STEP 3: Open a connection
				      System.out.println("Connecting to a selected database...");
				      conn = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);
				      
				     			    
		            String usernameC = request.getParameter("usernameC");
		            String passwordC = request.getParameter("passwordC"); 
		           
		            
		            System.out.println(passwordC);
		           
		            PreparedStatement ps_userID = conn.prepareStatement("select user_Id, user_password  from tripapplicationcredentialtable where user_Id=? and user_password=?");
		            
		            ps_userID.setString(1,usernameC);  
		            ps_userID.setString(2,usernameC); 
		            ResultSet rs = ps_userID.executeQuery();  
		               
		            if (rs.next()) {
		            	System.out.println(rs.getString("user_password"));
		            	System.out.println((rs.getString("user_password")).equalsIgnoreCase(passwordC));
		            	if (rs.getString("user_password").equalsIgnoreCase(passwordC)){ 
		                out.println(" <font color=green> <b>"+usernameC+"</b> is valid/font>"); 
		                }
		                
		            }  
		            else{  
		            out.println("<font color=red> <b>either your username or password  is not valid</font>");  
		            }  
		                

		        } catch (Exception ex) {  
		            out.println("Error ->" + ex.getMessage());  
		        } finally {  
		            out.close();  
		        }  
		    }  
		  
		    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
		            throws ServletException, IOException {  
		        doPost(request, response);  
		    }  
		}
		


	
