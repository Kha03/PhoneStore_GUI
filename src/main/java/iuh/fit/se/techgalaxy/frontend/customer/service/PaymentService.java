package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.PaymentResponse;
import jakarta.servlet.http.HttpSession;

public interface PaymentService {

    PaymentResponse.VNPayResponseCreate createVnPayPayment(int amount, HttpSession session);
}
