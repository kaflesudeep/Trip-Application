package com.tripapplication.Servelet;

import java.io.*;  
import java.sql.*;  

import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import com.mysql.jdbc.Connection;
	// class to check if the userid is already used or not for saving the credential in RegisterCredential.jsp. 

	public class CheckAvailability extends HttpServlet {  
	  
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
			      
			     			    
	            String uname = request.getParameter("uname");  
	            PreparedStatement ps = conn.prepareStatement("select user_Name from tripapplicationcredentialtable where user_Name=?");
	            
	            ps.setString(1,uname);  
	            ResultSet rs = ps.executeQuery();  
	               
	            if (!rs.next()) {  
	                out.println(" <font color=green> <b>"+uname+"</b> is avaliable</font>");  
	            }  
	            else{  
	            out.println("<font color=red> <b>"+uname+"</b> is already in use</font>");  
	            }  
	            out.println();  
	  
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
	

