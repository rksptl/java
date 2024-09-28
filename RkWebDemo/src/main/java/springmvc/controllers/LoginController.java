package springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

//import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import springmvc.services.AuthService;

@Controller
@SessionAttributes("username") // Store 'username' in session attributes
public class LoginController {

    private final AuthService authService;

    // Constructor injection for AuthenticationService
    public LoginController(AuthService authService) {
        this.authService = authService;
    }

    @GetMapping("/login")
    public ModelAndView showLoginForm(HttpSession session) {
        if (session != null && session.getAttribute("username") != null) {
            return new ModelAndView("redirect:/dashboard");
        }
        return new ModelAndView("login");
    }

    @PostMapping("/login")
    public ModelAndView processLogin(
        @RequestParam("username") String username, 
        @RequestParam("password") String password, 
        HttpSession session) {

        if (authService.authenticate(username, password)) {
            session.setAttribute("username", username);
            return new ModelAndView("redirect:/dashboard");
        } else {
            return new ModelAndView("login", "error", "Invalid Username or Password");
        }
    }

    @GetMapping("/dashboard")
    public ModelAndView showDashboard(HttpSession session) {
        if (session != null && session.getAttribute("username") != null) {
            return new ModelAndView("dashboard", "message", "Welcome to the dashboard!");
        } else {
            return new ModelAndView("redirect:/login");
        }
    }

    @GetMapping("/logout")
    public ModelAndView logout(HttpSession session, SessionStatus status) {
    	if (session != null) {
            status.setComplete();  // Clears session attributes managed by @SessionAttributes
            session.invalidate();  // Invalidates the whole session
        }
        return new ModelAndView("redirect:/login");
    }
}
