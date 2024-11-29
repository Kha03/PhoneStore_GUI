package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;

import java.util.List;

public interface OrderService {

    ApiResponse<List<OrderResponse>> createOrder(String address, HttpSession session, PaymentStatus paymentStatus);
	  ApiResponse<List<OrderResponse>> getOrderByCustomerId(String cusId);
	  ApiResponse<List<OrderResponse>> getOrderById(String id);

}
