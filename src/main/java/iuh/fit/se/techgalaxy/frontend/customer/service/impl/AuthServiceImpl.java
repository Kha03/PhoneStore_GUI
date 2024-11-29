package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.LoginResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.AuthService;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.List;
import java.util.Map;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class AuthServiceImpl implements AuthService {
	WebClient webClient;
//	CustomerService customerService;
	
	
	@Override
	public ResponseEntity<Map> login(String username, String password, HttpSession session,
			HttpServletResponse response) {
		try {
			// Payload containing username and password
			Map<String, String> payload = Map.of("username", username, "password", password);

			ResponseEntity<Map> loginResponse = webClient.post().uri("/api/accounts/auth/login") // The base URL is
																									// already set in
																									// WebClientConfig
					.contentType(org.springframework.http.MediaType.APPLICATION_JSON).bodyValue(payload) // Correct
																											// usage for
																											// sending
																											// the body
					.retrieve().toEntity(Map.class).block(); // Blocking call for synchronous processing

			// Check if the response is successful
			if (loginResponse != null && loginResponse.getStatusCode() == HttpStatus.OK
					&& loginResponse.getBody() != null) {
				Map<?, ?> responseBody = loginResponse.getBody();

				// Extract accessToken from the response body
				if (responseBody.containsKey("data")) {
					Map<?, ?> data = (Map<?, ?>) ((List<?>) responseBody.get("data")).get(0);
					String accessToken = (String) data.get("access_token");
					Map<?, ?> account = (Map<?, ?>) data.get("account");
					String email = (String) account.get("email");

					// Store the accessToken in the session
					session.setAttribute("accessToken", accessToken);
					session.setAttribute("email", email);

					// Check for Set-Cookie headers
					HttpHeaders headers = loginResponse.getHeaders();
					List<String> cookies = headers.get(HttpHeaders.SET_COOKIE);

					if (cookies != null && !cookies.isEmpty()) {
						// Send cookies from BE to FE
						cookies.forEach(cookie -> {
							System.out.println("Cookie from BE: " + cookie);
							response.addHeader(HttpHeaders.SET_COOKIE, cookie);
						});
					}
				}
				return loginResponse;
			}
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(Map.of("error", "Invalid username or password"));
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(Map.of("error", "Login failed: " + e.getMessage()));
		}
	}

	@Override
	public void logout(HttpSession session, String accessToken, HttpServletResponse response) {
		try {
			// Send POST request to logout endpoint
			ResponseEntity<Void> restResponse = webClient.post().uri("/api/accounts/auth/logout") // Base URL is set in
																									// WebClientConfig
					.header("Authorization", "Bearer " + accessToken).retrieve().toBodilessEntity().block(); // Blocking
																												// call
																												// for
																												// synchronous
																												// processing

			if (restResponse != null && restResponse.getStatusCode().is2xxSuccessful()) {
				System.out.println("Logout successful");
			} else {
				System.out.println("Logout failed with status: "
						+ (restResponse != null ? restResponse.getStatusCode() : "Unknown status"));
			}
		} catch (Exception e) {
			System.out.println("Error during logout: " + e.getMessage());
		} finally {
			// Remove refresh_token cookie
			Cookie refreshTokenCookie = new Cookie("refresh_token", null);
			refreshTokenCookie.setPath("/");
			refreshTokenCookie.setMaxAge(0); // Immediately expire the cookie
			refreshTokenCookie.setHttpOnly(true);
			response.addCookie(refreshTokenCookie);

			// Invalidate the session
			session.invalidate();
		}
	}

	@Override
	public ResponseEntity<Map> register(String email, String password, String name) {
		try {
			// Construct the payload with user registration data
			Map<String, String> payload = Map.of("email", email, "password", password, "fullName", name);

			// Send POST request to backend registration endpoint
			ResponseEntity<Map> registrationResponse = webClient.post().uri("/api/accounts/auth/register")
					.contentType(org.springframework.http.MediaType.APPLICATION_JSON).bodyValue(payload).retrieve()
					.toEntity(Map.class).block(); // Blocking for synchronous call

			// Check if the response is successful
			if (registrationResponse != null && registrationResponse.getStatusCode() == HttpStatus.CREATED) {
				// Registration successful
				return ResponseEntity.ok(Map.of("message", "Registration successful"));
			} else if (registrationResponse != null) {
				// Backend returned an error
				return ResponseEntity.status(registrationResponse.getStatusCode())
						.body(Map.of("error", "Registration failed", "details", registrationResponse.getBody()));
			} else {
				// Null response case
				return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
						.body(Map.of("error", "Unexpected error occurred during registration"));
			}
		} catch (Exception e) {
			// Handle exceptions and return an error response
			log.error("Error during registration: {}", e.getMessage(), e);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(Map.of("error", "Registration failed due to an internal error", "details", e.getMessage()));
		}
	}

}
