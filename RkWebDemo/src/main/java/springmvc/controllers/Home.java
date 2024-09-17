package springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Home {

	@RequestMapping("/hello")
	//@ResponseBody
	public String greeting()
	{
		System.out.println("WelcomeController.greeting()");
		
		return "welcome";
	}
}