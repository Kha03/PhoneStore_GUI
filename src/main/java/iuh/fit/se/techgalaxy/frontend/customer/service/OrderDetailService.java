package iuh.fit.se.techgalaxy.frontend.customer.service;

import java.util.List;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

public interface OrderDetailService {
	
	ApiResponse<List<OrderDetailResponse>> orderDetailByOrderId(String orderId);
}
