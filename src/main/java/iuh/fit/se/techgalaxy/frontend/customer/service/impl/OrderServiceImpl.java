package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.request.OrderRequestV2;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import iuh.fit.se.techgalaxy.frontend.customer.exception.AppException;
import iuh.fit.se.techgalaxy.frontend.customer.exception.ErrorCode;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class OrderServiceImpl implements OrderService {
    WebClient webClient;

    @Override
    public ApiResponse<List<OrderResponse>> createOrder(String address, HttpSession session, PaymentStatus paymentStatus) {
        // Lấy thông tin khách hàng từ session
        String customerId = (String) session.getAttribute("customerId");
        String accessToken = (String) session.getAttribute("accessToken");

        // Kiểm tra xem khách hàng có tồn tại không
        if (customerId == null) {
            throw new AppException(ErrorCode.CUSTOMER_NOT_ACTIVE);
        }

        // Tạo đối tượng OrderRequestV2
        OrderRequestV2.OrderRequestV2Builder orderRequestBuilder = OrderRequestV2.builder()
                .customerId(customerId)
                .paymentStatus(paymentStatus)
                .address(address);

        // Lấy giỏ hàng từ session
        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
        if (cart == null || cart.isEmpty()) {
            throw new AppException(ErrorCode.CART_EMPTY);
        }

        // Tạo danh sách các sản phẩm trong đơn hàng
        List<OrderRequestV2.ProductDetailOrder> orderItems = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : cart.entrySet()) {
            orderItems.add(new OrderRequestV2.ProductDetailOrder(entry.getKey(), entry.getValue()));
        }
        orderRequestBuilder.productDetailOrders(orderItems);

        // Xây dựng đơn hàng
        OrderRequestV2 orderRequest = orderRequestBuilder.build();

        // Gửi yêu cầu tạo đơn hàng thông qua WebClient
        try {
            return webClient.post()
                    .uri("/orders/v2")
                    .header("Authorization", "Bearer " + accessToken)
                    .bodyValue(orderRequest)
                    .retrieve()
                    .bodyToMono(new ParameterizedTypeReference<ApiResponse<List<OrderResponse>>>() {})
                    .block();
        } catch (Exception e) {
            throw new AppException(ErrorCode.ORDER_CREATION_FAILED);
        }
    }

}
