package iuh.fit.se.techgalaxy.frontend.customer.service;

import jakarta.servlet.http.HttpSession;

public interface EmailService {

    void sendEmailFromTemplateSync(String paymentInfo, String shippingAddress, String customerName, String orderCode, HttpSession session);
}
