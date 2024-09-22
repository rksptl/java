package springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Home {

	@RequestMapping("/login")
	// @ResponseBody
	public String login() {
		return "login";
	}

	
	@RequestMapping("/signup")
	// @ResponseBody
	public String signup() {
		return "signup";
	}

	
	@RequestMapping("/dashboard")
	// @ResponseBody
	public String dashboard() {
		return "dashboard";
	}
	
	
	@RequestMapping("/forgot-password")
	// @ResponseBody
	public String resetPassword()
	{
		return "forgot-password";
	}
}