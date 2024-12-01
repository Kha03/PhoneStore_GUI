package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.service.EmailService;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
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

import java.util.List;

@Controller
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequestMapping({"/payment"})
@Slf4j
public class Paymentcontroller {
    OrderService orderService;
    EmailService emailService;
    CustomerService customerService;
    @GetMapping()
    public String getPayment(@RequestParam("vnp_ResponseCode") String vnp_ResponseCode,@RequestParam("vnp_TxnRef") String vnp_TxnRef ,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (vnp_ResponseCode.equals("00")) {
            String address = (String) session.getAttribute("address");
            if (address != null) {
                orderService.createOrder(address, session, PaymentStatus.PAID);
                String email = (String) session.getAttribute("email");
                ApiResponse<List<CustomerResponse>> customerResponse = customerService.getInfoByMail(email, session);
                String customerName = customerResponse.getData().get(0).getName();
                emailService.sendEmailFromTemplateSync("VN-Pay", address,customerName , vnp_TxnRef, session);
                session.removeAttribute("address");
                return "vnpay_return";
            }
        }
        return "vnpay_return";
    }
}
