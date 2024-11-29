package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Paymentcontroller {
    @GetMapping("/payment")
    public String getPayment() {
        return "vnpay_return";
    }

}
