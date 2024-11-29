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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({"/cart/checkout"})
@Slf4j
public class CheckoutController {
    OrderService orderService;
    @PostMapping("/order")
    public String payment(@RequestParam String email, @RequestParam String address, @RequestParam String paymentMethod, HttpServletRequest request){
        if(paymentMethod .equalsIgnoreCase("shipcod")){

        }
        HttpSession session = request.getSession();
        orderService.createOrder(address, session, PaymentStatus.PENDING);
        return "redirect:/cart/checkout";
    }
}
