package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequestMapping({"/payment"})
@Slf4j
public class Paymentcontroller {
    OrderService orderService;
    @GetMapping()
    public String getPayment(@RequestParam("vnp_ResponseCode") String vnp_ResponseCode, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (vnp_ResponseCode.equals("00")) {
            String address = (String) session.getAttribute("address");
            if (address != null) {
                orderService.createOrder(address, session, PaymentStatus.PAID);
                session.removeAttribute("address");
                return "vnpay_return";
            }
        }
        return "vnpay_return";
    }
}
