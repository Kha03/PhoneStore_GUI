package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.PaymentResponse;
import iuh.fit.se.techgalaxy.frontend.customer.exception.AppException;
import iuh.fit.se.techgalaxy.frontend.customer.exception.ErrorCode;
import iuh.fit.se.techgalaxy.frontend.customer.service.PaymentService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.List;


@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@AllArgsConstructor
public class PaymentServiceImpl implements PaymentService {
    WebClient webClient;
    @Override
    public PaymentResponse.VNPayResponseCreate createVnPayPayment(int amount, HttpSession session) {
        String token = (String) session.getAttribute("accessToken");
        if (token != null) {
            try {
                ApiResponse<List<PaymentResponse.VNPayResponseCreate>> response = webClient.get()
                        .uri("/payment/vn-pay?amount=" + amount)
                        .header("Authorization", "Bearer " + token)
                        .retrieve()
                        .bodyToMono(new ParameterizedTypeReference<ApiResponse<List<PaymentResponse.VNPayResponseCreate>>>() {})
                        .block();
                if (response != null && response.getData() != null && !response.getData().isEmpty()) {
                    return response.getData().get(0);
                } else {
                    throw new AppException(ErrorCode.GET_PAYMENT_FAILED);
                }
            } catch (Exception e) {
                throw new AppException(ErrorCode.GET_PAYMENT_FAILED);
            }
        }
        throw new AppException(ErrorCode.UNAUTHORIZED_ACCESS);
    }

}
