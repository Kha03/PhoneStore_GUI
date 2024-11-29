package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({"/cart/checkout"})
@Slf4j
public class CheckoutController {
    OrderService orderService;
    @PostMapping("/order")
    public String payment(@RequestParam String email, @RequestParam String address, @RequestParam String paymentMethod, HttpServletRequest request, RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession();
        ApiResponse<List<OrderResponse>> order = null;
        if(paymentMethod .equalsIgnoreCase("shipcod")){
            order = orderService.createOrder(address, session, PaymentStatus.PENDING);

        }
       if(order != null) {
           log.info("Order: {}", order.getData().get(0).getId());
           redirectAttributes.addFlashAttribute("orderMessage", "Order placed successfully!");
           return "redirect:/cart";
       }
        return "redirect:/cart/checkout";
    }
}
