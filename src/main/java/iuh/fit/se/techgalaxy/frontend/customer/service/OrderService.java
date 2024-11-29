package iuh.fit.se.techgalaxy.frontend.customer.service;

import java.util.List;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

public interface OrderService {

	  ApiResponse<List<OrderResponse>> getOrderByCustomerId(String cusId);
	  ApiResponse<List<OrderResponse>> getOrderById(String id);
 	  
}
