package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderDetailService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class OrderDetailServiceImpl implements OrderDetailService {

	WebClient webClient;

	public ApiResponse<List<OrderDetailResponse>> orderDetailByOrderId(String orderId) {
		try {
			return webClient.get().uri("/order-details/order/" + orderId).retrieve()
					.toEntity(new ParameterizedTypeReference<ApiResponse<List<OrderDetailResponse>>>() {
					}).block().getBody();
		} catch (NullPointerException e) {
			log.error("Error: ", e);
			return null;
		}
	}

}
