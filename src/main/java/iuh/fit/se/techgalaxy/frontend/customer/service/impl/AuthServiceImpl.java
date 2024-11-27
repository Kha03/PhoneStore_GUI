package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;
import org.springframework.web.reactive.function.client.WebClient;

import iuh.fit.se.techgalaxy.frontend.customer.service.AuthService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Service
public class AuthServiceImpl implements AuthService {
    private final WebClient webClient;

    // Inject the WebClient configured in WebClientConfig
    public AuthServiceImpl(WebClient webClient) {
        this.webClient = webClient;
    }

    @Override
    public ResponseEntity<Map> login(String username, String password, HttpSession session, HttpServletResponse response) {
        try {
            // Payload containing username and password
            Map<String, String> payload = Map.of("username", username, "password", password);

            // Send request to the backend for login
            ResponseEntity<Map> loginResponse = webClient.post()
                    .uri("/api/accounts/auth/login") // The base URL is already set in WebClientConfig
                    .contentType(org.springframework.http.MediaType.APPLICATION_JSON)
                    .bodyValue(payload) // Correct usage for sending the body
                    .retrieve()
                    .toEntity(Map.class)
                    .block(); // Blocking call for synchronous processing

            // Check if the response is successful
            if (loginResponse != null && loginResponse.getStatusCode() == HttpStatus.OK && loginResponse.getBody() != null) {
                Map<?, ?> responseBody = loginResponse.getBody();

                // Extract accessToken from the response body
                if (responseBody.containsKey("data")) {
                    Map<?, ?> data = (Map<?, ?>) ((List<?>) responseBody.get("data")).get(0);
                    String accessToken = (String) data.get("access_token");

                    // Store the accessToken in the session
                    session.setAttribute("accessToken", accessToken);
                    System.out.println("Access Token in Service: " + accessToken);

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
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(Map.of("error", "Login failed: " + e.getMessage()));
        }
    }

@Override
public void logout(HttpSession session, String accessToken, HttpServletResponse response) {
    try {
        // Send POST request to logout endpoint
        ResponseEntity<Void> restResponse = webClient.post()
                .uri("/api/accounts/auth/logout") // Base URL is set in WebClientConfig
                .header("Authorization", "Bearer " + accessToken)
                .retrieve()
                .toBodilessEntity()
                .block(); // Blocking call for synchronous processing

        if (restResponse != null && restResponse.getStatusCode().is2xxSuccessful()) {
            System.out.println("Logout successful");
        } else {
            System.out.println("Logout failed with status: " + (restResponse != null ? restResponse.getStatusCode() : "Unknown status"));
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
}
