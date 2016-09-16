package com.tripapplication.ForgotCredential;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.tripapplication.DAO.ForgotCredentialDAO;
import com.tripapplication.DAO.RegisterUserInfoDAO;


 


	@Controller
	public class forgotCredentialFlow extends HttpServlet {
		@RequestMapping("/forgotCredential1")
		public ModelAndView forgotCredential_first() {
	 
			ModelAndView modelandview2 = new ModelAndView("ForgotCredential_first");
			
			return modelandview2;
	
			}
		
		@RequestMapping("/forgotCredential2")
		public ModelAndView forgotCredential_second(@ModelAttribute("forgotCredential") ForgotCredentialDAO forgotCredential) {
			
			ModelAndView modelandview2 = new ModelAndView("ForgotCredential_Second");
			modelandview2.addObject("usernamepassword",forgotCredential.getUsernamepassword()); 
			modelandview2.addObject("userId",forgotCredential.getUserId()); 
			modelandview2.addObject("email",forgotCredential.getEmail()); 
			
//			usernamepassword
//			userId
//			email
//			
			
		
			
			return modelandview2;
	
			}
		
		@RequestMapping("/forgotCredential3")
		public ModelAndView forgotCredential_result(@ModelAttribute("forgotCredential") ForgotCredentialDAO forgotCredential) {
	 
			System.out.println(forgotCredential.getSecurityAnswer1());
			ModelAndView modelandview2 = new ModelAndView("ForgotCredential_Third");
			
			return modelandview2;
	
			}
		
	
	}