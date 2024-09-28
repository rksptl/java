package springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLoginForm(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false); // Get existing session, don't create new
		
		if (session != null && session.getAttribute("username") != null) {

			return new ModelAndView("redirect:/dashboard");
		}
		
		return new ModelAndView("login");
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView processLogin(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request) {
		
		if ("admin".equals(username) && "password123".equals(password)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			return new ModelAndView("redirect:/dashboard");
		} 
		else {
			return new ModelAndView("login", "error", "Invalid Username or Password");
		}
	}


	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView showDashboard(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false); // Get existing session, don't create new
		
		if (session != null && session.getAttribute("username") != null) {
			
			return new ModelAndView("dashboard", "message", "Welcome to the dashboard!");
		} 
		else {

			return new ModelAndView("redirect:/login");
		}
	}


	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		
		if (session != null) {
			session.invalidate(); // Invalidate session to log out the user
		}
		
		return new ModelAndView("redirect:/login");
	}
}
