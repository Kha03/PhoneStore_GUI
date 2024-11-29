package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.exception.AppException;
import iuh.fit.se.techgalaxy.frontend.customer.exception.ErrorCode;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class CustomerServiceImpl implements CustomerService {
    WebClient webClient;

    @Override
    public ApiResponse<List<CustomerResponse>> getInfoByMail(String email, HttpSession session) {
        try {
            // Call the backend service to get the customer by email
            return webClient.get()
                    .uri("/customers/profile/email/{email}", email)
                    .header("Authorization", "Bearer " + session.getAttribute("accessToken"))
                    .retrieve()
                    .onStatus(HttpStatusCode::is4xxClientError, response -> {
                        // Check if the status is 401 Unauthorized (token might be invalid or expired)
                        if (response.statusCode() == HttpStatus.UNAUTHORIZED) {
                            throw new AppException(ErrorCode.UNAUTHORIZED_ACCESS);
                        }
                        // Handle other 4xx errors
                        return Mono.error(new AppException(ErrorCode.GENERAL_ERROR));
                    })
                    .onStatus(HttpStatusCode::is5xxServerError, response -> {
                        return Mono.error(new AppException(ErrorCode.SERVER_ERROR));
                    })
                    .bodyToMono(new ParameterizedTypeReference<ApiResponse<List<CustomerResponse>>>() {})
                    .block();
        } catch (AppException e) {
            // Handle known AppException errors
            log.error("Application error occurred: {}", e.getMessage());
            return new ApiResponse<>(e.getErrorCode().getCode(), e.getMessage(), null);
        } catch (Exception e) {
            // Catch any other unexpected errors
            log.error("Unexpected error occurred while getting customer by email: {}", e.getMessage());
            return new ApiResponse<>(ErrorCode.GENERAL_ERROR.getCode(), "An unexpected error occurred.", null);
        }

    }
    }

