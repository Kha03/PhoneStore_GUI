package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TemplateController {
    @GetMapping("/header")
    public String getHeader() {
        return "header";
    }
    @GetMapping("/footer")
    public String getFooter() {
        return "footer";
    }
}
