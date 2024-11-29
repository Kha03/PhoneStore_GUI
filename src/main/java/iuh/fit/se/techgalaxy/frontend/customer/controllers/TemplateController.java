package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.service.impl.CartService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@Slf4j
public class TemplateController {
    CartService cartService;

    @GetMapping("/header")
    public String getHeader(
            Model model,
            HttpServletRequest request
    ) {
        HttpSession session = request.getSession();
        cartService.populateCartData(model, session);
        return "header";
    }
    @GetMapping("/footer")
    public String getFooter() {
        return "footer";
    }
}
