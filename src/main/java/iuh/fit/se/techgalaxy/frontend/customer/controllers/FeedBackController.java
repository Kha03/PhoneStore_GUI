package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.service.ProductFeedBackService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class FeedBackController {
    ProductFeedBackService productFeedBackService;

    @PostMapping("/upFeedBack")
    public String upFeedBack(@RequestParam String content,@RequestParam String variantId,@RequestParam(required = false)MultipartFile[] file, HttpServletRequest request) {
        productFeedBackService.upFeedBack(content, variantId, file, request.getSession());
        return "redirect:/products/detail/"+variantId;
    }
}
