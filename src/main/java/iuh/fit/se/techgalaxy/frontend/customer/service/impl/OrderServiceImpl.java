package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class OrderServiceImpl implements OrderService {

	WebClient webClient;

	@Override
	public ApiResponse<List<OrderResponse>> getOrderByCustomerId(String cusId) {
		try {
			return webClient.get().uri("/orders/customer/" + cusId).retrieve()
					.toEntity(new ParameterizedTypeReference<ApiResponse<List<OrderResponse>>>() {
					}).block().getBody();
		} catch (NullPointerException e) {
			log.error("Error: ", e);
			return null;
		}
	}

	@Override
	public ApiResponse<List<OrderResponse>> getOrderById(String id) {
		try {
			return webClient.get().uri("/orders/" + id).retrieve()
					.toEntity(new ParameterizedTypeReference<ApiResponse<List<OrderResponse>>>() {
					}).block().getBody();
		} catch (NullPointerException e) {
			log.error("Error: ", e);
			return null;
		}
	}

}
