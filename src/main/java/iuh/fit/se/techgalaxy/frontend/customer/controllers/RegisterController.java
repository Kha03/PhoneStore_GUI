package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import iuh.fit.se.techgalaxy.frontend.customer.service.impl.AuthServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class RegisterController {
	

    private final AuthServiceImpl authService;

    @Autowired
    public RegisterController(AuthServiceImpl authService) {
        this.authService = authService;
    }
    
    
	@GetMapping("/signup")
    public String showSignupPage(Model model) {
        model.addAttribute("errorMessage", null);

        return "signup";
    }
	  
	    @PostMapping("/signup")
	    public String register(@RequestParam String email,
	                           @RequestParam String password,
	                           @RequestParam String name,
	                           RedirectAttributes redirectAttributes,
	                           Model model) {
	        try {
	            // Create account using AuthServiceImpl
	            ResponseEntity<Map> registerResponse = authService.register(email, password, name);

	            if (registerResponse.getStatusCode().is2xxSuccessful()) {
	                redirectAttributes.addFlashAttribute("successMessage", "Account created successfully!");
	                return "redirect:/signin"; // Redirect to sign-in page after successful registration
	            } else {
	                model.addAttribute("errorMessage", "Registration failed! Please try again.");
	                return "signup";
	            }
	        } catch (Exception e) {
	            log.error("Error occurred during registration: {}", e.getMessage(), e);
	            model.addAttribute("errorMessage", "An unexpected error occurred. Please try again.");
	            return "signup";
	        }
	    }
	
	
}
