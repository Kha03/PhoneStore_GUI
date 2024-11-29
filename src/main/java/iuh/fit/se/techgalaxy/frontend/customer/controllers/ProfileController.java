package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import iuh.fit.se.techgalaxy.frontend.customer.dto.request.CustomerRequest;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.service.impl.CustomerServiceImpl;
import iuh.fit.se.techgalaxy.frontend.customer.service.impl.ProfileServiceUImpl;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({ "/profile" })
@Slf4j
public class ProfileController {
	CustomerServiceImpl customerService;
	ProfileServiceUImpl profileService;

	@GetMapping()
	public String getProfile(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		System.out.println("Email: " + email);
		// Check if email exists in session
		if (email == null) {
			model.addAttribute("error", "User is not logged in.");
			return "redirect:/login"; // Redirect to login page
		}

		ApiResponse<List<CustomerResponse>> customerResponse = customerService
				.getInfoByMail((String) session.getAttribute("email"), session);

		CustomerResponse customer = customerResponse.getData().get(0);
		System.out.println("Customer: " + customer.getName());
		List<Map<String, String>> fields = List.of(
				Map.of("label", "Full Name", "icon", "fas fa-user", "type", "text", "value", customer.getName(), "id",
						"fullName", "modal", "#editFullNameModal"),
				Map.of("label", "E-mail Address", "icon", "fas fa-envelope", "type", "email", "value",
						customer.getAccount().getEmail() != null ? customer.getAccount().getEmail() : "", "id",
						"emailAddress", "modal", "#editEmailModal"),
				Map.of("label", "Phone Number", "icon", "fas fa-phone", "type", "text", "value",
						customer.getPhone() != null ? customer.getPhone() : "", "id", "phoneNumber", "modal",
						"#editPhoneModal"),
				Map.of("label", "Date of Birth", "icon", "fas fa-calendar-alt", "type", "date", "value",
						customer.getDateOfBirth() != null ? customer.getDateOfBirth().toString() : "", "id",
						"dateOfBirth", "modal", "#editDateOfBirthModal")

		);

		// Add fields to the model
		model.addAttribute("fields", fields);
		model.addAttribute("customer", customer);

		return "PersonalData";
	}

	@PostMapping("/save")
	public String saveProfile(@RequestParam Map<String, String> formData, Model model, HttpServletRequest request) {
		CustomerRequest customerRequest = new CustomerRequest();
		customerRequest.setId(formData.get("id"));
		System.out.println("ID: " + formData.get("id"));
		customerRequest.setName(formData.get("fullName"));
		customerRequest.setPhone(formData.get("phoneNumber"));
		if (formData.get("dateOfBirth") != null || !formData.get("dateOfBirth").isEmpty()
				|| !formData.get("dateOfBirth").isBlank()) {
			LocalDate date = LocalDate.parse(formData.get("dateOfBirth"));
			customerRequest.setDateOfBirth(date);
		} else {
			customerRequest.setDateOfBirth(null);
		}
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		ApiResponse<List<CustomerResponse>> customerResponse = profileService.update(session, customerRequest);
		if (customerResponse.getData() != null && !customerResponse.getData().isEmpty()) {
			CustomerResponse customer = customerResponse.getData().get(0);
			List<Map<String, String>> fields = List.of(
					Map.of("label", "Full Name", "icon", "fas fa-user", "type", "text", "value", customer.getName(), "id",
							"fullName", "modal", "#editFullNameModal"),
					Map.of("label", "E-mail Address", "icon", "fas fa-envelope", "type", "email", "value",
							customer.getAccount().getEmail() != null ? customer.getAccount().getEmail() : "", "id",
							"emailAddress", "modal", "#editEmailModal"),
					Map.of("label", "Phone Number", "icon", "fas fa-phone", "type", "text", "value",
							customer.getPhone() != null ? customer.getPhone() : "", "id", "phoneNumber", "modal",
							"#editPhoneModal"),
					Map.of("label", "Date of Birth", "icon", "fas fa-calendar-alt", "type", "date", "value",
							customer.getDateOfBirth() != null ? customer.getDateOfBirth().toString() : "", "id",
							"dateOfBirth", "modal", "#editDateOfBirthModal")

			);

			// Add fields to the model
			model.addAttribute("fields", fields);
			model.addAttribute("customer", customer);
		}
		return "redirect:/profile";
	}

}
