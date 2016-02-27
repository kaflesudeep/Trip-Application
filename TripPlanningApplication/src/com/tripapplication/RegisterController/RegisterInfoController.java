package com.tripapplication.RegisterController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.tripapplication.RegisterDAO.TripApplicationCredentialDAO;
import com.tripapplication.RegisterDAO.TripApplicationRegisterationDAO;
import com.tripapplication.RegisterDAOImpl.RegisterUserInfoDAOImpl;




@Controller
public class RegisterInfoController {
		 
			@RequestMapping("/registerInfo")
			
			public ModelAndView registerUserInfo(@ModelAttribute("userRegisterInformation") TripApplicationRegisterationDAO userRegisterInformation) {
				
				// if we need to add this to the database at this point else we need to pass to the session. 
			RegisterUserInfoDAOImpl registerUserInfoDao = new RegisterUserInfoDAOImpl();
			
			// adding user info to the database.
			registerUserInfoDao.add(userRegisterInformation);
				
				
				ModelAndView modelandview = new ModelAndView("RegisterCredential");
				modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
				System.out.println("step: Login page controller is called");
				
				
				
				
				return modelandview;
			}
			
			@RequestMapping("/registerCredential")
			public ModelAndView registerUsercredential(@ModelAttribute("userCredentialInformation") TripApplicationCredentialDAO userCredentialInformation) {
				 
				ModelAndView modelandview = new ModelAndView("RegisterSuccessPage");
				
				modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
				System.out.println("step: Login page controller is called");
				
				
				
				
				return modelandview;
			}
			
		}

		
		


