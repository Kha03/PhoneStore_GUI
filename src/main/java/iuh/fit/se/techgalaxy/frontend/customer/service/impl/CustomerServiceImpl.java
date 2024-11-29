package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.Trademark;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class CustomerServiceImpl implements CustomerService {
	WebClient webClient;

	@Override
	public ApiResponse<List<CustomerResponse>> getCustomerById(String CustomerId) {
		try {
			
			return webClient.get()
                    .uri("/customers/"+CustomerId)
                    .retrieve()
                    .toEntity(new ParameterizedTypeReference<ApiResponse<List<CustomerResponse>>>() {
                    })
                    .block().getBody();
		} catch (NullPointerException e) {
			log.error("Error: ", e);
			return null;
		}
	}

}
