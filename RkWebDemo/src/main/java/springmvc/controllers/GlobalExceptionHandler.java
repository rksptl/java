package springmvc.controllers;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handle404(NoHandlerFoundException e, Model model) {
		ModelAndView mav = new ModelAndView("404"); // This is your 404.jsp or 404.html view
		mav.addObject("error", "Page not found");
		return mav;
	}
}
