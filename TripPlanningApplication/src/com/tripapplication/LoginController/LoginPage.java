package com.tripapplication.LoginController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.tripapplication.DAO.LoginPageDAO;
import com.tripapplication.DAO.RegisterUserInfoDAO;
import com.tripapplication.DAOImpl.LoginPageDAOImpl;
import com.tripapplication.DAOImpl.RegisterUserInfoDAOImpl;
 


	@Controller
	public class LoginPage {
	 
		@RequestMapping("/welcome")
		public ModelAndView helloworld() {
				 
			ModelAndView modelandview = new ModelAndView("LoginPage");
			modelandview.addObject("welcomeMessage", "using object we are setting this message to the welcomemessage object that can be used in jsp");
			
			return modelandview;
		}
		
		@RequestMapping("/loginUser")
		public ModelAndView loginUser(@ModelAttribute("userCredentialInformation") LoginPageDAO userCredentialInformation) {
			String view = null; 
			String StateMessage; 
			boolean userAccount= true; 
			LoginPageDAOImpl loginPageDAOImpl = new LoginPageDAOImpl(); 
			userAccount = loginPageDAOImpl.ValidateCredential(userCredentialInformation); 
			if (userAccount== true ){
				view = 	"TripInfoFirst";
				StateMessage = "Success"; 
			}else{
				view = 	"LoginPage"; 
				StateMessage = "faliure";
			}
			
			ModelAndView modelandview2 = new ModelAndView(view);
			modelandview2.addObject("StateMessage", StateMessage);
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
