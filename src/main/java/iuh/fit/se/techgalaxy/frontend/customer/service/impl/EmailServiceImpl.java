package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.request.EmailRequest;
import iuh.fit.se.techgalaxy.frontend.customer.service.EmailService;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class EmailServiceImpl implements EmailService {
    WebClient webClient;

    static DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");

    @Override
    public void sendEmailFromTemplateSync(String paymentInfo, String shippingAddress, String customerName, String orderCode, HttpSession session) {
        LocalDateTime now = LocalDateTime.now();
        String accessToken = (String) session.getAttribute("accessToken");
        EmailRequest emailRequest = new EmailRequest();
        emailRequest.setPaymentInfo(paymentInfo);
        emailRequest.setShippingAddress(shippingAddress);
        emailRequest.setCustomerName(customerName);
        emailRequest.setInvoiceDate(now.format(DATE_TIME_FORMATTER));
        emailRequest.setOrderCode(orderCode);
       String mess = webClient.post()
                .uri("/email")
                .header("Authorization", "Bearer " + accessToken)
                .bodyValue(emailRequest)
                .retrieve()
                .bodyToMono(String.class)
                .block();
       log.info("Email sent: {}", mess);
    }

}
