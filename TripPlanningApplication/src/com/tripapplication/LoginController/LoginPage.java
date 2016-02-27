package com.tripapplication.LoginController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
 


	@Controller
	public class LoginPage {
	 
		@RequestMapping("/welcome")
		public ModelAndView helloworld() {
				 
			ModelAndView modelandview = new ModelAndView("LoginPage");
			modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
			System.out.println("step: Login page controller is called");
			return modelandview;
		}
		
		@RequestMapping("/loginUser")
		public ModelAndView loginUser() {
	 
			ModelAndView modelandview2 = new ModelAndView("TripInfoFirst");
			modelandview2.addObject("welcomeMessage", "Hi User, welcome to the first Spring MVC Application");
			System.out.println("step 1");
			return modelandview2;
		}
			
			@RequestMapping("/registerUser")
			public ModelAndView registerUser() {
		 
				ModelAndView modelandview2 = new ModelAndView("RegisterInfo");
				modelandview2.addObject("welcomeMessage", "Hi User, welcome to the first Spring MVC Application");
				System.out.println("step register");
				return modelandview2;
		
	}
	}
