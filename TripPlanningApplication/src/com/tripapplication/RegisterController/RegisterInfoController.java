package com.tripapplication.RegisterController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.tripapplication.DAO.RegisterCredentialDAO;
import com.tripapplication.DAO.RegisterUserInfoDAO;
import com.tripapplication.DAOImpl.RegisterCredentialImpl;
import com.tripapplication.DAOImpl.RegisterUserInfoDAOImpl;




		@Controller
		public class RegisterInfoController {
		 
			@RequestMapping("/registerInfo")
			
			public ModelAndView registerUserInfo(@ModelAttribute("userRegisterInformation") RegisterUserInfoDAO userRegisterInformation) {
				
				// if we need to add this to the database at this point else we need to pass to the session. 
			RegisterUserInfoDAOImpl registerUserInfoDAOImpl = new RegisterUserInfoDAOImpl();
			
			// adding user info to the database.
			Long userIdNum = registerUserInfoDAOImpl.add(userRegisterInformation);
				ModelAndView modelandview = new ModelAndView("RegisterCredential");
				modelandview.addObject("userIdNum", userIdNum);
							
				return modelandview;
			}
			
		@RequestMapping("/registerCredential")
		public ModelAndView registerUsercredential(@ModelAttribute("userCredentialInformation") RegisterCredentialDAO userCredentialInformation) {
				 
				ModelAndView modelandview = new ModelAndView("RegisterSuccessPage");
				RegisterCredentialImpl tripApplicationCredentialImpl = new RegisterCredentialImpl();
				
				Long userIdNum = tripApplicationCredentialImpl.add(userCredentialInformation);
				
				modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
				System.out.println("step: Login page controller is called");
				
				return modelandview;
			}
			
		}

		
		


